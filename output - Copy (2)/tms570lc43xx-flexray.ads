--  This spec has been automatically generated from hercules_frcc_spec_2.4.4.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.FlexRay is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  FlexRay
   type FlexRay_Peripheral is record
      --  ECC Control Register
      ECCCTRL  : TMS570LC43xx.Word;
      --  ECC Diagnostic Status Register
      ECCDSTAT : TMS570LC43xx.Word;
      --  ECC Test Register
      ECCTEST  : TMS570LC43xx.Word;
      --  Single Bit Error Register
      SBESTAT  : TMS570LC43xx.Word;
      --  Test register 1
      TEST1    : TMS570LC43xx.Word;
      --  Test register 2
      TEST2    : TMS570LC43xx.Word;
      --  Lock register
      LCK      : TMS570LC43xx.Word;
      --  Error interrupt register
      EIR      : TMS570LC43xx.Word;
      --  Status interrupt register
      SIR      : TMS570LC43xx.Word;
      --  Error interrupt line select
      EILS     : TMS570LC43xx.Word;
      --  Status interrupt line select
      SILS     : TMS570LC43xx.Word;
      --  Error interrupt enable set
      EIES     : TMS570LC43xx.Word;
      --  Error interrupt enable reset
      EIER     : TMS570LC43xx.Word;
      --  Status interrupt enable set
      SIES     : TMS570LC43xx.Word;
      --  Status interrupt enable reset
      SIER     : TMS570LC43xx.Word;
      --  Interrupt line enable
      ILE      : TMS570LC43xx.Word;
      --  Timer 0 configuration
      T0C      : TMS570LC43xx.Word;
      --  Timer 1 configuration
      T1C      : TMS570LC43xx.Word;
      --  Stop watch register1
      STPW1    : TMS570LC43xx.Word;
      --  Stop watch register2
      STPW2    : TMS570LC43xx.Word;
      --  SUC configuration register 1
      SUCC1    : TMS570LC43xx.Word;
      --  SUC configuration register 2
      SUCC2    : TMS570LC43xx.Word;
      --  SUC configuration register 3
      SUCC3    : TMS570LC43xx.Word;
      --  NEM configuration register
      NEMC     : TMS570LC43xx.Word;
      --  PRT configuration register 1
      PRTC1    : TMS570LC43xx.Word;
      --  PRT configuration register 2
      PRTC2    : TMS570LC43xx.Word;
      --  MHD configuration register
      MHDC     : TMS570LC43xx.Word;
      --  GTU configuration register 1
      GTUC1    : TMS570LC43xx.Word;
      --  GTU configuration register 2
      GTUC2    : TMS570LC43xx.Word;
      --  GTU configuration register 3
      GTUC3    : TMS570LC43xx.Word;
      --  GTU configuration register 4
      GTUC4    : TMS570LC43xx.Word;
      --  GTU configuration register 5
      GTUC5    : TMS570LC43xx.Word;
      --  GTU configuration register 6
      GTUC6    : TMS570LC43xx.Word;
      --  GTU configuration register 7
      GTUC7    : TMS570LC43xx.Word;
      --  GTU configuration register 8
      GTUC8    : TMS570LC43xx.Word;
      --  GTU configuration register 9
      GTUC9    : TMS570LC43xx.Word;
      --  GTU configuration register 10
      GTUC10   : TMS570LC43xx.Word;
      --  GTU configuration register 11
      GTUC11   : TMS570LC43xx.Word;
      --  communication controller status vector
      CCSV     : TMS570LC43xx.Word;
      --  communication controller error vector
      CCEV     : TMS570LC43xx.Word;
      --  Slot counter value
      SCV      : TMS570LC43xx.Word;
      --  Macrotick and cycle counter
      MTCCV    : TMS570LC43xx.Word;
      --  Rate correction value
      RCV      : TMS570LC43xx.Word;
      --  Offset correction value
      OCV      : TMS570LC43xx.Word;
      --  Sync frame status
      SFS      : TMS570LC43xx.Word;
      --  Symbol window and NIT status
      SWNIT    : TMS570LC43xx.Word;
      --  Aggregated channel status
      ACS      : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID1    : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID2    : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID3    : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID4    : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID5    : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID6    : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID7    : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID8    : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID9    : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID10   : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID11   : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID12   : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID13   : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID14   : TMS570LC43xx.Word;
      --  Even sync ID [1-15]
      ESID15   : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID1    : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID2    : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID3    : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID4    : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID5    : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID6    : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID7    : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID8    : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID9    : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID10   : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID11   : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID12   : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID13   : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID14   : TMS570LC43xx.Word;
      --  Odd sync ID [1-15]
      OSID15   : TMS570LC43xx.Word;
      --  Network management vector [1-3]
      NMV1     : TMS570LC43xx.Word;
      --  Network management vector [1-3]
      NMV2     : TMS570LC43xx.Word;
      --  Network management vector [1-3]
      NMV3     : TMS570LC43xx.Word;
      --  Message RAM configuration
      MRC      : TMS570LC43xx.Word;
      --  FIFO rejection filter
      FRF      : TMS570LC43xx.Word;
      --  FIFO rejection filter mask
      FRFM     : TMS570LC43xx.Word;
      --  FIFO Critical Level
      FCIM     : TMS570LC43xx.Word;
      --  Message handler status
      MHDS     : TMS570LC43xx.Word;
      --  Last dynamic transmit slot
      LDTS     : TMS570LC43xx.Word;
      --  FIFO status register
      FSR      : TMS570LC43xx.Word;
      --  Message handler constraint flags
      MHDF     : TMS570LC43xx.Word;
      --  Transmission request 1
      TXRQ1    : TMS570LC43xx.Word;
      --  Transmission request 2
      TXRQ2    : TMS570LC43xx.Word;
      --  Transmission request 3
      TXRQ3    : TMS570LC43xx.Word;
      --  Transmission request 4
      TXRQ4    : TMS570LC43xx.Word;
      --  New data 1
      NDAT1    : TMS570LC43xx.Word;
      --  New data 2
      NDAT2    : TMS570LC43xx.Word;
      --  New data 3
      NDAT3    : TMS570LC43xx.Word;
      --  New data 4
      NDAT4    : TMS570LC43xx.Word;
      --  Message buffer status changed 1
      MBSC1    : TMS570LC43xx.Word;
      --  Message buffer status changed 2
      MBSC2    : TMS570LC43xx.Word;
      --  Message buffer status changed 3
      MBSC3    : TMS570LC43xx.Word;
      --  Message buffer status changed 4
      MBSC4    : TMS570LC43xx.Word;
      --  Core release register
      CREL     : TMS570LC43xx.Word;
      --  Endian register
      ENDN     : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS1    : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS2    : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS3    : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS4    : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS5    : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS6    : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS7    : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS8    : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS9    : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS10   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS11   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS12   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS13   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS14   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS15   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS16   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS17   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS18   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS19   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS20   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS21   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS22   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS23   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS24   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS25   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS26   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS27   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS28   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS29   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS30   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS31   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS32   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS33   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS34   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS35   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS36   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS37   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS38   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS39   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS40   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS41   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS42   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS43   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS44   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS45   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS46   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS47   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS48   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS49   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS50   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS51   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS52   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS53   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS54   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS55   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS56   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS57   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS58   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS59   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS60   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS61   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS62   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS63   : TMS570LC43xx.Word;
      --  Write data section [1-64]
      WRDS64   : TMS570LC43xx.Word;
      --  Write header section 1
      WRHS1    : TMS570LC43xx.Word;
      --  Write header section 2
      WRHS2    : TMS570LC43xx.Word;
      --  Write header section 3
      WRHS3    : TMS570LC43xx.Word;
      --  Input buffer command mask
      IBCM     : TMS570LC43xx.Word;
      --  Input buffer command request
      IBCR     : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS1    : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS2    : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS3    : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS4    : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS5    : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS6    : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS7    : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS8    : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS9    : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS10   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS11   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS12   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS13   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS14   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS15   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS16   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS17   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS18   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS19   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS20   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS21   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS22   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS23   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS24   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS25   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS26   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS27   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS28   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS29   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS30   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS31   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS32   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS33   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS34   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS35   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS36   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS37   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS38   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS39   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS40   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS41   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS42   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS43   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS44   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS45   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS46   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS47   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS48   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS49   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS50   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS51   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS52   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS53   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS54   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS55   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS56   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS57   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS58   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS59   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS60   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS61   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS62   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS63   : TMS570LC43xx.Word;
      --  Read data section [1-64]
      RDDS64   : TMS570LC43xx.Word;
      --  Read header section 1
      RDHS1    : TMS570LC43xx.Word;
      --  Read header section 2
      RDHS2    : TMS570LC43xx.Word;
      --  Read header section 3
      RDHS3    : TMS570LC43xx.Word;
      --  Message buffer status
      MBS      : TMS570LC43xx.Word;
      --  Output buffer command mask
      OBCM     : TMS570LC43xx.Word;
      --  Output buffer command request
      OBCR     : TMS570LC43xx.Word;
   end record
     with Volatile;

   for FlexRay_Peripheral use record
      ECCCTRL  at 16#0# range 0 .. 31;
      ECCDSTAT at 16#4# range 0 .. 31;
      ECCTEST  at 16#8# range 0 .. 31;
      SBESTAT  at 16#C# range 0 .. 31;
      TEST1    at 16#10# range 0 .. 31;
      TEST2    at 16#14# range 0 .. 31;
      LCK      at 16#1C# range 0 .. 31;
      EIR      at 16#20# range 0 .. 31;
      SIR      at 16#24# range 0 .. 31;
      EILS     at 16#28# range 0 .. 31;
      SILS     at 16#2C# range 0 .. 31;
      EIES     at 16#30# range 0 .. 31;
      EIER     at 16#34# range 0 .. 31;
      SIES     at 16#38# range 0 .. 31;
      SIER     at 16#3C# range 0 .. 31;
      ILE      at 16#40# range 0 .. 31;
      T0C      at 16#44# range 0 .. 31;
      T1C      at 16#48# range 0 .. 31;
      STPW1    at 16#4C# range 0 .. 31;
      STPW2    at 16#50# range 0 .. 31;
      SUCC1    at 16#80# range 0 .. 31;
      SUCC2    at 16#84# range 0 .. 31;
      SUCC3    at 16#88# range 0 .. 31;
      NEMC     at 16#8C# range 0 .. 31;
      PRTC1    at 16#90# range 0 .. 31;
      PRTC2    at 16#94# range 0 .. 31;
      MHDC     at 16#98# range 0 .. 31;
      GTUC1    at 16#A0# range 0 .. 31;
      GTUC2    at 16#A4# range 0 .. 31;
      GTUC3    at 16#A8# range 0 .. 31;
      GTUC4    at 16#AC# range 0 .. 31;
      GTUC5    at 16#B0# range 0 .. 31;
      GTUC6    at 16#B4# range 0 .. 31;
      GTUC7    at 16#B8# range 0 .. 31;
      GTUC8    at 16#BC# range 0 .. 31;
      GTUC9    at 16#C0# range 0 .. 31;
      GTUC10   at 16#C4# range 0 .. 31;
      GTUC11   at 16#C8# range 0 .. 31;
      CCSV     at 16#100# range 0 .. 31;
      CCEV     at 16#104# range 0 .. 31;
      SCV      at 16#110# range 0 .. 31;
      MTCCV    at 16#114# range 0 .. 31;
      RCV      at 16#118# range 0 .. 31;
      OCV      at 16#11C# range 0 .. 31;
      SFS      at 16#120# range 0 .. 31;
      SWNIT    at 16#124# range 0 .. 31;
      ACS      at 16#128# range 0 .. 31;
      ESID1    at 16#130# range 0 .. 31;
      ESID2    at 16#134# range 0 .. 31;
      ESID3    at 16#138# range 0 .. 31;
      ESID4    at 16#13C# range 0 .. 31;
      ESID5    at 16#140# range 0 .. 31;
      ESID6    at 16#144# range 0 .. 31;
      ESID7    at 16#148# range 0 .. 31;
      ESID8    at 16#14C# range 0 .. 31;
      ESID9    at 16#150# range 0 .. 31;
      ESID10   at 16#154# range 0 .. 31;
      ESID11   at 16#158# range 0 .. 31;
      ESID12   at 16#15C# range 0 .. 31;
      ESID13   at 16#160# range 0 .. 31;
      ESID14   at 16#164# range 0 .. 31;
      ESID15   at 16#168# range 0 .. 31;
      OSID1    at 16#170# range 0 .. 31;
      OSID2    at 16#174# range 0 .. 31;
      OSID3    at 16#178# range 0 .. 31;
      OSID4    at 16#17C# range 0 .. 31;
      OSID5    at 16#180# range 0 .. 31;
      OSID6    at 16#184# range 0 .. 31;
      OSID7    at 16#188# range 0 .. 31;
      OSID8    at 16#18C# range 0 .. 31;
      OSID9    at 16#190# range 0 .. 31;
      OSID10   at 16#194# range 0 .. 31;
      OSID11   at 16#198# range 0 .. 31;
      OSID12   at 16#19C# range 0 .. 31;
      OSID13   at 16#1A0# range 0 .. 31;
      OSID14   at 16#1A4# range 0 .. 31;
      OSID15   at 16#1A8# range 0 .. 31;
      NMV1     at 16#1B0# range 0 .. 31;
      NMV2     at 16#1B4# range 0 .. 31;
      NMV3     at 16#1B8# range 0 .. 31;
      MRC      at 16#300# range 0 .. 31;
      FRF      at 16#304# range 0 .. 31;
      FRFM     at 16#308# range 0 .. 31;
      FCIM     at 16#30C# range 0 .. 31;
      MHDS     at 16#310# range 0 .. 31;
      LDTS     at 16#314# range 0 .. 31;
      FSR      at 16#318# range 0 .. 31;
      MHDF     at 16#31C# range 0 .. 31;
      TXRQ1    at 16#320# range 0 .. 31;
      TXRQ2    at 16#324# range 0 .. 31;
      TXRQ3    at 16#328# range 0 .. 31;
      TXRQ4    at 16#32C# range 0 .. 31;
      NDAT1    at 16#330# range 0 .. 31;
      NDAT2    at 16#334# range 0 .. 31;
      NDAT3    at 16#338# range 0 .. 31;
      NDAT4    at 16#33C# range 0 .. 31;
      MBSC1    at 16#340# range 0 .. 31;
      MBSC2    at 16#344# range 0 .. 31;
      MBSC3    at 16#348# range 0 .. 31;
      MBSC4    at 16#34C# range 0 .. 31;
      CREL     at 16#3F0# range 0 .. 31;
      ENDN     at 16#3F4# range 0 .. 31;
      WRDS1    at 16#400# range 0 .. 31;
      WRDS2    at 16#404# range 0 .. 31;
      WRDS3    at 16#408# range 0 .. 31;
      WRDS4    at 16#40C# range 0 .. 31;
      WRDS5    at 16#410# range 0 .. 31;
      WRDS6    at 16#414# range 0 .. 31;
      WRDS7    at 16#418# range 0 .. 31;
      WRDS8    at 16#41C# range 0 .. 31;
      WRDS9    at 16#420# range 0 .. 31;
      WRDS10   at 16#424# range 0 .. 31;
      WRDS11   at 16#428# range 0 .. 31;
      WRDS12   at 16#42C# range 0 .. 31;
      WRDS13   at 16#430# range 0 .. 31;
      WRDS14   at 16#434# range 0 .. 31;
      WRDS15   at 16#438# range 0 .. 31;
      WRDS16   at 16#43C# range 0 .. 31;
      WRDS17   at 16#440# range 0 .. 31;
      WRDS18   at 16#444# range 0 .. 31;
      WRDS19   at 16#448# range 0 .. 31;
      WRDS20   at 16#44C# range 0 .. 31;
      WRDS21   at 16#450# range 0 .. 31;
      WRDS22   at 16#454# range 0 .. 31;
      WRDS23   at 16#458# range 0 .. 31;
      WRDS24   at 16#45C# range 0 .. 31;
      WRDS25   at 16#460# range 0 .. 31;
      WRDS26   at 16#464# range 0 .. 31;
      WRDS27   at 16#468# range 0 .. 31;
      WRDS28   at 16#46C# range 0 .. 31;
      WRDS29   at 16#470# range 0 .. 31;
      WRDS30   at 16#474# range 0 .. 31;
      WRDS31   at 16#478# range 0 .. 31;
      WRDS32   at 16#47C# range 0 .. 31;
      WRDS33   at 16#480# range 0 .. 31;
      WRDS34   at 16#484# range 0 .. 31;
      WRDS35   at 16#488# range 0 .. 31;
      WRDS36   at 16#48C# range 0 .. 31;
      WRDS37   at 16#490# range 0 .. 31;
      WRDS38   at 16#494# range 0 .. 31;
      WRDS39   at 16#498# range 0 .. 31;
      WRDS40   at 16#49C# range 0 .. 31;
      WRDS41   at 16#4A0# range 0 .. 31;
      WRDS42   at 16#4A4# range 0 .. 31;
      WRDS43   at 16#4A8# range 0 .. 31;
      WRDS44   at 16#4AC# range 0 .. 31;
      WRDS45   at 16#4B0# range 0 .. 31;
      WRDS46   at 16#4B4# range 0 .. 31;
      WRDS47   at 16#4B8# range 0 .. 31;
      WRDS48   at 16#4BC# range 0 .. 31;
      WRDS49   at 16#4C0# range 0 .. 31;
      WRDS50   at 16#4C4# range 0 .. 31;
      WRDS51   at 16#4C8# range 0 .. 31;
      WRDS52   at 16#4CC# range 0 .. 31;
      WRDS53   at 16#4D0# range 0 .. 31;
      WRDS54   at 16#4D4# range 0 .. 31;
      WRDS55   at 16#4D8# range 0 .. 31;
      WRDS56   at 16#4DC# range 0 .. 31;
      WRDS57   at 16#4E0# range 0 .. 31;
      WRDS58   at 16#4E4# range 0 .. 31;
      WRDS59   at 16#4E8# range 0 .. 31;
      WRDS60   at 16#4EC# range 0 .. 31;
      WRDS61   at 16#4F0# range 0 .. 31;
      WRDS62   at 16#4F4# range 0 .. 31;
      WRDS63   at 16#4F8# range 0 .. 31;
      WRDS64   at 16#4FC# range 0 .. 31;
      WRHS1    at 16#500# range 0 .. 31;
      WRHS2    at 16#504# range 0 .. 31;
      WRHS3    at 16#508# range 0 .. 31;
      IBCM     at 16#510# range 0 .. 31;
      IBCR     at 16#514# range 0 .. 31;
      RDDS1    at 16#600# range 0 .. 31;
      RDDS2    at 16#604# range 0 .. 31;
      RDDS3    at 16#608# range 0 .. 31;
      RDDS4    at 16#60C# range 0 .. 31;
      RDDS5    at 16#610# range 0 .. 31;
      RDDS6    at 16#614# range 0 .. 31;
      RDDS7    at 16#618# range 0 .. 31;
      RDDS8    at 16#61C# range 0 .. 31;
      RDDS9    at 16#620# range 0 .. 31;
      RDDS10   at 16#624# range 0 .. 31;
      RDDS11   at 16#628# range 0 .. 31;
      RDDS12   at 16#62C# range 0 .. 31;
      RDDS13   at 16#630# range 0 .. 31;
      RDDS14   at 16#634# range 0 .. 31;
      RDDS15   at 16#638# range 0 .. 31;
      RDDS16   at 16#63C# range 0 .. 31;
      RDDS17   at 16#640# range 0 .. 31;
      RDDS18   at 16#644# range 0 .. 31;
      RDDS19   at 16#648# range 0 .. 31;
      RDDS20   at 16#64C# range 0 .. 31;
      RDDS21   at 16#650# range 0 .. 31;
      RDDS22   at 16#654# range 0 .. 31;
      RDDS23   at 16#658# range 0 .. 31;
      RDDS24   at 16#65C# range 0 .. 31;
      RDDS25   at 16#660# range 0 .. 31;
      RDDS26   at 16#664# range 0 .. 31;
      RDDS27   at 16#668# range 0 .. 31;
      RDDS28   at 16#66C# range 0 .. 31;
      RDDS29   at 16#670# range 0 .. 31;
      RDDS30   at 16#674# range 0 .. 31;
      RDDS31   at 16#678# range 0 .. 31;
      RDDS32   at 16#67C# range 0 .. 31;
      RDDS33   at 16#680# range 0 .. 31;
      RDDS34   at 16#684# range 0 .. 31;
      RDDS35   at 16#688# range 0 .. 31;
      RDDS36   at 16#68C# range 0 .. 31;
      RDDS37   at 16#690# range 0 .. 31;
      RDDS38   at 16#694# range 0 .. 31;
      RDDS39   at 16#698# range 0 .. 31;
      RDDS40   at 16#69C# range 0 .. 31;
      RDDS41   at 16#6A0# range 0 .. 31;
      RDDS42   at 16#6A4# range 0 .. 31;
      RDDS43   at 16#6A8# range 0 .. 31;
      RDDS44   at 16#6AC# range 0 .. 31;
      RDDS45   at 16#6B0# range 0 .. 31;
      RDDS46   at 16#6B4# range 0 .. 31;
      RDDS47   at 16#6B8# range 0 .. 31;
      RDDS48   at 16#6BC# range 0 .. 31;
      RDDS49   at 16#6C0# range 0 .. 31;
      RDDS50   at 16#6C4# range 0 .. 31;
      RDDS51   at 16#6C8# range 0 .. 31;
      RDDS52   at 16#6CC# range 0 .. 31;
      RDDS53   at 16#6D0# range 0 .. 31;
      RDDS54   at 16#6D4# range 0 .. 31;
      RDDS55   at 16#6D8# range 0 .. 31;
      RDDS56   at 16#6DC# range 0 .. 31;
      RDDS57   at 16#6E0# range 0 .. 31;
      RDDS58   at 16#6E4# range 0 .. 31;
      RDDS59   at 16#6E8# range 0 .. 31;
      RDDS60   at 16#6EC# range 0 .. 31;
      RDDS61   at 16#6F0# range 0 .. 31;
      RDDS62   at 16#6F4# range 0 .. 31;
      RDDS63   at 16#6F8# range 0 .. 31;
      RDDS64   at 16#6FC# range 0 .. 31;
      RDHS1    at 16#700# range 0 .. 31;
      RDHS2    at 16#704# range 0 .. 31;
      RDHS3    at 16#708# range 0 .. 31;
      MBS      at 16#70C# range 0 .. 31;
      OBCM     at 16#710# range 0 .. 31;
      OBCR     at 16#714# range 0 .. 31;
   end record;

   --  FlexRay
   FlexRay_Periph : aliased FlexRay_Peripheral
     with Import, Address => FlexRay_Base;

end TMS570LC43xx.FlexRay;
