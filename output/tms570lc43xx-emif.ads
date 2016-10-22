--  This spec has been automatically generated from hercules_emif_spec_2.5.5.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Emif is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  External Memory Interface
   type Emif_Peripheral is record
      --  Revision Code and Status Register
      RevCdStat           : TMS570LC43xx.Word;
      --  Asynchronous 1 Configuration Register (CS0 space)
      Async1Cfg           : TMS570LC43xx.Word;
      --  Asynchronous 2 Configuration Register (CS1 space)
      Async2Cfg           : TMS570LC43xx.Word;
      --  Asynchronous 3 Configuration Register (CS2 space)
      Async3Cfg           : TMS570LC43xx.Word;
      --  Asynchronous 4 Configuration Register (CS3 space)
      Async4Cfg           : TMS570LC43xx.Word;
      --  SDRAM Timing Register
      SdramTiming         : TMS570LC43xx.Word;
      --  SDRAM Status Register
      SdramStat           : TMS570LC43xx.Word;
      --  DDR PHY Control Register
      DdrPhyCtrl          : TMS570LC43xx.Word;
      --  DDR PHY Status Register
      DdrPhyStat          : TMS570LC43xx.Word;
      --  Total SDRAM Accesses Register
      SdramAccess         : TMS570LC43xx.Word;
      --  Total SDRAM Activate Register
      SdramActivat        : TMS570LC43xx.Word;
      --  DDR PHY ID and Revision Register
      DdrPhyIdRev         : TMS570LC43xx.Word;
      --  SDRAM SR/PD Exit Timing Register
      SdramSrExTiming     : TMS570LC43xx.Word;
      --  Interrupt Raw Register
      IntRaw              : TMS570LC43xx.Word;
      --  Interrupt Masked Register
      IntMask             : TMS570LC43xx.Word;
      --  Interrupt Mask Set Register
      IntMaskSet          : TMS570LC43xx.Word;
      --  Interrupt Mask Clear Register
      IntMaskClr          : TMS570LC43xx.Word;
      --  IO Control Register
      IoCtrl              : TMS570LC43xx.Word;
      --  IO Status Register
      IoStat              : TMS570LC43xx.Word;
      --  SDRAM Config 2 Register
      SdramConfig2        : TMS570LC43xx.Word;
      --  NAND Flash Control Register
      OneNandFlashCtrl    : TMS570LC43xx.Word;
      --  NAND Flash Control Register
      NandFlashCtrl       : TMS570LC43xx.Word;
      --  NAND Flash Status Register
      NandFlashStat       : TMS570LC43xx.Word;
      --  Page Mode Control Register
      PageModCtrl         : TMS570LC43xx.Word;
      --  NAND Flash CS2 1-Bit ECC Register
      NandFlashCs2Ecc     : TMS570LC43xx.Word;
      --  NAND Flash CS3 1-Bit ECC Register
      NandFlashCs3Ecc     : TMS570LC43xx.Word;
      --  NAND Flash CS4 1-Bit ECC Register
      NandFlashCs4Ecc     : TMS570LC43xx.Word;
      --  NAND Flash CS2 1-Bit ECC Register
      NandFlashCs5Ecc     : TMS570LC43xx.Word;
      --  IODFT Test Logic Execution Counter Register
      IoDftExecCount      : TMS570LC43xx.Word;
      --  IODFT Test Logic Global Control Register
      IoDftGlobCtrl       : TMS570LC43xx.Word;
      --  IODFT Test Logic Address MISR Result Register
      IoDftAddrMisrResult : TMS570LC43xx.Word;
      --  IODFT Test Logic Data MISR Result Register
      IoDftDataMisrResult : TMS570LC43xx.Word;
      --  IODFT Test Logic Data and Control MISR Result
      IoDftCtrlResult     : TMS570LC43xx.Word;
      --  Module Release Number Register
      ModuleRev           : TMS570LC43xx.Word;
      --  NAND Flash 4-Bit ECC Load Register
      NandFlashEccLoad    : TMS570LC43xx.Word;
      --  NAND Flash 4-Bit ECC 1 Register
      NandFlashEcc1       : TMS570LC43xx.Word;
      --  NAND Flash 4-Bit ECC 2 Register
      NandFlashEcc2       : TMS570LC43xx.Word;
      --  NAND Flash 4-Bit ECC 3 Register
      NandFlashEcc3       : TMS570LC43xx.Word;
      --  NAND Flash 4-Bit ECC 4 Register
      NandFlashEcc4       : TMS570LC43xx.Word;
      --  NAND Flash Error Address 1 Register
      NandFlashErrAddr1   : TMS570LC43xx.Word;
      --  NAND Flash Error Address 2 Register
      NandFlashErrAddr2   : TMS570LC43xx.Word;
      --  NAND Flash Error Address 3 Register
      NandFlashErrAddr3   : TMS570LC43xx.Word;
      --  NAND Flash Error Address 4 Register
      NandFlashErrAddr4   : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Emif_Peripheral use record
      RevCdStat           at 16#0# range 0 .. 31;
      Async1Cfg           at 16#10# range 0 .. 31;
      Async2Cfg           at 16#14# range 0 .. 31;
      Async3Cfg           at 16#18# range 0 .. 31;
      Async4Cfg           at 16#1C# range 0 .. 31;
      SdramTiming         at 16#20# range 0 .. 31;
      SdramStat           at 16#24# range 0 .. 31;
      DdrPhyCtrl          at 16#28# range 0 .. 31;
      DdrPhyStat          at 16#2C# range 0 .. 31;
      SdramAccess         at 16#30# range 0 .. 31;
      SdramActivat        at 16#34# range 0 .. 31;
      DdrPhyIdRev         at 16#38# range 0 .. 31;
      SdramSrExTiming     at 16#3C# range 0 .. 31;
      IntRaw              at 16#40# range 0 .. 31;
      IntMask             at 16#44# range 0 .. 31;
      IntMaskSet          at 16#48# range 0 .. 31;
      IntMaskClr          at 16#4C# range 0 .. 31;
      IoCtrl              at 16#50# range 0 .. 31;
      IoStat              at 16#54# range 0 .. 31;
      SdramConfig2        at 16#58# range 0 .. 31;
      OneNandFlashCtrl    at 16#5C# range 0 .. 31;
      NandFlashCtrl       at 16#60# range 0 .. 31;
      NandFlashStat       at 16#64# range 0 .. 31;
      PageModCtrl         at 16#68# range 0 .. 31;
      NandFlashCs2Ecc     at 16#70# range 0 .. 31;
      NandFlashCs3Ecc     at 16#74# range 0 .. 31;
      NandFlashCs4Ecc     at 16#78# range 0 .. 31;
      NandFlashCs5Ecc     at 16#7C# range 0 .. 31;
      IoDftExecCount      at 16#84# range 0 .. 31;
      IoDftGlobCtrl       at 16#88# range 0 .. 31;
      IoDftAddrMisrResult at 16#90# range 0 .. 31;
      IoDftDataMisrResult at 16#94# range 0 .. 31;
      IoDftCtrlResult     at 16#98# range 0 .. 31;
      ModuleRev           at 16#B0# range 0 .. 31;
      NandFlashEccLoad    at 16#BC# range 0 .. 31;
      NandFlashEcc1       at 16#C0# range 0 .. 31;
      NandFlashEcc2       at 16#C4# range 0 .. 31;
      NandFlashEcc3       at 16#C8# range 0 .. 31;
      NandFlashEcc4       at 16#CC# range 0 .. 31;
      NandFlashErrAddr1   at 16#D0# range 0 .. 31;
      NandFlashErrAddr2   at 16#D4# range 0 .. 31;
      NandFlashErrAddr3   at 16#D8# range 0 .. 31;
      NandFlashErrAddr4   at 16#DC# range 0 .. 31;
   end record;

   --  External Memory Interface
   Emif_Periph : aliased Emif_Peripheral
     with Import, Address => Emif_Base;

end TMS570LC43xx.Emif;
