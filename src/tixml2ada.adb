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
with Ada.Strings.Unbounded;       use Ada.Strings.Unbounded;

-- common GNAT dependencies
with GNAT.Command_Line;
--with GNAT.Directory_Operations;
--with GNAT.OS_Lib;
with GNAT.Strings;

-- XML dependencies
with Input_Sources.File;
with DOM.Core.Documents;     
with DOM.Readers;                 

with DOM.Core;                     use DOM.Core;
with DOM.Core.Nodes;               use DOM.Core.Nodes;
with DOM.Core.Attrs;               use DOM.Core.Attrs;
with DOM.Core.Elements;            use DOM.Core.Elements;

-- TIXML2Ada dependencies
with Descriptors;                  use Descriptors;
with Descriptors.Device;           use Descriptors.Device;
with Descriptors.Peripheral;       use Descriptors.Peripheral;
with Descriptors.Register;         use Descriptors.Register;
with Descriptors.Field;            use Descriptors.Field;
with Descriptors.Enumerate;        use Descriptors.Enumerate;

function tixml2Ada return Integer
is
   -- Local variables used for XML parsing
   Top_Xml_File        : Input_Sources.File.File_Input;
   Top_Xml_Reader       : DOM.Readers.Tree_Reader;
   Top_Xml_Doc          : DOM.Core.Document;

   -- Command line parser
   Cmd_Line_Cfg   : GNAT.Command_Line.Command_Line_Configuration;

   use type GNAT.Strings.String_Access;

   --  The produced Device
   Target_Device : Descriptors.Device.Device_T;
   
   --------------------------------------------------------
   Output_Dir               : aliased GNAT.Strings.String_Access;
   Top_Xml_Element          : DOM.Core.Node;
   -- ------------------------------------------------------

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

   GNAT.Command_Line.Getopt(Config => Cmd_Line_Cfg);

   -- reading input file
   Input_Sources.File.Open("input/Devices/tms570lc43xx.xml", Top_Xml_File);

   -- parse xml document and get top element
   Top_Xml_Reader.Parse (Top_Xml_File);
   Input_Sources.File.Close(Top_Xml_File);
   Top_Xml_Doc := DOM.Readers.Get_Tree(Top_Xml_Reader);
   Top_Xml_Element := Documents.Get_Element(Top_Xml_Doc);
   
   Ada.Text_IO.Put_Line (" *** TI XML 2 Ada binding generator *** ");
   
   -- parse xml and read device information
   Target_Device := Descriptors.Device.Read_Device 
     (Top_Xml_Element, "package_name");
   
   -- generate code: not ready
   Descriptors.Device.Dump (Target_Device, "output");
   
   DOM.Readers.Free (Top_Xml_Reader); 

   return 0;

end tixml2Ada;












































