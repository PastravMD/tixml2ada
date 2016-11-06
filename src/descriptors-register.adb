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
with System;

-- XML dependencies
with DOM.Core;          use DOM.Core;
with DOM.Core.Elements; use DOM.Core.Elements;
with DOM.Core.Nodes;    use DOM.Core.Nodes;

-- TIXML2Ada dependencies
with Tixml2Ada_Utils;
with Ada_Gen;              use Ada_Gen;
with Descriptors.Register; use Descriptors.Register;

package body Descriptors.Register is

   -------------------
   -- Read_Register --
   -------------------

   function Read_Register
     (Register       : DOM.Core.Element;
      Prepend        : Unbounded.Unbounded_String;
      Append         : Unbounded.Unbounded_String;
      Reg_Properties : Register_Properties_T) return Register_Access
   is
      Ret           : Register_T;
      Bitfield_List : Node_List;
   begin
      Ret.Reg_Properties := Reg_Properties;

      Ret.Name             := Get_Id (Register);
      Ret.Xml_Id           := Ret.Name;
      Ret.Description      := Get_Description (Register);
      Ret.Mod_Write_Values := Modify;
      Ret.Read_Action      := Undefined_Read_Action;
      Ret.Type_Name        := Prepend & Ret.Name & Append;

      Ret.Reg_Properties.Size        := Get_Width (Register);
      Ret.Reg_Properties.Reg_Access  := Read_Write;
      Ret.Reg_Properties.Reset_Value := 16#0000_0000#;
      Ret.Reg_Properties.Reset_Mask  := 16#0000_0000#;

      if Get_Named_Item (Attributes (Register), "offset") /= null then
         Ret.Address_Offset := Get_Offset (Register);
      else
         Tixml2Ada_Utils.Log_Message ("Reg [" &
         To_String (Ret.Name) &
         "]    -> " & To_String (Ret.Description) &
         " has no offset attribute !", 2);
         Ret.Address_Offset := 0; -- better handling TBD
      end if;

      Bitfield_List := Get_Elements_By_Tag_Name (Register, "bitfield");

      if Length (Bitfield_List) > 0 then
         if not Bitfields_Valid (Bitfield_List, Ret.Reg_Properties) then
            raise Constraint_Error
              with "Register " &
              To_String (Ret.Name) &
              " contains an invalid bitfield layout.";
         end if;

         if Reg_Properties.Field_Order = Descending then
            for K in reverse 0 .. Length (Bitfield_List) - 1 loop
               declare
                  Field : Field_T;
               begin
                  Field :=
                    Read_Field
                      (Item (Bitfield_List, K),
                       Ret.Fields,
                       Ret.Reg_Properties.Reg_Access,
                       Ret.Read_Action);
                  if not Ret.Fields.Contains (Field) then
                     Ret.Fields.Append (Field);
                  end if;
               end;
            end loop;
         else
            for K in 0 .. Length (Bitfield_List) - 1 loop
               declare
                  Field : Field_T;
               begin
                  Field :=
                    Read_Field
                      (Item (Bitfield_List, K),
                       Ret.Fields,
                       Ret.Reg_Properties.Reg_Access,
                       Ret.Read_Action);
                  if not Ret.Fields.Contains (Field) then
                     Ret.Fields.Append (Field);
                  end if;
               end;
            end loop;
         end if;
      end if;

      return new Register_T'(Ret);

   end Read_Register;

   ---------
   -- "=" --
   ---------

   function Equal (R1, R2 : Register_Access) return Boolean is
      use type Field_Vectors.Vector;
   begin
      if R1 = null then
         return R2 = null;
      elsif R2 = null then
         return False;
      end if;

      return R1.Name = R2.Name
        and then R1.Address_Offset = R2.Address_Offset
        and then R1.Reg_Properties.Size = R2.Reg_Properties.Size
        and then R1.Dim = R2.Dim
        and then R1.Dim_Increment = R2.Dim_Increment
        and then R1.Fields = R2.Fields;
   end Equal;

   -----------------------
   -- Find_Common_Types --
   -----------------------

   procedure Find_Common_Types (Reg_Set : Register_Vectors.Vector) is
   begin
      --  Look for fields with similar types, to use a single type definition
      --  in such situation
      for J in Reg_Set.First_Index .. Reg_Set.Last_Index - 1 loop
         if Reg_Set (J).Type_Holder = null then
            for K in J + 1 .. Reg_Set.Last_Index loop
               if Equal (Reg_Set (J), Reg_Set (K)) then
                  --  Simple case: two identical registers.
                  Reg_Set (K).Type_Holder := Reg_Set (J);

               else
                  declare
                     Prefix : constant Unbounded.Unbounded_String :=
                       Similar_Type (Reg_Set (J), Reg_Set (K));
                  begin
                     if Unbounded.Length (Prefix) > 0 then
                        --  We have similar types, but with different names.
                        --  In such situation, it'd be nice to generate a
                        --  common type definition.
                        Reg_Set (J).Type_Name   := Prefix;
                        Reg_Set (K).Type_Holder := Reg_Set (J);
                     end if;
                  end;
               end if;
            end loop;
         end if;
      end loop;
   end Find_Common_Types;

   -----------------
   -- Common_Type --
   -----------------

   function Similar_Type
     (R1, R2 : Register_Access) return Unbounded.Unbounded_String
   is
      use Field_Vectors;
      use type Ada.Containers.Count_Type;

   begin
      if Length (R1.Fields) /= Length (R2.Fields) then
         return Unbounded.Null_Unbounded_String;
      end if;

      if R1.Dim /= R2.Dim then
         return Unbounded.Null_Unbounded_String;
      end if;

      for J in R1.Fields.First_Index .. R1.Fields.Last_Index loop
         if R1.Fields.Element (J) /= R2.Fields.Element (J) then
            return Unbounded.Null_Unbounded_String;
         end if;
      end loop;

      return Common_Prefix (R1.Name, R2.Name);
   end Similar_Type;

   ------------------
   -- Get_Ada_Type --
   ------------------

   function Get_Ada_Type (Reg : Register_Access) return String is
      use type Ada.Containers.Count_Type;
   begin
      if Reg.Type_Holder /= null then
         return Get_Ada_Type (Reg.Type_Holder);

      elsif Length (Reg.Ada_Type) > 0 then
         return To_String (Reg.Ada_Type);

      else
         raise Constraint_Error
           with "No ada type defined yet for " & To_String (Reg.Name);
      end if;
   end Get_Ada_Type;

   ----------
   -- Dump --
   ----------

   procedure Dump (Spec : in out Ada_Gen.Ada_Spec; Reg : Register_Access) is
      use type Ada.Containers.Count_Type;
   begin
      if Reg.Type_Holder /= null then
         --  This register is not responsible for emitting the Ada type.
         return;
      end if;

      if
        (Reg.Fields.Length = 1
         and then Reg.Fields.First_Element.Size = Reg.Reg_Properties.Size)
        or else Reg.Fields.Is_Empty
      then
         --  Don't generate anything here: we use a base type
         Reg.Ada_Type :=
           To_Unbounded_String (Target_Type (Reg.Reg_Properties.Size));

         if Reg.Dim > 1 then
            --  Just generate a comment to document the array that's going
            --  to be generated
            Add (Spec, New_Comment (To_String (Reg.Description)));
         end if;

      else
         declare
            Rec : Ada_Type_Record;

         begin
            Add
              (Spec,
               New_Comment_Box (To_String (Reg.Type_Name) & "_Register"));
            Rec :=
              Ada_Type_Record
                (New_Type_Record
                   (To_String (Reg.Type_Name) & "_Register",
                    To_String (Reg.Description)));

            Descriptors.Field.Dump
              (Spec,
               Reg,
               Rec,
               Reg.Fields,
               Reg.Reg_Properties);

            Add_Aspect (Rec, "Volatile_Full_Access");
            Add_Size_Aspect (Rec, Reg.Reg_Properties.Size);
            Add_Bit_Order_Aspect (Rec, System.Low_Order_First);

            declare
               Res : Ada_Type'Class := Simplify (Rec, Spec);
            begin
               Add (Spec, Res);
               Reg.Ada_Type := Id (Res);
            end;
         end;
      end if;

      if Reg.Dim > 1 then
         declare
            Array_T : Ada_Type_Array :=
              New_Type_Array
                (Id           => To_String (Reg.Type_Name) & "_Registers",
                 Index_Type   => "",
                 Index_First  => 0,
                 Index_Last   => Reg.Dim - 1,
                 Element_Type => Get_Ada_Type (Reg),
                 Comment      => To_String (Reg.Description));
         begin
            Add (Spec, Array_T);
            Reg.Ada_Type := Id (Array_T);
         end;
      end if;
   end Dump;

end Descriptors.Register;
