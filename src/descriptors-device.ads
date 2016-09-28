------------------------------------------------------------------------------
--                                                                          --
--                     TIXML2Ada Binding Generator                          --
--                                                                          --
-- * based on SVD2Ada released by AdaCore in 2016 under GPL 3 license       --
--                                                                          --
-- This is free software;  you can  redistribute it  and/or modify it       --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 3,  or (at your option) any later  --
-- version. Go to http://www.gnu.org/licenses for a complete copy of the    --
-- license.                                                                 --
--                                                                          --
------------------------------------------------------------------------------

with Ada.Strings.Unbounded; use Ada.Strings;

with DOM.Core;

with Base_Types;
with Base_Types.Register_Properties;

with Descriptors.Peripheral;

--  Decodes and dumps the <device> elements of the xml file. This is the
--  main entry point for decoding this file.
package Descriptors.Device is

   type Device_T is record
      Name        : Unbounded.Unbounded_String;
      Version     : Unbounded.Unbounded_String;
      Description : Unbounded.Unbounded_String;

      --  BUS interface properties:
      --  adressable unit
      Address_Unit_Bits : Base_Types.Unsigned := 0;
      --  maximum data bit width accessbile within a single transfer
      Width : Natural := 0;

      Has_FPU : Boolean := True;

      --  REGISTERS properties
      Reg_Properties : Base_Types.Register_Properties.Register_Properties_T;

      Peripherals : Descriptors.Peripheral.Peripheral_Vectors.Vector;
   end record;

   function Read_Device
     (Top_Xml_Element : DOM.Core.Element;
      Top_Xml_Folder  : Unbounded.Unbounded_String) return Device_T;

   procedure Dump (Device : Device_T; Output_Dir : String);

end Descriptors.Device;
