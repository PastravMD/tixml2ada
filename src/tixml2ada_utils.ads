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

package Tixml2Ada_Utils is

   procedure Set_Base_Types_Package (Value : String);
   function Base_Types_Package return String;
   function External_Base_Types_Package return Boolean;

   procedure Set_Root_Package (Value : String);
   function Root_Package return String;
   function In_Runtime return Boolean;

   procedure Set_Verbosity (Level : Natural);
   procedure Log_Message (Message : String; Level : Natural);

end Tixml2Ada_Utils;
