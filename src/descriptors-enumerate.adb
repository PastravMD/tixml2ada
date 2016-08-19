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




----------------------- Temporary use/with -------------------------------------
-- XML dependencies
with DOM.Core;           use DOM.Core;
with DOM.Core.Elements;  use DOM.Core.Elements;
with DOM.Core.Nodes;         use DOM.Core.Nodes;
with DOM.Core.Attrs;         use DOM.Core.Attrs;

-- TIXML2Ada dependencies
with Descriptors;            use Descriptors;
with Descriptors.Field;      use Descriptors.Field;
with Descriptors.Enumerate;  use Descriptors.Enumerate;

with Ada.Strings.Unbounded;  use Ada.Strings.Unbounded;
with Ada_Gen;                use Ada_Gen;
--------------------------------------------------------------------------------

package body Descriptors.Enumerate is

   function Read_Value (Elt : DOM.Core.Element) return Enumerate_Value;
   --  Reads the enum value from the DOM element

   ----------------
   -- Read_Value --
   ----------------

   function Read_Value (Elt : DOM.Core.Element) return Enumerate_Value
   is
      Ret  : Enumerate_Value;
   begin
      Ret.Name := Apply_Naming_Rules (To_Unbounded_String (Value (Get_Named_Item (Attributes (Elt), "id"))));
      Ret.Descr := To_Unbounded_String (Value (Get_Named_Item (Attributes (Elt), "description")));
      Ret.Value := Unsigned'Value (Value (Get_Named_Item (Attributes (Elt), "value")));
      Ret.IsDefault := False;

      return Ret;
   end Read_Value;


   --------------------
   -- Read_Enumerate --
   --------------------

   function Read_Enumerate
     (Elt    : DOM.Core.Element)
      return Enumerate_T
   is
      Enum_Value_List : constant Node_List := DOM.Core.Elements.Get_Elements_By_Tag_Name (Elt, "bitenum");
      Ret             : Enumerate_T;
      R_W_Acess       : constant String := Value (Get_Named_Item (Attributes (Elt), "rwaccess"));
   begin

      Ret.Name := Apply_Naming_Rules (To_Unbounded_String (Value (Get_Named_Item (Attributes (Elt), "id")))) & "_enum";

      if R_W_Acess = "R" then
         Ret.Usage := Read;
      elsif
        R_W_Acess = "W" then
         Ret.Usage := Write;
      elsif
        R_W_Acess = "RW" then
         Ret.Usage := Read_Write;
      else Ret.Usage := Undefined_Enum_Usage;
      end if;

      if Nodes.Length (Enum_Value_List) > 1 then
         for J in 0 .. Nodes.Length (Enum_Value_List) - 1 loop
            Ret.Values.Append (Read_Value (Item (Enum_Value_List, J)));
         end loop;
      end if;
      return Ret;
   end Read_Enumerate;

end Descriptors.Enumerate;
