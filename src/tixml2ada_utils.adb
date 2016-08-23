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

with Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package body Tixml2Ada_Utils is

   G_Types_Pkg   : Unbounded_String := Null_Unbounded_String;
   G_Root_Pkg    : Unbounded_String := Null_Unbounded_String;
   G_Verbose_Lvl : Natural;

   ----------------------------
   -- Set_Base_Types_Package --
   ----------------------------

   procedure Set_Base_Types_Package (Value : String)
   is
   begin
      G_Types_Pkg := To_Unbounded_String (Value);
   end Set_Base_Types_Package;

   ------------------------
   -- Base_Types_Package --
   ------------------------

   function Base_Types_Package return String
   is
   begin
      return To_String (G_Types_Pkg);
   end Base_Types_Package;

   ---------------------------------
   -- External_Base_Types_Package --
   ---------------------------------

   function External_Base_Types_Package return Boolean
   is
   begin
      return G_Types_Pkg /= Null_Unbounded_String;
   end External_Base_Types_Package;

   ----------------------
   -- Set_Root_Package --
   ----------------------

   procedure Set_Root_Package (Value : String)
   is
   begin
      G_Root_Pkg := To_Unbounded_String (Value);
   end Set_Root_Package;

   ------------------
   -- Root_Package --
   ------------------

   function Root_Package return String
   is
   begin
      return To_String (G_Root_Pkg);
   end Root_Package;

   ----------------
   -- In_Runtime --
   ----------------

   function In_Runtime return Boolean
   is
      Intf : constant String := "Interfaces.";
      Root : constant String := Root_Package;
   begin
      if Root'Length <= Intf'Length then
         return False;
      elsif Root (Root'First .. Root'First + Intf'Length - 1) /= Intf then
         return False;
      else
         return True;
      end if;
   end In_Runtime;

   -------------------
   -- Set_Verbosity --
   -------------------

   procedure Set_Verbosity (Level : Natural)
   is
   begin
      G_Verbose_Lvl := Level;
   end Set_Verbosity;

   -----------------
   -- Log_Message --
   -----------------

   procedure Log_Message (Message : String; Level : Natural)
   is
      use Ada.Text_IO;
   begin
      if Level <= G_Verbose_Lvl then
         Put_Line(Message);
      end if;
   end Log_Message;

end Tixml2Ada_Utils;
