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

with Ada.Strings.Unbounded;

--  Decodes the register properties group from an XML element.
--  This group is used in Device, Peripherals and Registers descriptors.
package Base_Types.Register_Properties is

   type Xml_Bitfield_Order is (Undetermined, Ascending, Descending);

   type Register_Properties_T is record
      Size        : Natural;
      Reg_Access  : Access_Type;
      Protection  : Protection_Type;
      Reset_Value : Unsigned;
      Reset_Mask  : Unsigned;
      Endianess   : Endian_Type := Big_Endian;
      Field_Order : Xml_Bitfield_Order;
      Device_Dir  : Unbounded.Unbounded_String;
      Module_Xml  : Unbounded.Unbounded_String;
   end record;

   Null_Register_Property : constant Register_Properties_T :=
     (Size        => 0,
      Reg_Access  => Read_Write,
      Protection  => Undefined_Protection,
      Reset_Value => 0,
      Reset_Mask  => 0,
      Endianess   => Undefined_Endian,
      Field_Order => Undetermined,
      Device_Dir  => Unbounded.Null_Unbounded_String,
      Module_Xml  => Unbounded.Null_Unbounded_String);

end Base_Types.Register_Properties;
