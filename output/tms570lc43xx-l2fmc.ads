--  This spec has been automatically generated from hercules_l2fmc_spec_0.2.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.L2fmc is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  L2 Flash Memory Controller
   type FlashWrapper_Peripheral is record
      --  Read Control Register
      FRdCntl       : TMS570LC43xx.Word;
      --  Special Read Control Register
      FSpRd         : TMS570LC43xx.Word;
      --  Error Correction Control Register1
      FEdacCtrl1    : TMS570LC43xx.Word;
      --  PortA Error Status register
      PortAErrStat  : TMS570LC43xx.Word;
      --  PortB Error Status register
      PortBErrStat  : TMS570LC43xx.Word;
      --  Error Status Register
      FEdacStat     : TMS570LC43xx.Word;
      --  Error Detection Sector Disable
      FEdacSDis     : TMS570LC43xx.Word;
      --  Primary Address Tag Register
      FPprimAddrTag : TMS570LC43xx.Word;
      --  Redundant Address Tag Register
      FReduAddrTag  : TMS570LC43xx.Word;
      --  Bank Protection Register
      FBnkProt      : TMS570LC43xx.Word;
      --  Bank Sector Enable Register
      FBnkSec       : TMS570LC43xx.Word;
      --  Bank Busy Register
      FBusy         : TMS570LC43xx.Word;
      --  Bank Access Control Register
      FBnkAcc       : TMS570LC43xx.Word;
      --  Bank Fallback Power Register
      FBnkFallback  : TMS570LC43xx.Word;
      --  Bank/Pump Ready Register
      FBnkPmpRdy    : TMS570LC43xx.Word;
      --  Pump Access Control Register 1
      FPmpAcc1      : TMS570LC43xx.Word;
      --  Pump Access Control Register 2
      FPmpAcc2      : TMS570LC43xx.Word;
      --  Module Access Control Register
      FMdlAcc       : TMS570LC43xx.Word;
      --  Module Status Register
      FMdlStat      : TMS570LC43xx.Word;
      --  EEPROM Emulation Data MSW Register
      FEmuDatMsw    : TMS570LC43xx.Word;
      --  EEPROM Emulation Data LSW Register
      FEmuDatLsw    : TMS570LC43xx.Word;
      --  EEPROM Emulation ECC Register
      FEmuEcc       : TMS570LC43xx.Word;
      --  Flash Lock Register
      FLock         : TMS570LC43xx.Word;
      --  EEPROM Emulation Address
      FEmuAddr      : TMS570LC43xx.Word;
      --  Diagnostic Control Register
      FDiagCtrl     : TMS570LC43xx.Word;
      --  Raw Address register during Diagnostic mode
      FRawAddr      : TMS570LC43xx.Word;
      --  Parity Override
      FParOvr       : TMS570LC43xx.Word;
      --  Reset Config and JSM Key Valid
      RstConfJsmVal : TMS570LC43xx.Word;
      --  Crossbar access timeout threshold register
      XbarThreshold : TMS570LC43xx.Word;
      --  Reset Config Value lower 32bit
      RstConfVal0   : TMS570LC43xx.Word;
      --  Reset Config Value Upper 32bit
      RstConfVal1   : TMS570LC43xx.Word;
      --  JSM Key Bits 31:0
      JsmKey0       : TMS570LC43xx.Word;
      --  JSM Key Bits 63:32
      JsmKey1       : TMS570LC43xx.Word;
      --  JSM Key Bits 95:64
      JsmKey2       : TMS570LC43xx.Word;
      --  JSM Key Bits 127:96
      JsmKey3       : TMS570LC43xx.Word;
   end record
     with Volatile;

   for FlashWrapper_Peripheral use record
      FRdCntl       at 16#0# range 0 .. 31;
      FSpRd         at 16#4# range 0 .. 31;
      FEdacCtrl1    at 16#8# range 0 .. 31;
      PortAErrStat  at 16#14# range 0 .. 31;
      PortBErrStat  at 16#18# range 0 .. 31;
      FEdacStat     at 16#1C# range 0 .. 31;
      FEdacSDis     at 16#24# range 0 .. 31;
      FPprimAddrTag at 16#28# range 0 .. 31;
      FReduAddrTag  at 16#2C# range 0 .. 31;
      FBnkProt      at 16#30# range 0 .. 31;
      FBnkSec       at 16#34# range 0 .. 31;
      FBusy         at 16#38# range 0 .. 31;
      FBnkAcc       at 16#3C# range 0 .. 31;
      FBnkFallback  at 16#40# range 0 .. 31;
      FBnkPmpRdy    at 16#44# range 0 .. 31;
      FPmpAcc1      at 16#48# range 0 .. 31;
      FPmpAcc2      at 16#4C# range 0 .. 31;
      FMdlAcc       at 16#50# range 0 .. 31;
      FMdlStat      at 16#54# range 0 .. 31;
      FEmuDatMsw    at 16#58# range 0 .. 31;
      FEmuDatLsw    at 16#5C# range 0 .. 31;
      FEmuEcc       at 16#60# range 0 .. 31;
      FLock         at 16#64# range 0 .. 31;
      FEmuAddr      at 16#68# range 0 .. 31;
      FDiagCtrl     at 16#6C# range 0 .. 31;
      FRawAddr      at 16#74# range 0 .. 31;
      FParOvr       at 16#7C# range 0 .. 31;
      RstConfJsmVal at 16#B4# range 0 .. 31;
      XbarThreshold at 16#B8# range 0 .. 31;
      RstConfVal0   at 16#D0# range 0 .. 31;
      RstConfVal1   at 16#D4# range 0 .. 31;
      JsmKey0       at 16#E0# range 0 .. 31;
      JsmKey1       at 16#E4# range 0 .. 31;
      JsmKey2       at 16#E8# range 0 .. 31;
      JsmKey3       at 16#EC# range 0 .. 31;
   end record;

   --  L2 Flash Memory Controller
   FlashWrapper_Periph : aliased FlashWrapper_Peripheral
     with Import, Address => FlashWrapper_Base;

end TMS570LC43xx.L2fmc;
