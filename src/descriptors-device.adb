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

      --Ada.Text_IO.Put_Line (" Device = " & Value(Get_Named_Item (Attributes (Device_Element), "id")));
      --Ada.Text_IO.Put_Line ("    [" & Value(Get_Named_Item (Attributes (Device_Element), "description")) & "]");

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

      --Ret.Reg_Properties.Size := 32;

      SVD2Ada_Utils.Set_Root_Package
        (Ada.Strings.Unbounded.To_String (Ret.Name));


      for J in 0 .. Length (Hw_Module_List) - 1 loop
         declare
            Module_Element : constant Element :=
              Element (Nodes.Item (Hw_Module_List, J));
            Peripheral : Peripheral_T;
         begin
            Peripheral :=
              Read_Peripheral
                (Module_Element,
                 Ret.Reg_Properties,
                 Ret.Peripherals);
            Ret.Peripherals.Append (Peripheral);
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
