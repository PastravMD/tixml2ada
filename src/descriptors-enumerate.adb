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

with DOM.Core;          use DOM.Core;
with DOM.Core.Elements; use DOM.Core.Elements;
with DOM.Core.Nodes;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package body Descriptors.Enumerate is

   function Read_Value (Elt : DOM.Core.Element) return Enumerate_Value;
   --  Reads the enum value from the DOM element

   ----------------
   -- Read_Value --
   ----------------

   function Read_Value (Elt : DOM.Core.Element) return Enumerate_Value is
      Ret : Enumerate_Value;
   begin
      Ret.Name      := Get_Id (Elt);
      Ret.Descr     := Get_Description (Elt);
      Ret.Value     := Get_Value (Elt);
      Ret.IsDefault := False;
      return Ret;
   end Read_Value;

   --------------------
   -- Read_Enumerate --
   --------------------

   function Read_Enumerate (Elt : DOM.Core.Element) return Enumerate_T is
      Enum_Value_List : constant Node_List :=
        Get_Elements_By_Tag_Name (Elt, "bitenum");
      R_W_Access : constant String := Get_R_W_Access (Elt);
      Ret        : Enumerate_T;
   begin

      Ret.Name := Get_Id (Elt) & "_enum";

      if R_W_Access = "R" then
         Ret.Usage := Read;
      elsif R_W_Access = "W" then
         Ret.Usage := Write;
      elsif R_W_Access = "RW" then
         Ret.Usage := Read_Write;
      else
         Ret.Usage := Undefined_Enum_Usage;
      end if;

      if Nodes.Length (Enum_Value_List) > 1 then
         for J in 0 .. Nodes.Length (Enum_Value_List) - 1 loop
            Ret.Values.Append (Read_Value (Nodes.Item (Enum_Value_List, J)));
         end loop;
      end if;
      return Ret;
   end Read_Enumerate;

end Descriptors.Enumerate;
