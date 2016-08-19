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

-- common Ada dependencies
--with Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Fixed;
with Ada.Strings.Maps;
with GNAT.Directory_Operations;

-- XML dependencies
with DOM.Core;       use DOM.Core;
with DOM.Core.Nodes; use DOM.Core.Nodes;
with DOM.Core.Elements;

-- TIXML2Ada dependencies
with Base_Types;             use Base_Types;
with Descriptors.Peripheral; use Descriptors.Peripheral;
with Ada_Gen;
with SVD2Ada_Utils;

package body Descriptors.Device is

   -----------------
   -- Read_Device --
   -----------------

   function Read_Device (Top_Xml_Element : DOM.Core.Element) return Device_T is
      Ret         : Device_T;
      Device_List : Node_List :=
        Elements.Get_Elements_By_Tag_Name (Top_Xml_Element, "device");
      Cpu_List : Node_List :=
        Elements.Get_Elements_By_Tag_Name (Top_Xml_Element, "cpu");
      Device : constant DOM.Core.Element :=
        Item
          (Elements.Get_Elements_By_Tag_Name (Top_Xml_Element, "device"),
           0);
      Cpu : constant DOM.Core.Element :=
        Item (Elements.Get_Elements_By_Tag_Name (Top_Xml_Element, "cpu"), 0);
      Hw_Module_List : constant Node_List :=
        Elements.Get_Elements_By_Tag_Name (Cpu, "instance");
   begin

      if Length (Device_List) /= 1 then
         raise Constraint_Error
           with "Read_Device() failed: Input XML document must " &
           "contain exactly 1 device element. Current one has " &
           Integer'Image (Length (Device_List));
      end if;

      if Length (Cpu_List) /= 1 then
         raise Constraint_Error
           with "Read_Device() failed: Input XML document must " &
           "contain exactly 1 device element. Current one has " &
           Integer'Image (Length (Cpu_List));
      end if;

      if Length (Hw_Module_List) = 0 then
         raise Constraint_Error
           with "Read_Device() failed: 'Cpu' XML element must " &
           "contain at least one 'instance' element describing" &
           "a hardware module";
      end if;

      Ret.Name              := Get_Id (Device);
      Ret.Version           := Get_Xml_Version (Device);
      Ret.Description       := Get_Description (Device);
      Ret.Address_Unit_Bits := 8;
      Ret.Width             := 32;
      Ret.Has_FPU           := True;

      SVD2Ada_Utils.Set_Root_Package (To_String (Ret.Name));

      -- try to determine device endianess
      declare
         Properties : constant Node_List :=
           Elements.Get_Elements_By_Tag_Name (Cpu, "property");
         Endianess : Endian_Type := Big_Endian;
      begin
         for K in 0 .. Length (Properties) - 1 loop
            declare
               Property_Elt : constant DOM.Core.Element :=
                 DOM.Core.Element (Nodes.Item (Properties, K));
               Property_Id : constant String :=
                 Unbounded.To_String (Get_Id (Property_Elt));
               Property_Value : constant String :=
                 Unbounded.To_String (Get_Value (Property_Elt));
               First_Idx          : Positive        := 1;
               Last_Idx           : Natural         := 0;
               Little_Endian_Flag : constant String := "--little";
            begin
               if Property_Id = "Endianness" then
                  if Property_Value = "little" then
                     Endianess := Little_Endian;
                  elsif Property_Value = "big" then
                     Endianess := Big_Endian;
                  end if;
               elsif Property_Id = "CompilerBuildOptions" then
                  Ada.Strings.Fixed.Find_Token
                    (Source => Property_Value,
                     Set    => Ada.Strings.Maps.To_Set (Little_Endian_Flag),
                     Test   => Inside,
                     First  => First_Idx,
                     Last   => Last_Idx);
                  if Last_Idx =
                    (First_Idx + Little_Endian_Flag'Length - 1)
                  then
                     Endianess := Little_Endian;
                  end if;
               end if;
            end;
         end loop;
         Ret.Reg_Properties.Endianess := Endianess;
      end;

      for J in 0 .. Length (Hw_Module_List) - 1 loop
         declare
            Module : constant DOM.Core.Element :=
              DOM.Core.Element (Nodes.Item (Hw_Module_List, J));
            Module_href     : constant Unbounded_String := Get_Href (Module);
            Is_Derived_From : Unbounded_String := Null_Unbounded_String;
            Peripheral      : Peripheral_T;
         begin
            if J > 1 then
               for K in 0 .. (J - 1) loop
                  declare
                     Predecessor : constant DOM.Core.Element :=
                       DOM.Core.Element (Nodes.Item (Hw_Module_List, K));
                     Predecessor_href : constant Unbounded_String :=
                       Get_Href (Predecessor);
                  begin
                     if Module_href = Predecessor_href then
                        Is_Derived_From := Get_Id (Predecessor);

--                          Ada.Text_IO.Put_Line ("        "
--                                                & To_String (Get_Id (Module)) &
--                                                  " is derived from " &
--                                                  To_String (Is_Derived_From)
--                                               );
                        exit;
                     end if;
                  end;
               end loop;
            end if;

            Ret.Reg_Properties.Module_Xml :=
              To_Unbounded_String
                (GNAT.Directory_Operations.Base_Name
                   (To_String (Module_href)));

            Peripheral :=
              Read_Peripheral
                (Module,
                 Ret.Reg_Properties,
                 Ret.Peripherals,
                 Is_Derived_From);
            Ret.Peripherals.Append (Peripheral);
         end;
      end loop;

      DOM.Core.Free (Device_List);
      DOM.Core.Free (Cpu_List);
      DOM.Core.Free (Device_List);

      return Ret;
   end Read_Device;

   ----------
   -- Dump --
   ----------

   procedure Dump (Device : Device_T; Output_Dir : String) is
      Peripherals : Peripheral_Vectors.Vector;
      Spec        : Ada_Gen.Ada_Spec :=
        Ada_Gen.New_Spec
          (To_String (Device.Name),
           To_String (Device.Description),
           True);
      use Ada_Gen;
   begin
      ----------------------------
      --  Base types definition --
      ----------------------------

      if SVD2Ada_Utils.External_Base_Types_Package then
         --  From GNAT GPL 2016 and GNAT Pro 17, Interfaces.Bit_Types is
         --  defined
         Ada_Gen.Add_Global_With (SVD2Ada_Utils.Base_Types_Package);

      else
         Add (Spec, New_Comment_Box ("Base type"));
         Add_No_Check (Spec, New_Type_Scalar (Target_Type (32, False), 32));
         Add_No_Check (Spec, New_Type_Scalar (Target_Type (16, False), 16));
         Add_No_Check (Spec, New_Type_Scalar (Target_Type (8, False), 8));
         Add_No_Check (Spec, New_Type_Scalar (Target_Type (1, False), 1));

         for J in 2 .. Device.Width loop
            if J /= 8 and then J /= 16 and then J /= 32 then
               Add_No_Check
                 (Spec,
                  New_Type_Scalar (Target_Type (J, False), J));
            end if;
         end loop;
      end if;

      -----------------------------------------
      --  Base addresses for the peripherals --
      -----------------------------------------

      Add (Spec, New_Comment_Box ("Base addresses"));
      Add (Spec, New_With_Clause ("System", False));

      for Periph of Device.Peripherals loop
         Add
           (Spec,
            New_Constant_Value
              (Id       => To_String (Periph.Name) & "_Base",
               Align_Id => 0,
               Typ      => "System.Address",
               Value    =>
                 "System'To_Address (" & To_Hex (Periph.Base_Address) & ")"));
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

            Ada_Gen.Set_Input_File_Name
              (To_String (P.Reg_Properties.Module_Xml));

            if Ada.Strings.Unbounded.Length (P.Group_Name) = 0 then
               Dump
                 (P,
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

               Dump
                 (Vec,
                  Ada.Strings.Unbounded.To_String (Device.Name),
                  Output_Dir);
            end if;
         end;
      end loop;
   end Dump;
end Descriptors.Device;
