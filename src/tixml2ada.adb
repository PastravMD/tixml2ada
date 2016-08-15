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
      
-- common Ada dependencies
with Ada.Text_IO;
with Input_Sources.File;

-- common GNAT dependencies
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
with Ada_Gen;


function tixml2Ada return Integer
is
   --  Local variables used for XML parsing  
   Top_Xml_File    : Input_Sources.File.File_Input;
   Top_Xml_Reader  : DOM.Readers.Tree_Reader;
   Top_Xml_Doc     : DOM.Core.Document;
   Top_Xml_Element : DOM.Core.Node;   

   --  The produced Device   
   Target_Device   : Descriptors.Device.Device_T;

   --  Command line parser
   Cmd_Line_Cfg    : GNAT.Command_Line.Command_Line_Configuration;
   Output_Dir      : aliased GNAT.Strings.String_Access;
   
   use type GNAT.Strings.String_Access;   
begin
   GNAT.Command_Line.Set_Usage
     (Cmd_Line_Cfg,
      Usage => "[options] -o DIR TI-xml file",
      Help  => "Generate Ada bindings from Texas Instruments " &
        "specific hardware descriptions xml files.");
   GNAT.Command_Line.Define_Switch
     (Cmd_Line_Cfg,
      Output      => Output_Dir'Access,
      Switch      => "-o=",
      Long_Switch => "--output=",
      Help        => "the destination directory used to" & 
        "generate the bindings",
      Argument    => "DIR");
   GNAT.Command_Line.Getopt (Config => Cmd_Line_Cfg);

   -- Read input file
   Input_Sources.File.Open("input/Devices/tms570lc43xx.xml", Top_Xml_File);
   
   Ada_Gen.Set_Input_File_Name     
     (GNAT.Directory_Operations.Base_Name ("input/Devices/tms570lc43xx.xml"));   

   -- Parse xml document and get top element
   Top_Xml_Reader.Parse (Top_Xml_File);
   Input_Sources.File.Close(Top_Xml_File);
   Top_Xml_Doc := DOM.Readers.Get_Tree(Top_Xml_Reader);
   Top_Xml_Element := DOM.Core.Documents.Get_Element(Top_Xml_Doc);
   
   -- Read device information
   Ada.Text_IO.Put_Line (" *** TI XML 2 Ada binding generator *** ");
   Target_Device := Descriptors.Device.Read_Device (Top_Xml_Element);
   
   -- Generate spec code for the device
   Descriptors.Device.Dump (Target_Device, "output");
   
   DOM.Readers.Free (Top_Xml_Reader); 

   return 0;
   
exception
   when GNAT.Command_Line.Invalid_Switch |
        GNAT.Command_Line.Invalid_Parameter |
        GNAT.Command_Line.Exit_From_Command_Line =>
      return 1;
   when Schema.Validators.XML_Validation_Error =>
      Input_Sources.File.Close(Top_Xml_File);
      Ada.Text_IO.Put_Line ("Non-valid xml file.");
      return 2;
end tixml2Ada;












































