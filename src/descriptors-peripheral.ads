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
-- common Ada dependencies
with Ada.Containers.Vectors;
with Ada.Strings.Unbounded; use Ada.Strings;

-- XML dependencies
with DOM.Core;

-- TIXML2Ada dependencies
with Descriptors.Register;           use Descriptors.Register;
with Base_Types;                     use Base_Types;
with Base_Types.Register_Properties; use Base_Types.Register_Properties;

--  Decodes and then dumps the <peripheral> elements of the xml file.
package Descriptors.Peripheral is

   type Peripheral_T is record
      Name            : Unbounded.Unbounded_String;
      Version         : Unbounded.Unbounded_String;
      Description     : Unbounded.Unbounded_String;
      Group_Name      : Unbounded.Unbounded_String;
      Prepend_To_Name : Unbounded.Unbounded_String;
      Append_To_Name  : Unbounded.Unbounded_String;
      Base_Address    : Unsigned              := 0;
      Reg_Properties  : Register_Properties_T := Null_Register_Property;
      Address_Blocks  : Address_Block_Vectors.Vector;
      Interrupts      : Interrupt_Vectors.Vector;
      Registers       : Register_Vectors.Vector;
   end record;

   package Peripheral_Vectors is new Ada.Containers.Vectors
     (Positive,
      Peripheral_T);

   function Read_Peripheral
     (Peripheral      : DOM.Core.Element;
      Reg_Properties  : Register_Properties_T;
      Vector          : Peripheral_Vectors.Vector;
      Is_Derived_From : Unbounded.Unbounded_String) return Peripheral_T;

   procedure Dump
     (Peripheral : in out Peripheral_T;
      Dev_Name   :        String;
      Output_Dir :        String);

   procedure Dump
     (Group      : Peripheral_Vectors.Vector;
      Dev_Name   : String;
      Output_Dir : String);

end Descriptors.Peripheral;
