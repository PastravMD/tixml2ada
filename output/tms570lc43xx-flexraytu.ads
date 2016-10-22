--  This spec has been automatically generated from hercules_frtu_spec_2.4.4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.FlexRayTU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Flexray Transfer Unit
   type FlexRayTU_Peripheral is record
      --  Product Identification Communication Controller
      PICC     : TMS570LC43xx.Word;
      --  Global Static Number
      GSN      : TMS570LC43xx.Word;
      --  Global Control Set
      GCS      : TMS570LC43xx.Word;
      --  Global Control Reset
      GCR      : TMS570LC43xx.Word;
      --  Transfer Status
      TSCB     : TMS570LC43xx.Word;
      --  Last Transferred Buffer to Communication Controller
      LTBCC    : TMS570LC43xx.Word;
      --  Last Transferred Buffer to System Memory
      LTBSM    : TMS570LC43xx.Word;
      --  Transfer Base Address
      TBA      : TMS570LC43xx.Word;
      --  Next Transfer Base Address
      NTBA     : TMS570LC43xx.Word;
      --  Base Address of Mirrored Status
      BAMS     : TMS570LC43xx.Word;
      --  Start Address of Memory Protection
      SAMP     : TMS570LC43xx.Word;
      --  End Address of Memory Protection
      EAMP     : TMS570LC43xx.Word;
      --  Transfer to System Memory Occurred 1
      TSMO1    : TMS570LC43xx.Word;
      --  Transfer to System Memory Occurred 2
      TSMO2    : TMS570LC43xx.Word;
      --  Transfer to System Memory Occurred 3
      TSMO3    : TMS570LC43xx.Word;
      --  Transfer to System Memory Occurred 4
      TSMO4    : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Occurred 1
      TCCO1    : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Occurred 2
      TCCO2    : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Occurred 3
      TCCO3    : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Occurred 4
      TCCO4    : TMS570LC43xx.Word;
      --  Transfer Occurred Offset
      TOOFF    : TMS570LC43xx.Word;
      --  TCR ECC single Bit Error Status
      TSBESTAT : TMS570LC43xx.Word;
      --  ECC Error Address
      PEADR    : TMS570LC43xx.Word;
      --  Transfer Error InterRupt
      TEIR     : TMS570LC43xx.Word;
      --  Transfer Error InterRupt Enable Set
      TEIRES   : TMS570LC43xx.Word;
      --  Transfer Error InterRupt Enable Reset
      TEIRER   : TMS570LC43xx.Word;
      --  Trigger Transfer to System Memory Set 1
      TTSMS1   : TMS570LC43xx.Word;
      --  Trigger Transfer to System Memory Reset 1
      TTSMR1   : TMS570LC43xx.Word;
      --  Trigger Transfer to System Memory Set 2
      TTSMS2   : TMS570LC43xx.Word;
      --  Trigger Transfer to System Memory Reset 2
      TTSMR2   : TMS570LC43xx.Word;
      --  Trigger Transfer to System Memory Set 3
      TTSMS3   : TMS570LC43xx.Word;
      --  Trigger Transfer to System Memory Reset 3
      TTSMR3   : TMS570LC43xx.Word;
      --  Trigger Transfer to System Memory Set 4
      TTSMS4   : TMS570LC43xx.Word;
      --  Trigger Transfer to System Memory Reset 4
      TTSMR4   : TMS570LC43xx.Word;
      --  Trigger Transfer to Communication Controller Set 1
      TTCCS1   : TMS570LC43xx.Word;
      --  Trigger Transfer to Communication Controller Reset 1
      TTCCR1   : TMS570LC43xx.Word;
      --  Trigger Transfer to Communication Controller Set 2
      TTCCS2   : TMS570LC43xx.Word;
      --  Trigger Transfer to Communication Controller Reset 2
      TTCCR2   : TMS570LC43xx.Word;
      --  Trigger Transfer to Communication Controller Set 3
      TTCCS3   : TMS570LC43xx.Word;
      --  Trigger Transfer to Communication Controller Reset 3
      TTCCR3   : TMS570LC43xx.Word;
      --  Trigger Transfer to Communication Controller Set 4
      TTCCS4   : TMS570LC43xx.Word;
      --  Trigger Transfer to Communication Controller Reset 4
      TTCCR4   : TMS570LC43xx.Word;
      --  Enable Transfer on Event to System Memory Set 1
      ETESMS1  : TMS570LC43xx.Word;
      --  Enable Transfer on Event to System Memory Reset 1
      ETESMR1  : TMS570LC43xx.Word;
      --  Enable Transfer on Event to System Memory Set 2
      ETESMS2  : TMS570LC43xx.Word;
      --  Enable Transfer on Event to System Memory Reset 2
      ETESMR2  : TMS570LC43xx.Word;
      --  Enable Transfer on Event to System Memory Set 3
      ETESMS3  : TMS570LC43xx.Word;
      --  Enable Transfer on Event to System Memory Reset 3
      ETESMR3  : TMS570LC43xx.Word;
      --  Enable Transfer on Event to System Memory Set 4
      ETESMS4  : TMS570LC43xx.Word;
      --  Enable Transfer on Event to System Memory Reset 4
      ETESMR4  : TMS570LC43xx.Word;
      --  Clear on Event to System Memory Set 1
      CESMS1   : TMS570LC43xx.Word;
      --  Clear on Event to System Memory Reset 1
      CESMR1   : TMS570LC43xx.Word;
      --  Clear on Event to System Memory Set 2
      CESMS2   : TMS570LC43xx.Word;
      --  Clear on Event to System Memory Reset 2
      CESMR2   : TMS570LC43xx.Word;
      --  Clear on Event to System Memory Set 3
      CESMS3   : TMS570LC43xx.Word;
      --  Clear on Event to System Memory Reset 3
      CESMR3   : TMS570LC43xx.Word;
      --  Clear on Event to System Memory Set 4
      CESMS4   : TMS570LC43xx.Word;
      --  Clear on Event to System Memory Reset 4
      CESMR4   : TMS570LC43xx.Word;
      --  Transfer to System Memory Interrupt Enable Set 1
      TSMIES1  : TMS570LC43xx.Word;
      --  Transfer to System Memory Interrupt Enable Reset 1
      TSMIER1  : TMS570LC43xx.Word;
      --  Transfer to System Memory Interrupt Enable Set 2
      TSMIES2  : TMS570LC43xx.Word;
      --  Transfer to System Memory Interrupt Enable Reset 2
      TSMIER2  : TMS570LC43xx.Word;
      --  Transfer to System Memory Interrupt Enable Set 3
      TSMIES3  : TMS570LC43xx.Word;
      --  Transfer to System Memory Interrupt Enable Reset 3
      TSMIER3  : TMS570LC43xx.Word;
      --  Transfer to System Memory Interrupt Enable Set 4
      TSMIES4  : TMS570LC43xx.Word;
      --  Transfer to System Memory Interrupt Enable Reset 4
      TSMIER4  : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Interrupt Enable Set 1
      TCCIES1  : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Interrupt Enable Reset 1
      TCCIER1  : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Interrupt Enable Set 2
      TCCIES2  : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Interrupt Enable Reset 2
      TCCIER2  : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Interrupt Enable Set 3
      TCCIES3  : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Interrupt Enable Reset 3
      TCCIER3  : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Interrupt Enable Set 4
      TCCIES4  : TMS570LC43xx.Word;
      --  Transfer to Communication Controller Interrupt Enable Reset 4
      TCCIER4  : TMS570LC43xx.Word;
   end record
     with Volatile;

   for FlexRayTU_Peripheral use record
      PICC     at 16#0# range 0 .. 31;
      GSN      at 16#4# range 0 .. 31;
      GCS      at 16#10# range 0 .. 31;
      GCR      at 16#14# range 0 .. 31;
      TSCB     at 16#18# range 0 .. 31;
      LTBCC    at 16#1C# range 0 .. 31;
      LTBSM    at 16#20# range 0 .. 31;
      TBA      at 16#24# range 0 .. 31;
      NTBA     at 16#28# range 0 .. 31;
      BAMS     at 16#2C# range 0 .. 31;
      SAMP     at 16#30# range 0 .. 31;
      EAMP     at 16#34# range 0 .. 31;
      TSMO1    at 16#40# range 0 .. 31;
      TSMO2    at 16#44# range 0 .. 31;
      TSMO3    at 16#48# range 0 .. 31;
      TSMO4    at 16#4C# range 0 .. 31;
      TCCO1    at 16#50# range 0 .. 31;
      TCCO2    at 16#54# range 0 .. 31;
      TCCO3    at 16#58# range 0 .. 31;
      TCCO4    at 16#5C# range 0 .. 31;
      TOOFF    at 16#60# range 0 .. 31;
      TSBESTAT at 16#6C# range 0 .. 31;
      PEADR    at 16#70# range 0 .. 31;
      TEIR     at 16#74# range 0 .. 31;
      TEIRES   at 16#78# range 0 .. 31;
      TEIRER   at 16#7C# range 0 .. 31;
      TTSMS1   at 16#80# range 0 .. 31;
      TTSMR1   at 16#84# range 0 .. 31;
      TTSMS2   at 16#88# range 0 .. 31;
      TTSMR2   at 16#8C# range 0 .. 31;
      TTSMS3   at 16#90# range 0 .. 31;
      TTSMR3   at 16#94# range 0 .. 31;
      TTSMS4   at 16#98# range 0 .. 31;
      TTSMR4   at 16#9C# range 0 .. 31;
      TTCCS1   at 16#A0# range 0 .. 31;
      TTCCR1   at 16#A4# range 0 .. 31;
      TTCCS2   at 16#A8# range 0 .. 31;
      TTCCR2   at 16#AC# range 0 .. 31;
      TTCCS3   at 16#B0# range 0 .. 31;
      TTCCR3   at 16#B4# range 0 .. 31;
      TTCCS4   at 16#B8# range 0 .. 31;
      TTCCR4   at 16#BC# range 0 .. 31;
      ETESMS1  at 16#C0# range 0 .. 31;
      ETESMR1  at 16#C4# range 0 .. 31;
      ETESMS2  at 16#C8# range 0 .. 31;
      ETESMR2  at 16#CC# range 0 .. 31;
      ETESMS3  at 16#D0# range 0 .. 31;
      ETESMR3  at 16#D4# range 0 .. 31;
      ETESMS4  at 16#D8# range 0 .. 31;
      ETESMR4  at 16#DC# range 0 .. 31;
      CESMS1   at 16#E0# range 0 .. 31;
      CESMR1   at 16#E4# range 0 .. 31;
      CESMS2   at 16#E8# range 0 .. 31;
      CESMR2   at 16#EC# range 0 .. 31;
      CESMS3   at 16#F0# range 0 .. 31;
      CESMR3   at 16#F4# range 0 .. 31;
      CESMS4   at 16#F8# range 0 .. 31;
      CESMR4   at 16#FC# range 0 .. 31;
      TSMIES1  at 16#100# range 0 .. 31;
      TSMIER1  at 16#104# range 0 .. 31;
      TSMIES2  at 16#108# range 0 .. 31;
      TSMIER2  at 16#10C# range 0 .. 31;
      TSMIES3  at 16#110# range 0 .. 31;
      TSMIER3  at 16#114# range 0 .. 31;
      TSMIES4  at 16#118# range 0 .. 31;
      TSMIER4  at 16#11C# range 0 .. 31;
      TCCIES1  at 16#120# range 0 .. 31;
      TCCIER1  at 16#124# range 0 .. 31;
      TCCIES2  at 16#128# range 0 .. 31;
      TCCIER2  at 16#12C# range 0 .. 31;
      TCCIES3  at 16#130# range 0 .. 31;
      TCCIER3  at 16#134# range 0 .. 31;
      TCCIES4  at 16#138# range 0 .. 31;
      TCCIER4  at 16#13C# range 0 .. 31;
   end record;

   --  Flexray Transfer Unit
   FlexRayTU_Periph : aliased FlexRayTU_Peripheral
     with Import, Address => FlexRayTU_Base;

end TMS570LC43xx.FlexRayTU;
