------------------------------------------------------------------------------
--                                                                          --
--                          SVD Binding Generator                           --
--                                                                          --
--                    Copyright (C) 2015-2016, AdaCore                      --
--                                                                          --
-- SVD2Ada is free software;  you can  redistribute it  and/or modify it    --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 3,  or (at your option) any later  --
-- version.  SVD2Ada is distributed in the hope that it will be useful, but --
-- WITHOUT ANY WARRANTY;  without even the  implied warranty of MERCHANTA-  --
-- BILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public  --
-- License for  more details.  You should have  received  a copy of the GNU --
-- General Public License  distributed with SVD2Ada; see file COPYING3.  If --
-- not, go to http://www.gnu.org/licenses for a complete copy of the        --
-- license.                                                                 --
--                                                                          --
------------------------------------------------------------------------------

with Ada.Text_IO;
with Ada.Containers.Indefinite_Vectors;
with Ada.Strings.Unbounded;       use Ada.Strings.Unbounded;

--with DOM.Core;
--with DOM.Core.Elements;  use DOM.Core.Elements;
--with DOM.Core.Nodes;

with Interfaces;                     use Interfaces;
with Base_Types;                     use Base_Types;

with Ada_Gen;            use Ada_Gen;
with SVD2Ada_Utils;      use SVD2Ada_Utils;
----------------------- Temporary use/with -------------------------------------
-- XML dependencies
with Input_Sources.File;
with DOM.Core.Documents;
with DOM.Readers;

with DOM.Core;                     use DOM.Core;
with DOM.Core.Nodes;               use DOM.Core.Nodes;
with DOM.Core.Attrs;               use DOM.Core.Attrs;
with DOM.Core.Elements;            use DOM.Core.Elements;

-- TIXML2Ada dependencies
with Descriptors;                  use Descriptors;
with Descriptors.Device;           use Descriptors.Device;
with Descriptors.Peripheral;       use Descriptors.Peripheral;
with Descriptors.Register;         use Descriptors.Register;
with Descriptors.Field;            use Descriptors.Field;
with Descriptors.Enumerate;        use Descriptors.Enumerate;
--------------------------------------------------------------------------------

package body Descriptors.Peripheral is

   procedure Insert_Register (Periph : in out Peripheral_T;
                              Reg    : Register_Access);

   function Less (P1, P2 : Peripheral_T) return Boolean;

   package Peripheral_Sort is new Peripheral_Vectors.Generic_Sorting
     (Less);

   package String_List is new Ada.Containers.Indefinite_Vectors
     (Positive, String);

   ----------
   -- Less --
   ----------

   function Less (P1, P2 : Peripheral_T) return Boolean
   is
   begin
      return P1.Base_Address < P2.Base_Address;
   end Less;

   ---------------------
   -- Read_Peripheral --
   ---------------------

   function Read_Peripheral
     (Peripheral_Element : DOM.Core.Element;
      Reg_Properties     : Register_Properties_T;
      Vector             : Peripheral_Vectors.Vector) return Peripheral_T
   is
      Ret                      : Peripheral_T;
      Peripheral_Xml_File        : Input_Sources.File.File_Input;
      Peripheral_Xml_Reader      : DOM.Readers.Tree_Reader;
      Peripheral_Xml_Doc         : DOM.Core.Document;

      xml_href                 : DOM.Core.Attr;
      hw_module_id             : DOM.Core.Attr;
      base_address             : DOM.Core.Attr;
      Module_List              : Node_List;
      Register_List            : Node_List;
      Module_Element           : DOM.Core.Element;
   begin

      xml_href  := Get_Named_Item (Attributes (Peripheral_Element), "href");
      Ret.Name  := Apply_Naming_Rules (To_Unbounded_String (Value (Get_Named_Item (Attributes (Peripheral_Element), "id"))));
      Ret.Base_Address  := Get_Value (Get_Named_Item (Attributes (Peripheral_Element), "baseaddr"));

      -- := Value (Get_Named_Item (Attributes (Peripheral_Element), "HW_revision"));
      -- Ret.Address_Blocks.Append := Unsigned_64'Value (Value (Get_Named_Item (Attributes (Peripheral_Element), "size")));
      -- Ret.Reg_Properties := Value (Get_Named_Item (Attributes (Peripheral_Element), "accessnumbytes"));
      Ret.Reg_Properties.Protection := Get_Value (Get_Named_Item (Attributes (Peripheral_Element), "permissions"));

      --Ada.Text_IO.Put_Line ("");
      --Ada.Text_IO.Put_Line (" Module = " & Value (Get_Named_Item (Attributes (Peripheral_Element), "id")));
      --Ada.Text_IO.Put_Line ("    Base Address = " & Value (Get_Named_Item (Attributes (Peripheral_Element), "baseaddr")) & " = " & Unsigned'Image(Ret.Base_Address));
      --Ada.Text_IO.Put_Line ("");

      -- reading input file
      Input_Sources.File.Open("input/Devices/" & Value(xml_href), Peripheral_Xml_File);

      -- parse xml document and get top element
      Peripheral_Xml_Reader.Parse (Peripheral_Xml_File);
      Input_Sources.File.Close(Peripheral_Xml_File);
      Peripheral_Xml_Doc := DOM.Readers.Get_Tree(Peripheral_Xml_Reader);
      Module_List := DOM.Core.Documents.Get_Elements_By_Tag_Name
        (Peripheral_Xml_Doc, "module");

      if Length(Module_List) /= 1 then raise Constraint_Error with
           "Read_Peripheral(" & Value (xml_href) & ") failed: " &
           "Input XML document must contain exactly 1 module element." &
           "Current one has " & Integer'Image(Length(Module_List));
      end if;

      Module_Element := Item (Module_List, 0);

      Ret.Version := To_Unbounded_String (Value (Get_Named_Item (Attributes (Module_Element), "XML_version")));
      Ret.Description := To_Unbounded_String (Value (Get_Named_Item (Attributes (Module_Element), "description")));

      -- Register_Properties.Read_Register_Property (Child, Ret.Reg_Properties);

      Register_List := DOM.Core.Elements.Get_Elements_By_Tag_Name (Module_Element, "register");

      for K in 0 .. Length (Register_List) - 1 loop
         declare
            Register : Register_Access;
         begin
         Register :=
           Read_Register
             (Item (Register_List, K),
              Ret.Prepend_To_Name,
              Ret.Append_To_Name,
              Ret.Reg_Properties,
              Ret.Registers);
            Insert_Register (Ret, Register);
         end;
      end loop;

      return Ret;
   end Read_Peripheral;

   ---------------------
   -- Insert_Register --
   ---------------------

   procedure Insert_Register (Periph : in out Peripheral_T;
                              Reg    : Register_Access)
   is
      Added : Boolean;
   begin
      if Periph.Registers.Contains (Reg) then
         return;
      end if;

      Added := False;
      for J in 1 .. Integer (Register_Vectors.Length (Periph.Registers)) loop
         if Periph.Registers (J).Address_Offset > Reg.Address_Offset then
            Periph.Registers.Insert (J, Reg);
            Added := True;
            exit;
         end if;
      end loop;

      if not Added then
         Periph.Registers.Append (Reg);
      end if;
   end Insert_Register;

   --------------------------------
   -- Find_Overlapping_Registers --
   --------------------------------

   function Find_Overlapping_Registers
     (Reg_Set : Register_Vectors.Vector) return Boolean
   is
      use Unbounded;
      Ret      : Boolean := False;
      Idx      : Positive;
      Off      : Natural;
      Last     : Natural;
      Enum_Idx : Natural;

      function Image (N : Natural) return String;

      -----------
      -- Image --
      -----------

      function Image (N : Natural) return String
      is
         S : constant String := N'Img;
      begin
         return S (S'First + 1 .. S'Last);
      end Image;

   begin
      For J in Reg_Set.First_Index .. Reg_Set.Last_Index - 1 loop
         declare
            Reg1 : Register_Access renames Reg_Set (J);
         begin
            for K in J + 1 .. Reg_Set.Last_Index loop
               declare
                  Reg2 : Register_Access renames Reg_Set (K);
               begin
                  exit when Reg1.Address_Offset /= Reg2.Address_Offset;
                  Reg_Set (J).Is_Overlapping := True;
                  Reg_Set (K).Is_Overlapping := True;
                  Ret := True;
               end;
            end loop;
         end;
      end loop;

      if not Ret then
         return Ret;
      end if;

      Idx := Reg_Set.First_Index;
      while Idx < Reg_Set.Last_Index loop
         --  Do not perform a second pass if the register has already been
         --  detected as aliased
         if Reg_Set (Idx).Is_Overlapping then
            declare
               Reg    : constant Register_Access := Reg_Set (Idx);
               Prefix : constant String := To_String (Reg.Name);
            begin
               Last := Prefix'Last;
               --  First loop: look of another register at the same offset
               --  If found, mark the current register as overlapping, and find
               --  a prefix common to all overlapping registers.
               for K in Idx + 1 .. Reg_Set.Last_Index loop
                  exit when Reg_Set (K).Address_Offset /= Reg.Address_Offset;

                  for J in 1 .. Last loop
                     if Prefix (J) /= Ada.Strings.Unbounded.Element (Reg_Set (K).Name, J) then
                        if Last /= 0 then
                           Last := J - 1;
                        end if;

                        exit;
                     end if;
                  end loop;
               end loop;
            end;

            --  Second loop: find enum values for the registers
            Off := Reg_Set (Idx).Address_Offset;
            if Last = 0 then
               Enum_Idx := 1;
            end if;

            loop
               exit when Idx > Reg_Set.Last_Index;
               exit when Reg_Set (Idx).Address_Offset /= Off;

               declare
                  Reg    : constant Register_Access := Reg_Set (Idx);
                  Prefix : constant String := To_String (Reg.Name);
               begin
                  if Last = 0 then
                     --  No common name found: let's imagine one
                     Reg.Overlap_Suffix :=
                       To_Unbounded_String ("Mode_" & Image (Enum_Idx));
                     Enum_Idx := Enum_Idx + 1;

                  elsif Last = Prefix'Last then
                     Reg.Overlap_Suffix := To_Unbounded_String ("Default");

                  else
                     Reg.Overlap_Suffix :=
                       To_Unbounded_String (Prefix (Last + 1 .. Prefix'Last));
                  end if;

                  Idx := Idx + 1;
               end;
            end loop;
         else
            Idx := Idx + 1;
         end if;
      end loop;

      return Ret;
   end Find_Overlapping_Registers;

   ----------------------
   -- Dump_Periph_Type --
   ----------------------

   procedure Dump_Periph_Type
     (Spec       : in out Ada_Gen.Ada_Spec;
      Peripheral : Peripheral_T;
      Type_Name  : String)
   is
      use Ada.Strings.Unbounded;

      function Create_Record return Ada_Type_Record'Class;

      function Get_Discriminent_Type
        (Reg_Set : Register_Vectors.Vector) return Ada_Type_Enum;

      ---------------------------
      -- Get_Discriminent_Type --
      ---------------------------

      function Get_Discriminent_Type
        (Reg_Set : Register_Vectors.Vector) return Ada_Type_Enum
      is
         Ret    : Ada_Type_Enum :=
                    New_Type_Enum
                      (Id      => To_String (Peripheral.Name) & "_Disc");
         Values : String_List.Vector;
         Val    : Ada_Enum_Value;

      begin
         for Reg of Reg_Set loop
            if Reg.Is_Overlapping
              and then not Values.Contains (To_String (Reg.Overlap_Suffix))
            then
               Values.Append (To_String (Reg.Overlap_Suffix));
            end if;
         end loop;

         for S of Values loop
            Val := Add_Enum_Id (Ret, S);

            declare
               Actual : constant String := To_String (Id (Val));
            begin
               if Actual /= S then
                  for Reg of Reg_Set loop
                     if Reg.Is_Overlapping
                       and then To_String (Reg.Overlap_Suffix) = S
                     then
                        Reg.Overlap_Suffix := Id (Val);
                     end if;
                  end loop;
               end if;
            end;
         end loop;

         return Ret;
      end Get_Discriminent_Type;

      -------------------
      -- Create_Record --
      -------------------

      function Create_Record return Ada_Type_Record'Class
      is
      begin
         if Find_Overlapping_Registers (Peripheral.Registers) then
            declare
               Enum : Ada_Type_Enum :=
                        Get_Discriminent_Type (Peripheral.Registers);
            begin
               Add (Spec, Enum);
               return New_Type_Union
                 (Type_Name,
                  "Discriminent",
                  Enum,
                  To_String (Peripheral.Description));
            end;
         else
            --  No overlapping register: generate a simple record
            return New_Type_Record
              (Type_Name,
               To_String (Peripheral.Description));
         end if;
      end Create_Record;

      Rec : Ada_Type_Record'Class := Create_Record;

   begin
      Add_Aspect (Rec, "Volatile");

      for Reg of Peripheral.Registers loop
         if Reg.Is_Overlapping then
            Add_Field
              (Ada_Type_Union (Rec),
               Enum_Val => To_String (Reg.Overlap_Suffix),
               Id       => To_String (Reg.Name),
               Typ      => Get_Ada_Type (Reg),
               Offset   => Reg.Address_Offset,
               LSB      => 0,
               MSB      => (if Reg.Dim = 1
                            then Reg.Reg_Properties.Size - 1
                            else Reg.Dim * Reg.Dim_Increment * 8 - 1),
               Comment  => To_String (Reg.Description));
         else
            Add_Field
              (Rec,
               Id      => To_String (Reg.Name),
               Typ     => Get_Ada_Type (Reg),
               Offset  => Reg.Address_Offset,
               LSB     => 0,
               MSB     => (if Reg.Dim = 1
                           then Reg.Reg_Properties.Size - 1
                           else Reg.Dim * Reg.Dim_Increment * 8 - 1),
               Comment => To_String (Reg.Description));
         end if;
      end loop;

      Add (Spec, Rec);
   end Dump_Periph_Type;

   ----------
   -- Dump --
   ----------

   procedure Dump
     (Peripheral : in out Peripheral_T;
      Dev_Name   : String;
      Output_Dir : String)
   is
      use Ada.Strings.Unbounded;
      Spec : Ada_Spec;

   begin
      Ada.Text_IO.Put_Line
        ("Generate " & To_String (Peripheral.Name));

      Spec := New_Child_Spec
        (To_String (Peripheral.Name),
         Parent        => Dev_Name,
         Descr         => To_String (Peripheral.Description),
         Preelaborated => True);

      if not Register_Vectors.Is_Empty (Peripheral.Registers) then
         Add (Spec, New_Comment_Box ("Registers"));
      end if;

      Find_Common_Types (Peripheral.Registers);

      for Reg of Peripheral.Registers loop
         Dump (Spec, Reg);
      end loop;

      Add (Spec, New_Comment_Box ("Peripherals"));

      Dump_Periph_Type
        (Spec, Peripheral, To_String (Peripheral.Name) & "_Peripheral");

      declare
         Inst : Ada_Instance :=
                  New_Instance
                    (To_String (Peripheral.Name) & "_Periph",
                     To_String (Peripheral.Name) & "_Peripheral",
                     True,
                     To_String (Peripheral.Description));
      begin
         Add_Aspect (Inst, "Import");
         Add_Address_Aspect (Inst, To_String (Peripheral.Name) & "_Base");
         Add (Spec, Inst);
      end;

      Write_Spec (Spec, Output_Dir);
   end Dump;

   ----------
   -- Dump --
   ----------

   procedure Dump
     (Group      : Peripheral_Vectors.Vector;
      Dev_Name   : String;
      Output_Dir : String)
   is
      use Ada.Strings.Unbounded;
      use type Register_Vectors.Vector;
      use type Ada.Containers.Count_Type;
      Regs               : Register_Vectors.Vector;
      Sorted             : Peripheral_Vectors.Vector := Group;
      Partial_Similarity : Boolean := False;
      Spec               : Ada_Spec;

   begin
      Ada.Text_IO.Put_Line
        ("Generate " & To_String (Group.First_Element.Group_Name));

      Spec := New_Child_Spec
        (To_String (Sorted.First_Element.Group_Name),
         Dev_Name,
         "",
         True);

      --  Registers

      for Periph of Sorted loop
         Regs.Append (Periph.Registers);
      end loop;

      if not Regs.Is_Empty then
         Add (Spec, New_Comment_Box ("Registers"));
      end if;

      Find_Common_Types (Regs);

      for Reg of Regs loop
         Dump (Spec, Reg);
      end loop;

      Add (Spec, New_Comment_Box ("Peripherals"));

      --  Determine if all peripherals of the group have the same layout
      Peripheral_Sort.Sort (Sorted);

      while not Sorted.Is_Empty loop
         declare
            First : constant Peripheral_T := Sorted.First_Element;
            List  : Peripheral_Vectors.Vector;
            Idx   : Natural;
         begin
            Sorted.Delete_First;
            List.Append (First);

            Idx := Sorted.First_Index;
            while Idx <= Sorted.Last_Index loop
               if Sorted (Idx).Registers = First.Registers then
                  List.Append (Sorted (Idx));
                  Sorted.Delete (Idx);
               else
                  Idx := Idx + 1;
               end if;
            end loop;

            if List.Length = 1 then
               Dump_Periph_Type
                 (Spec, First, To_String (First.Name) & "_Peripheral");

               declare
                  Inst : Ada_Instance :=
                           New_Instance
                             (To_String (First.Name) & "_Periph",
                              To_String (First.Name) & "_Peripheral",
                              True,
                              To_String (First.Description));
               begin
                  Add_Aspect (Inst, "Import");
                  Add_Address_Aspect (Inst, To_String (First.Name) & "_Base");
                  Add (Spec, Inst);
               end;

            elsif Sorted.Is_Empty and then not Partial_Similarity then
               Dump_Periph_Type
                 (Spec, First, To_String (First.Group_Name) & "_Peripheral");

               for Periph of List loop
                  declare
                     Inst : Ada_Instance :=
                              New_Instance
                                (To_String (Periph.Name) & "_Periph",
                                 To_String (First.Group_Name) & "_Peripheral",
                                 True,
                                 To_String (Periph.Description));
                  begin
                     Add_Aspect (Inst, "Import");
                     Add_Address_Aspect
                       (Inst, To_String (Periph.Name) & "_Base");
                     Add (Spec, Inst);
                  end;
               end loop;

            else
               Partial_Similarity := True;
               Dump_Periph_Type
                 (Spec, First, To_String (First.Name) & "_Peripheral");

               for Periph of List loop
                  declare
                     Inst : Ada_Instance :=
                              New_Instance
                                (To_String (Periph.Name) & "_Periph",
                                 To_String (First.Name) & "_Peripheral",
                                 True,
                                 To_String (Periph.Description));
                  begin
                     Add_Aspect (Inst, "Import");
                     Add_Address_Aspect
                       (Inst, To_String (Periph.Name) & "_Base");
                     Add (Spec, Inst);
                  end;
               end loop;
            end if;
         end;
      end loop;

      Write_Spec (Spec, Output_Dir);
   end Dump;
end Descriptors.Peripheral;
