# tixml2ada

TIXML2Ada is an Ada binding generator from Texas Instruments specific xml 
 descriptions for embedded devices (based on AdaCore's SVD2Ada project)

Instructions:

1. Clone the tixml2ada repository
2. Make sure you have GNAT GPL release 2015 or 2016 installed
3. Run "$ gprbuild tixml2ada.gpr -XXMLADA_BUILD=static" in the main project directory
4. Run "$ ./tixml2ada --default" to start the newly compiled program with default setup
       (TMS570LC43xx target device, using input xml files provided in ./input)
5. Obtain generated .ads files from ./output directory and use them to cross-compile
     embedded software for your board.


Executable's help message:

tixml2ada xml_input_file [options]

    -d, --default    Automatically tries to read ./input/Devices/tms570lc43xx.xml
                     and generate the Ada spec files in ./output. It overrides
                     the input file argument and is used for convenience.

    -o, --output=DIR The destination directory for the resulting generated files

    -v, --verbosity=LEVEL Set the verbosity level of the displayed messages
                           0 Quiet mode
                           1 Report status of main stages
                           2 Report everything


Description:

The program parses the contents of Texas Instruments device description XMLs and generates a set of Ada specification files. The main target XML files are commonly found in <CodeComposerInstallDir>/ccs_base_common_targetdb/devices. These are device specific and contain references to various peripheral description XML available in ../targetdb/Modules/<device_family>/. The paths contained in the XML are relative so it is important to keep the targetdb directory structure intact.

The initial target for the program is the TMS570LC43xx safety microcontroller, based on the Cortex R5 device but xml content structure appears to be the same for all Texas Instrument devices so it should work for any of the availale chip families.


Caveats:

Some of the xml files contain errors like incorrectly defined bitfields or bitfield ranges. The tool catches these inconsistencies and reports them. In this case the xml should be manually corrected, consulting the device user manual.

The xml files do not always provide a complete description of the registers i.e. specify a register's name and address but do not describe the contained bitfields. More detail can be added by hand to the xmls lacking this. To keep track of which xml is edited, I suggest adding an extra digit and a letter to the official xml version (e.g. version "1.2" become "1.2.1b").

