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
with Ada.Text_IO;

-- XML dependencies
with DOM.Core.Nodes;
with DOM.Core.Attrs;
with DOM.Core.Elements;

with Tixml2Ada_Utils;

package body Base_Types is

   package Unsigned_IO is new Ada.Text_IO.Modular_IO (Unsigned);

   -----------------
   -- Target_Type --
   -----------------

   function Target_Type
     (Size            : Natural;
      Fully_Qualified : Boolean := True) return String
   is
      Pkg : constant String :=
        (if not Fully_Qualified then ""
         elsif
           not Tixml2Ada_Utils.External_Base_Types_Package
         then
           Tixml2Ada_Utils.Root_Package & "."
         else Tixml2Ada_Utils.Base_Types_Package & ".");

   begin
      if Size = 1 then
         return Pkg & "Bit";
      elsif Size = 8 then
         return Pkg & "Byte";
      elsif Size = 16 then
         return Pkg & "Short";
      elsif Size = 32 then
         return Pkg & "Word";
      else
         return Pkg & "UInt" & To_String (Size);
      end if;
   end Target_Type;

   ---------
   -- "=" --
   ---------

   function "=" (I1, I2 : Interrupt_Type) return Boolean is
      use Unbounded;
   begin
      return I1.Name = I2.Name;
   end "=";

   ----------
   -- Less --
   ----------

   function "<" (I1, I2 : Interrupt_Type) return Boolean is
      use Unbounded;
   begin
      return
        (if I1.Value = I2.Value then To_String (I1.Name) < To_String (I2.Name)
         else I1.Value < I2.Value);
   end "<";

   ------------
   -- To_Hex --
   ------------

   function To_Hex (Val : Natural) return String is
   begin
      return To_Hex (Unsigned (Val));
   end To_Hex;

   ------------
   -- To_Hex --
   ------------

   function To_Hex (Val : Unsigned) return String is
      Ret : String (1 .. 12); --  16#01234567#
   begin
      Unsigned_IO.Put (Ret, Val, 16);

      for J in Ret'Range loop
         if Ret (J) /= ' ' then
            return Ret (J .. Ret'Last);
         end if;
      end loop;

      return Ret;
   end To_Hex;

   ---------------
   -- To_String --
   ---------------

   function To_String (Val : Integer) return String is
      S : constant String := Integer'Image (Val);
   begin
      if S (S'First) = ' ' then
         return S (S'First + 1 .. S'Last);
      else
         return S;
      end if;
   end To_String;

   ---------------
   -- To_String --
   ---------------

   function To_String (Val : Unsigned) return String is
      S : constant String := Unsigned'Image (Val);
   begin
      if S (S'First) = ' ' then
         return S (S'First + 1 .. S'Last);
      else
         return S;
      end if;
   end To_String;

   ----------------------
   -- Convert_Address --
   ----------------------

   function Convert_Address (Value : String) return Unsigned is
      Multiplier : Unsigned := 1;
      Last       : Natural  := Value'Last;
   begin
      --  First pass: we check the presence of a multiplier
      if Value (Value'Last) = 'k' or else Value (Value'Last) = 'K' then
         Multiplier := 1024;
         Last       := Last - 1;
      elsif Value (Value'Last) = 'm' or else Value (Value'Last) = 'M' then
         Multiplier := 1024**2;
         Last       := Last - 1;
      elsif Value (Value'Last) = 'g' or else Value (Value'Last) = 'G' then
         Multiplier := 1024**3;
         Last       := Last - 1;
      elsif Value (Value'Last) = 't' or else Value (Value'Last) = 'T' then
         Multiplier := 1024**4;
         Last       := Last - 1;
      else
         Multiplier := 1;
      end if;

      --  we check if the value is expressed in hexa
      if Value'Length > 2
        and then
        (Value (Value'First .. Value'First + 1) = "0x"
         or else Value (Value'First .. Value'First + 1) = "0X")
      then
         return Unsigned'Value
             ("16#" & Value (Value'First + 2 .. Last) & "#") *
           Multiplier;
      elsif Value'Length > 1 and then Value (Value'First) = '#' then
         return Unsigned'Value ("2#" & Value (Value'First + 1 .. Last) & "#") *
           Multiplier;
      else
         return Unsigned'Value (Value (Value'First .. Value'Last)) *
           Multiplier;
      end if;
   end Convert_Address;

   ----------------------
   -- Get_Base_Address --
   ----------------------

   function Get_Base_Address (Elt : DOM.Core.Element) return Unsigned is
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return Convert_Address
          (Value (Get_Named_Item (Attributes (Elt), "baseaddr")));
   end Get_Base_Address;

   ------------
   -- Get_Id --
   ------------

   function Get_Id
     (Elt : DOM.Core.Element) return Unbounded.Unbounded_String
   is
      use Ada.Strings.Unbounded;
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return Apply_Naming_Rules
          (To_Unbounded_String
             (Value (Get_Named_Item (Attributes (Elt), "id"))));
   end Get_Id;

   --------------
   -- Get_Href --
   --------------

   function Get_Href
     (Elt : DOM.Core.Element) return Unbounded.Unbounded_String
   is
      use Ada.Strings.Unbounded;
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return To_Unbounded_String
          (Value (Get_Named_Item (Attributes (Elt), "href")));
   end Get_Href;

   ---------------------
   -- Get_Xml_Version --
   ---------------------
   function Get_Xml_Version
     (Elt : DOM.Core.Element) return Unbounded.Unbounded_String
   is
      use Ada.Strings.Unbounded;
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return To_Unbounded_String
          (Value (Get_Named_Item (Attributes (Elt), "XML_version")));
   end Get_Xml_Version;

   ---------------------
   -- Get_Description --
   ---------------------

   function Get_Description
     (Elt : DOM.Core.Element) return Unbounded.Unbounded_String
   is
      use Ada.Strings.Unbounded;
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return To_Unbounded_String
          (Value (Get_Named_Item (Attributes (Elt), "description")));
   end Get_Description;

   ---------------
   -- Get_Value --
   ---------------

   function Get_Value
     (Elt : DOM.Core.Element) return Unbounded.Unbounded_String
   is
      use Ada.Strings.Unbounded;
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return To_Unbounded_String
          (Value (Get_Named_Item (Attributes (Elt), "Value")));
   end Get_Value;

   ---------------
   -- Get_Value --
   ---------------

   function Get_Value (Elt : DOM.Core.Element) return Unsigned is
      use Ada.Strings.Unbounded;
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return Unsigned'Value
          (Value (Get_Named_Item (Attributes (Elt), "value")));
   end Get_Value;

   --------------
   -- Get_Size --
   --------------

   function Get_Size (Elt : DOM.Core.Element) return Unsigned is
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return Convert_Address
          (Value (Get_Named_Item (Attributes (Elt), "size")));
   end Get_Size;

   ------------------
   -- Get_Blockset --
   ------------------

   function Get_Blockset (Elt : DOM.Core.Element) return Address_Block_Type is
      Address_Block : Address_Block_Type;
      use DOM.Core.Nodes;
   begin
      Address_Block.Offset     := 16#0#;
      Address_Block.Size       := Get_Size (Elt);
      Address_Block.Usage      := Registers_Usage;
      Address_Block.Protection := Undefined_Protection;
      return Address_Block;
   end Get_Blockset;

   ----------------
   -- Get_Offset --
   ----------------

   function Get_Offset (Elt : DOM.Core.Element) return Natural is
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return Natural
          (Convert_Address
             (Value (Get_Named_Item (Attributes (Elt), "offset"))));
   end Get_Offset;

   ----------------
   -- Get_Width --
   ----------------

   function Get_Width (Elt : DOM.Core.Element) return Natural is
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return Natural'Value
          (Value (Get_Named_Item (Attributes (Elt), "width")));
   end Get_Width;

   -------------
   -- Get_Lsb --
   -------------

   function Get_Lsb
     (Elt       : DOM.Core.Element) return Natural
   is
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return Natural'Value
        (Value (Get_Named_Item (Attributes (Elt), "end")));
   end Get_Lsb;

   -------------
   -- Get_Msb --
   -------------

   function Get_Msb
     (Elt       : DOM.Core.Element) return Natural
   is
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return Natural'Value
        (Value (Get_Named_Item (Attributes (Elt), "begin")));
   end Get_Msb;

   --------------------
   -- Get_R_W_Access --
   --------------------

   function Get_R_W_Access (Elt : DOM.Core.Element) return String is
      use DOM.Core.Attrs;
      use DOM.Core.Nodes;
   begin
      return Value (Get_Named_Item (Attributes (Elt), "rwaccess"));
   end Get_R_W_Access;

   ------------------
   -- Gen_DOM_Iter --
   ------------------

   procedure Gen_DOM_Iter (Elt : DOM.Core.Element; Obj : in out T) is
      use DOM.Core;
      List : constant Node_List := Nodes.Child_Nodes (Elt);
   begin
      for J in 0 .. Nodes.Length (List) - 1 loop
         if Nodes.Node_Type (Nodes.Item (List, J)) = Element_Node then
            declare
               Child : constant Element := Element (Nodes.Item (List, J));
               Tag : String renames Elements.Get_Tag_Name (Child);
            begin
               Read_Elt (Tag, Child, Obj);
            end;
         end if;
      end loop;
   end Gen_DOM_Iter;

   -------------------
   -- Common_Prefix --
   -------------------

   function Common_Prefix
     (Name1,
      Name2 : Unbounded.Unbounded_String)
      return Unbounded.Unbounded_String
   is
      use Unbounded;
      Prefix : Natural := Length (Name1);

   begin
      --  Try to find names of the form REGNAMEXX where XX is a number
      --  and extract the prefix
      for J in reverse 1 .. Length (Name1) loop
         Prefix := J;
         exit when Element (Name1, J) not in '0' .. '9';
      end loop;

      if Prefix > Length (Name2) then
         return Null_Unbounded_String;
      end if;

      if Element (Name1, Prefix) = '_'
        and then Element (Name2, Prefix) = '_'
      then
         --  We have names of the form PREFIX_XXXX
         --  In this case, we also strip the '_' character
         Prefix := Prefix - 1;
      end if;

      if Slice (Name1, 1, Prefix) /= Slice (Name2, 1, Prefix) then
         return Null_Unbounded_String;
      end if;

      for J in Prefix + 1 .. Length (Name2) loop
         if Element (Name2, J) not in '0' .. '9' then
            return Null_Unbounded_String;
         end if;
      end loop;

      return To_Unbounded_String (Slice (Name1, 1, Prefix));
   end Common_Prefix;

   ------------------------
   -- Apply_Naming_Rules --
   ------------------------

   function Apply_Naming_Rules
     (Variable_Name : Unbounded.Unbounded_String)
      return Unbounded.Unbounded_String
   is
      Clean_Name : Unbounded.Unbounded_String := Variable_Name;
      use DOM.Core.Elements;
      use Ada.Strings.Unbounded;
   begin
      -- Check if 1st character is anything other than an alphabetic letter
      while Element (Clean_Name, 1) not in 'a' .. 'z' and
        Element (Clean_Name, 1) not in 'A' .. 'Z'
      loop
         Delete (Clean_Name, 1, 1);
      end loop;

      -- replace any white spaces with underscores
      for J in 1 .. Length (Clean_Name) loop
         if Element (Clean_Name, J) = ' ' then
            Replace_Element (Clean_Name, J, '_');
         end if;
      end loop;

      return Clean_Name;
   end Apply_Naming_Rules;

   ------------------------
   -- Apply_Naming_Rules --
   ------------------------

   function Apply_Naming_Rules (Variable_Name : String) return String is
      use Ada.Strings.Unbounded;
   begin
      return To_String
          (Apply_Naming_Rules (To_Unbounded_String (Variable_Name)));
   end Apply_Naming_Rules;

end Base_Types;
