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

with Ada.Containers.Vectors;
with Ada.Strings.Unbounded; use Ada.Strings;

with DOM.Core;

with Ada_Gen;
with Base_Types; use Base_Types;
with Base_Types.Register_Properties;

limited with Descriptors.Register;
with Descriptors.Enumerate;

--  Decodes the <field> elements of the module xml file.
package Descriptors.Field is

   type Field_T is record
      Name             : Unbounded.Unbounded_String;
      Description      : Unbounded.Unbounded_String;
      LSB              : Natural;
      Size             : Natural;
      Acc              : Access_Type;
      Mod_Write_Values : Modified_Write_Values_Type := Modify;
      Read_Action      : Read_Action_Type           := Undefined_Read_Action;
      Enums            : Descriptors.Enumerate.Enumerate_Vectors.Vector;
   end record;

   function "=" (F1, F2 : Field_T) return Boolean;

   Null_Field : constant Field_T :=
     (Unbounded.Null_Unbounded_String,
      Unbounded.Null_Unbounded_String,
      0,
      0,
      Read_Write,
      others => <>);

   package Field_Vectors is new Ada.Containers.Vectors (Positive, Field_T);

   function Read_Field
     (Field          : DOM.Core.Element;
      Vec            : Field_Vectors.Vector;
      Default_Access : Access_Type;
      Default_Read   : Read_Action_Type) return Field_T;

   procedure Dump
     (Spec       : in out Ada_Gen.Ada_Spec;
      Reg        :        Descriptors.Register.Register_Access;
      Rec        : in out Ada_Gen.Ada_Type_Record;
      Reg_Fields :        Field_Vectors.Vector;
      Properties :        Register_Properties.Register_Properties_T);

   function Bitfields_Valid
     (Bitfield_List  : DOM.Core.Node_List;
      Reg_Properties : Register_Properties.Register_Properties_T)
      return Boolean;

   procedure Standardize_Reserved_Fields(F : in out Field_T);

end Descriptors.Field;
