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
with Interfaces;            use Interfaces;
with Ada.Containers.Vectors;
with Ada.Strings.Unbounded; use Ada.Strings;

-- XML dependencies
with DOM.Core;

--  Package responsible for defining and decoding the basic types of a TI xml
--  file.
package Base_Types is

   subtype Unsigned is Unsigned_64;
   --  We have to use a 64-bit type here, as the analyzed board can manipulate
   --  potentially 64-bit addresses.

   subtype NVIC_Priority_Type is Unsigned range 2 .. 8;

   --  pre-defines the tokens for specifying the endianess of the device
   type Endian_Type is
     (Undefined_Endian,
      Little_Endian,
      Big_Endian,
      Selectable_Endian,
      Other_Endian);

   --  DataT_ype pre-defines the tokens in line with CMSIS data type
   --  definitions
   type Data_Type is
     (Undefined_Data_Type,
      uint8_t_Data,
      uint16_t_Data,
      uint32_t_Data,
      uint64_t_Data,
      int8_t_Data,
      int16_t_Data,
      int32_t_Data,
      int64_t_Data,
      puint8_t_Data,
      puint16_t_Data,
      puint32_t_Data,
      puint64_t_Data,
      pint8_t_Data,
      pint16_t_Data,
      pint32_t_Data,
      pint64_t_Data);

   --  Protection Access Attribute
   type Protection_Type is
     (Undefined_Protection,
      Secure_Protection,
      Non_Secure_Protection,
      Privileged_Protection);

   --  Access_Type specfies the pre-defined tokens for the available accesses
   type Access_Type is
     (Read_Only, Write_Only, Read_Write, Write_Once, Read_Write_Once);

   --  Modified_Write_Values_Type specifies the pre-defined tokens for the
   --  write side effects
   type Modified_Write_Values_Type is
     (One_To_Clear,
      One_To_Set,
      One_To_Toggle,
      Zero_To_Clear,
      Zero_To_Set,
      Zero_To_Toggle,
      Clear,
      Set,
      Modify);

   --  Read_Action_Type specifies the pre-defined tokens for read side effects
   type Read_Action_Type is
     (Undefined_Read_Action, Clear, Set, Modify, Modify_Exernal);

   --  Enum_Usage_Type specifies the pre-defined tokens for selecting what
   --  access types an enumeratedValues set is associated with
   type Enum_Usage_Type is (Undefined_Enum_Usage, Read, Write, Read_Write);

   --  Bit_Range_Type specifies the bit numbers to be restricted values
   --  from 0 - 69
   type Bit_Range_Type is record
      From, To : Natural;
   end record;

   --  Write_Constraint_Type specifies how to describe the restriction of the
   --  allowed values that can be written to a resource
   type Write_Constraint_Type is record
      Write_As_Read         : Boolean;
      Use_Enumerated_Values : Boolean;
      Minimum               : Unsigned;
      Maximum               : Unsigned;
   end record;

   type Address_Block_Usage_Type is
     (Registers_Usage, Buffer_Usage, Reserved_Usage);

   --  Address_Block_Type specifies the elements to describe an address block
   type Address_Block_Type is record
      Offset     : Unsigned;
      Size       : Unsigned;
      Usage      : Address_Block_Usage_Type;
      Protection : Protection_Type := Undefined_Protection;
   end record;

   package Address_Block_Vectors is new Ada.Containers.Vectors
     (Positive,
      Address_Block_Type);

   type Interrupt_Type is record
      Name        : Unbounded.Unbounded_String;
      Description : Unbounded.Unbounded_String;
      Value       : Unsigned;
   end record;

   function "=" (I1, I2 : Interrupt_Type) return Boolean;

   function "<" (I1, I2 : Interrupt_Type) return Boolean;

   package Interrupt_Vectors is new Ada.Containers.Vectors
     (Positive,
      Interrupt_Type);

   generic
      type T is private;
      with procedure Read_Elt
        (Tag   :        String;
         Elt   :        DOM.Core.Element;
         Value : in out T);
   procedure Gen_DOM_Iter (Elt : DOM.Core.Element; Obj : in out T);

   function To_Hex (Val : Natural) return String;
   function To_Hex (Val : Unsigned) return String;
   function To_String (Val : Integer) return String;
   function To_String (Val : Unsigned) return String;

   function Target_Type
     (Size            : Natural;
      Fully_Qualified : Boolean := True) return String;
   --  Returns the name of the type on the target given the size of the int

   function Convert_Address (Value : String) return Unsigned;
   function Get_Id (Elt : DOM.Core.Element) return Unbounded.Unbounded_String;
   function Get_Base_Address (Elt : DOM.Core.Element) return Unsigned;
   function Get_Href
     (Elt : DOM.Core.Element) return Unbounded.Unbounded_String;
   function Get_Xml_Version
     (Elt : DOM.Core.Element) return Unbounded.Unbounded_String;
   function Get_Description
     (Elt : DOM.Core.Element) return Unbounded.Unbounded_String;
   function Get_Value
     (Elt : DOM.Core.Element) return Unbounded.Unbounded_String;
   function Get_Value (Elt : DOM.Core.Element) return Unsigned;
   function Get_Size (Elt : DOM.Core.Element) return Unsigned;
   function Get_Blockset (Elt : in DOM.Core.Element) return Address_Block_Type;
   function Get_Offset (Elt : DOM.Core.Element) return Natural;
   function Get_Width (Elt : DOM.Core.Element) return Natural;
   function Get_Lsb (Elt : DOM.Core.Element) return Natural;
   function Get_Msb (Elt : DOM.Core.Element) return Natural;
   function Get_R_W_Access (Elt : DOM.Core.Element) return String;

   function Common_Prefix
     (Name1,
      Name2 : Unbounded.Unbounded_String)
      return Unbounded.Unbounded_String;
   --  Returns the prefix common to Name1 and Name2 if any, or
   --  Null_Unbounded_String

   function Apply_Naming_Rules (Variable_Name : String) return String;
   function Apply_Naming_Rules
     (Variable_Name : Unbounded.Unbounded_String)
      return Unbounded.Unbounded_String;

end Base_Types;
