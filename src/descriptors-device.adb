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

with Interfaces;            use Interfaces;
with Ada.Text_IO;           use Ada.Text_IO;
with GNAT.OS_Lib;

--with DOM.Core;              use DOM.Core;
--with DOM.Core.Elements;     use DOM.Core.Elements;
--with DOM.Core.Nodes;

with Ada_Gen;               use Ada_Gen;
with SVD2Ada_Utils;         use SVD2Ada_Utils;

----------------------- Temporary use/with -------------------------------------
with Ada.Strings.Unbounded;       use Ada.Strings.Unbounded;
with Ada.Strings.Fixed;
with Ada.Strings.Maps;            use Ada.Strings.Maps;
with GNAT.Directory_Operations;

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

package body Descriptors.Device is

   package Interrupt_Sort is new Interrupt_Vectors.Generic_Sorting
     (Base_Types."<");

   -----------------
   -- Read_Device --
   -----------------

   function Read_Device
     (Top_Xml_Element : DOM.Core.Element;
      Pkg_Name        : String) return Device_T
   is
      Ret  : Device_T;

      Device_List : Node_List :=
        Get_Elements_By_Tag_Name(Top_Xml_Element,"device");
      Cpu_List : Node_List :=
        Get_Elements_By_Tag_Name(Top_Xml_Element,"cpu");

      Device_Element : constant DOM.Core.Element :=
        Item(Get_Elements_By_Tag_Name(Top_Xml_Element,"device") , 0);
      Cpu_Element : constant DOM.Core.Element :=
        Item(Get_Elements_By_Tag_Name(Top_Xml_Element,"cpu") , 0);

      Hw_Module_List : Node_List :=
                         DOM.Core.Elements.Get_Elements_By_Tag_Name (Cpu_Element, "instance");

   begin

      if Length(Device_List) /= 1 then raise Constraint_Error with
           "Read_Device() failed: Input XML document must " &
           "contain exactly 1 device element. Current one has " &
           Integer'Image(Length(Device_List));
      end if;

      if Length(Cpu_List) /= 1 then raise Constraint_Error with
           "Read_Device() failed: Input XML document must " &
           "contain exactly 1 device element. Current one has " &
           Integer'Image(Length(Cpu_List));
      end if;

      if Length(Hw_Module_List) = 0 then raise Constraint_Error with
           "Read_Device() failed: 'Cpu' XML element must " &
           "contain at least one 'instance' element describing" &
           "a hardware module";
      end if;

      Ret.Name := Apply_Naming_Rules
        (Ada.Strings.Unbounded.To_Unbounded_String
        (Value(Get_Named_Item (Attributes (Device_Element), "id"))));

      Ret.Version := Ada.Strings.Unbounded.To_Unbounded_String
        (Value(Get_Named_Item (Attributes (Device_Element), "XML_version")));

      Ret.Description := Ada.Strings.Unbounded.To_Unbounded_String
        (Value(Get_Named_Item (Attributes (Device_Element), "description")));

      Ret.Address_Unit_Bits := 8;

      Ret.Width := 32;

      Ret.Has_FPU := True;

      SVD2Ada_Utils.Set_Root_Package
        (Ada.Strings.Unbounded.To_String (Ret.Name));

      -- try to determine device endianess
      declare
         Properties_List  : Node_List   := DOM.Core.Elements.Get_Elements_By_Tag_Name (Cpu_Element, "property");
         Device_Endianess : Endian_Type := Big_Endian;
      begin
         for K in 0 .. Length (Properties_List) - 1 loop
            declare
               Property_Elt   : DOM.Core.Element := DOM.Core.Element (Nodes.Item (Properties_List, K));
               Property_Id    : String := Value (Get_Named_Item (Attributes (Property_Elt), "id"));
               Property_Value : String := Value (Get_Named_Item (Attributes (Property_Elt), "Value"));
               First_Idx      : Positive := 1;
               Last_Idx       : Natural  := 0;
               Little_Endian_Flag : String := "--little";
            begin
               if Property_Id = "Endianness" then
                  if Property_Value = "little" then
                     Device_Endianess := Little_Endian;
                  elsif Property_Value = "big" then
                     Device_Endianess := Big_Endian;
                  end if;
               elsif Property_Id = "CompilerBuildOptions" then
                  Ada.Strings.Fixed.Find_Token (Source           => Property_Value,
                              Set              => To_Set(Little_Endian_Flag),
                              Test             => Inside,
                              First            => First_Idx,
                              Last             => Last_Idx);
                  if Last_Idx = (First_Idx + Little_Endian_Flag'Length - 1) then
                     Device_Endianess := Little_Endian;
                  end if;
               end if;
            end;
         end loop;
         Ret.Reg_Properties.Endianess := Device_Endianess;
      end;

      for J in 0 .. Length (Hw_Module_List) - 1 loop
         declare
            Module_Element  : DOM.Core.Element :=
                                DOM.Core.Element (Nodes.Item (Hw_Module_List, J));
            Module_href     : String := Value (Get_Named_Item (Attributes (Module_Element), "href"));
            Is_Derived_From : Unbounded_String := Null_Unbounded_String;
            Peripheral      : Peripheral_T;
         begin
            if J > 1 then
               for K in 0 .. (J - 1) loop
                  declare
                     Predecessor_Element : DOM.Core.Element := DOM.Core.Element (Nodes.Item (Hw_Module_List, K));
                     Predecessor_href    : String := Value (Get_Named_Item (Attributes (Predecessor_Element), "href"));
                  begin
                     if Module_href = Predecessor_href then
                        Is_Derived_From := Apply_Naming_Rules (To_Unbounded_String (Value (Get_Named_Item (Attributes (Predecessor_Element), "id"))));

                        Ada.Text_IO.Put_Line ("        " & To_String (Apply_Naming_Rules (To_Unbounded_String (Value (Get_Named_Item (Attributes (Module_Element), "id"))))) &
                                                " is derived from " &
                                                To_String (Apply_Naming_Rules (To_Unbounded_String (Value (Get_Named_Item (Attributes (Predecessor_Element), "id")))))
                                             );
                        exit;
                     end if;
                  end;
               end loop;
            end if;

            Ret.Reg_Properties.Module_Xml := To_Unbounded_String(GNAT.Directory_Operations.Base_Name (Module_href));

            Peripheral :=
              Read_Peripheral
                (Module_Element,
                 Ret.Reg_Properties,
                 Ret.Peripherals,
                 Is_Derived_From);
            Ret.Peripherals.Append (Peripheral);
            Is_Derived_From := Null_Unbounded_String;
         end;
      end loop;

   DOM.Core.Free(Device_List);
   DOM.Core.Free(Cpu_List);
   DOM.Core.Free(Device_List);

      return Ret;
   end Read_Device;



   ----------
   -- Dump --
   ----------

   procedure Dump
     (Device     : Device_T;
      Output_Dir : String)
   is
      use Ada.Strings.Unbounded;
      Peripherals : Peripheral_Vectors.Vector;
      Interrupts  : Interrupt_Vectors.Vector;
      Spec        : Ada_Gen.Ada_Spec :=
                      New_Spec (To_String (Device.Name),
                                To_String (Device.Description),
                                True);
      Old_Spec    : Ada_Gen.Ada_Spec;
      Max_Len     : Natural := 0;

   begin

      --Spec := Old_Spec;

      ----------------------------
      --  Base types definition --
      ----------------------------

      if SVD2Ada_Utils.External_Base_Types_Package then
         --  From GNAT GPL 2016 and GNAT Pro 17, Interfaces.Bit_Types is
         --  defined
         Ada_Gen.Add_Global_With (SVD2Ada_Utils.Base_Types_Package);

      else
         Add (Spec, New_Comment_Box ("Base type"));
         Add_No_Check
           (Spec, New_Type_Scalar (Target_Type (32, False), 32));
         Add_No_Check
           (Spec, New_Type_Scalar (Target_Type (16, False), 16));
         Add_No_Check
           (Spec, New_Type_Scalar (Target_Type (8, False), 8));
         Add_No_Check
           (Spec, New_Type_Scalar (Target_Type (1, False), 1));

         for J in 2 .. Device.Width loop
            if J /= 8 and then J /= 16 and then J /= 32 then
               Add_No_Check
                 (Spec, New_Type_Scalar (Target_Type (J, False), J));
            end if;
         end loop;
      end if;

      -----------------------------------------
      --  Base addresses for the peripherals --
      -----------------------------------------

      Add (Spec, New_Comment_Box ("Base addresses"));
      Add (Spec, New_With_Clause ("System", False));

      for Periph of Device.Peripherals loop
         Add (Spec,
              New_Constant_Value
                (Id       => To_String (Periph.Name) & "_Base",
                 Align_Id => 0,
                 Typ      => "System.Address",
                 Value    => "System'To_Address (" &
                   To_Hex (Periph.Base_Address) & ")"));
      end loop;

      Ada_Gen.Write_Spec (Spec, Output_Dir);

      Write_Spec (Spec, Output_Dir);

      Peripherals := Device.Peripherals;

      while not Peripherals.Is_Empty loop
         declare
            P     : Peripheral_T := Peripherals.First_Element;
            Vec   : Peripheral_Vectors.Vector;
            Index : Natural;
         begin
            Peripherals.Delete_First;

            Ada_Gen.Set_Input_File_Name (To_String(P.Reg_Properties.Module_Xml));

            if Ada.Strings.Unbounded.Length (P.Group_Name) = 0 then
               Dump (P,
                     Ada.Strings.Unbounded.To_String (Device.Name),
                     Output_Dir);
            else
               Vec.Append (P);
               Index := Peripherals.First_Index;

               while Index <= Peripherals.Last_Index loop
                  if Peripherals (Index).Group_Name = P.Group_Name then
                     Vec.Append (Peripherals (Index));
                     Peripherals.Delete (Index);
                  else
                     Index := Index + 1;
                  end if;
               end loop;

               Dump (Vec, Ada.Strings.Unbounded.To_String (Device.Name),
                     Output_Dir);
            end if;
         end;
      end loop;
   end Dump;
end Descriptors.Device;
