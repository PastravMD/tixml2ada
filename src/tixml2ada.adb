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
with Ada.Strings.Unbounded;
with Input_Sources.File;

-- common GNAT dependencies
with GNAT.OS_Lib;
with GNAT.Strings;
with GNAT.Command_Line;
with GNAT.Directory_Operations;

-- XML dependencies
with DOM.Core.Documents;
with DOM.Readers;
with Schema.Validators;

with DOM.Core;

-- TIXML2Ada dependencies
with Descriptors.Device;
with Tixml2Ada_Utils;
with Ada_Gen;

function tixml2Ada return Integer is

   --  Local variables used for XML parsing
   Top_Xml_File    : Input_Sources.File.File_Input;
   Top_Xml_Reader  : DOM.Readers.Tree_Reader;
   Top_Xml_Doc     : DOM.Core.Document;
   Top_Xml_Element : DOM.Core.Node;
   Top_Xml_Folder  : Ada.Strings.Unbounded.Unbounded_String;

   --  The produced Device
   Target_Device : Descriptors.Device.Device_T;

   --  Command line parser
   Cmd_Line_Cfg : GNAT.Command_Line.Command_Line_Configuration;
   Output_Dir   : aliased GNAT.Strings.String_Access;
   Verbosity    : aliased GNAT.Strings.String_Access;
   Default_Run  : aliased Boolean := False;

   use type GNAT.Strings.String_Access;
   use GNAT.Directory_Operations;
begin
   GNAT.Command_Line.Set_Usage
     (Cmd_Line_Cfg,
      Usage => "[options] xml_file",
      Help  =>
        ASCII.LF &
        "Generate Ada bindings from Texas Instruments " &
        "specific hardware descriptions xml files.");

   GNAT.Command_Line.Define_Switch
     (Cmd_Line_Cfg,
      Output      => Verbosity'Access,
      Switch      => "-v=",
      Long_Switch => "--verbosity=",
      Help        =>
        "Set the verbosity level of displayed messages:" &
        ASCII.LF &
        "   0   Quiet mode" &
        ASCII.LF &
        "   1   Report status of main stages" &
        ASCII.LF &
        "   2   Report every operation" &
        ASCII.LF,
      Argument => "LEVEL");

   GNAT.Command_Line.Define_Switch
     (Cmd_Line_Cfg,
      Output      => Output_Dir'Access,
      Switch      => "-o=",
      Long_Switch => "--output=",
      Help        => "The destination directory used to generate the bindings",
      Argument    => "DIR");

   GNAT.Command_Line.Define_Switch
     (Cmd_Line_Cfg,
      Output      => Default_Run'Access,
      Switch      => "-d",
      Long_Switch => "--default",
      Help        =>
        "Automatically reads " &
        "./input/Devices/tms570lc43xx.xml and generates output in ./output/",
      Section => "",
      Value   => True);
   GNAT.Command_Line.Getopt (Config => Cmd_Line_Cfg);

   if Default_Run then
      Tixml2Ada_Utils.Set_Verbosity (1);
      -- Read input file
      Input_Sources.File.Open ("input/Devices/tms570lc43xx.xml", Top_Xml_File);
      Top_Xml_Folder :=
        Ada.Strings.Unbounded.To_Unbounded_String
          (Dir_Name ("input/Devices/tms570lc43xx.xml"));
      Ada_Gen.Set_Input_File_Name
        (Base_Name ("input/Devices/tms570lc43xx.xml"));
   else
      declare
         Input : constant String := GNAT.Command_Line.Get_Argument;
      begin
         if Input = ""
           or else Output_Dir = null
           or else Output_Dir.all = ""
         then
            Ada.Text_IO.Put_Line
              (Ada.Text_IO.Standard_Error,
               "Error: missing arguments");
            GNAT.Command_Line.Try_Help;
            return 1;
         end if;

         if Verbosity /= null and then Verbosity.all /= "" then
            Tixml2Ada_Utils.Set_Verbosity (Natural'Value (Verbosity.all));
         end if;

         declare
            Input_File : constant String :=
              GNAT.OS_Lib.Normalize_Pathname (Input);
         begin
            -- Read input file
            Input_Sources.File.Open (Input_File, Top_Xml_File);
            Top_Xml_Folder :=
              Ada.Strings.Unbounded.To_Unbounded_String
                (Dir_Name (Input_File));
            Ada_Gen.Set_Input_File_Name (Base_Name (Input_File));
         end;
      end;
   end if;

   -- Parse xml document and get top element
   Top_Xml_Reader.Parse (Top_Xml_File);
   Input_Sources.File.Close (Top_Xml_File);
   Top_Xml_Doc     := DOM.Readers.Get_Tree (Top_Xml_Reader);
   Top_Xml_Element := DOM.Core.Documents.Get_Element (Top_Xml_Doc);

   -- Read device information
   Tixml2Ada_Utils.Log_Message (" *** TI XML 2 Ada binding generator *** ", 1);

   Target_Device :=
     Descriptors.Device.Read_Device (Top_Xml_Element, Top_Xml_Folder);

   -- Generate spec code for the device
   if Default_Run then
      Descriptors.Device.Dump (Target_Device, "output");
   else
      Descriptors.Device.Dump (Target_Device, Output_Dir.all);
   end if;

   DOM.Readers.Free (Top_Xml_Reader);

   return 0;

exception
   when GNAT.Command_Line
     .Invalid_Switch | GNAT.Command_Line
     .Invalid_Parameter | GNAT.Command_Line
     .Exit_From_Command_Line =>
      return 1;
   when Schema.Validators.XML_Validation_Error =>
      Input_Sources.File.Close (Top_Xml_File);
      Tixml2Ada_Utils.Log_Message ("Non-valid xml file.", 1);
      return 2;
end tixml2Ada;
