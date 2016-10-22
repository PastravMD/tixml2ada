--  This spec has been automatically generated from hercules_crc_spec_1.0.1.d.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Crc is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Cyclic Redundancy Check
   type Crc_Peripheral is record
      --  CRC Global Control Register 0
      Ctrl0       : TMS570LC43xx.Word;
      --  CRC Global Control Register 1
      Ctrl1       : TMS570LC43xx.Word;
      --  CRC Global Control Register 2
      Ctrl2       : TMS570LC43xx.Word;
      --  Write one to a bit to enable a interrupt
      IntSet      : TMS570LC43xx.Word;
      --  Write one to a bit to disable a interrupt
      IntClr      : TMS570LC43xx.Word;
      --  CRC Interrupt Status Register
      IntStat     : TMS570LC43xx.Word;
      --  CRC Interrupt Offset Register
      IntOffst    : TMS570LC43xx.Word;
      --  CRC Busy Register
      Busy        : TMS570LC43xx.Word;
      --  CRC Pattern Counter Preload Register 1
      PCount1     : TMS570LC43xx.Word;
      --  CRC Sector Counter Preload Register 1
      SCount1     : TMS570LC43xx.Word;
      --  CRC Current Sector Register 1
      CurSec1     : TMS570LC43xx.Word;
      --  Watchdog Timeout Preload Register
      WdToPld1    : TMS570LC43xx.Word;
      --  CRC Channel 1 Block Complete Timeout Preload Register
      BcToPld1    : TMS570LC43xx.Word;
      --  Channel 1 PSA signature low register
      PsaSigL1    : TMS570LC43xx.Word;
      --  Channel 1 PSA signature high register
      PsaSigH1    : TMS570LC43xx.Word;
      --  Channel 1 CRC value low register
      CrcValL1    : TMS570LC43xx.Word;
      --  Channel 1 CRC value high register
      CrcValH1    : TMS570LC43xx.Word;
      --  PSA Sector Signature Low Register 1
      PsaSecSigL1 : TMS570LC43xx.Word;
      --  PSA Sector Signature High Register 1
      PsaSecSigH1 : TMS570LC43xx.Word;
      --  Raw Data Low Register 1
      RawDataL1   : TMS570LC43xx.Word;
      --  Raw Data High Register 1
      RawDataH1   : TMS570LC43xx.Word;
      --  CRC Pattern Counter Preload Register 1
      PCount2     : TMS570LC43xx.Word;
      --  CRC Sector Counter Preload Register 1
      SCount2     : TMS570LC43xx.Word;
      --  CRC Current Sector Register 1
      CurSec2     : TMS570LC43xx.Word;
      --  Watchdog Timeout Preload Register
      WdToPld2    : TMS570LC43xx.Word;
      --  CRC Channel 1 Block Complete Timeout Preload Register
      BcToPld2    : TMS570LC43xx.Word;
      --  Channel 2 PSA signature low register
      PsaSigL2    : TMS570LC43xx.Word;
      --  Channel 2 PSA signature high register
      PsaSigH2    : TMS570LC43xx.Word;
      --  Channel 2 CRC value low register
      CrcValL2    : TMS570LC43xx.Word;
      --  Channel 2 CRC value high register
      CrcValH2    : TMS570LC43xx.Word;
      --  PSA Sector Signature Low Register 2
      PsaSecSigL2 : TMS570LC43xx.Word;
      --  PSA Sector Signature High Register 2
      PsaSecSigH2 : TMS570LC43xx.Word;
      --  Raw Data Low Register 2
      RawDataL2   : TMS570LC43xx.Word;
      --  Raw Data High Register 2
      RawDataH2   : TMS570LC43xx.Word;
      --  CRC Pattern Counter Preload Register 3
      PCount3     : TMS570LC43xx.Word;
      --  CRC Sector Counter Preload Register 3
      SCount3     : TMS570LC43xx.Word;
      --  CRC Current Sector Register 3
      CurSec3     : TMS570LC43xx.Word;
      --  Watchdog Timeout Preload Register
      WdToPld3    : TMS570LC43xx.Word;
      --  CRC Channel 3 Block Complete Timeout Preload Register
      BcToPld3    : TMS570LC43xx.Word;
      --  Channel 3 PSA signature low register
      PsaSigL3    : TMS570LC43xx.Word;
      --  Channel 3 PSA signature high register
      PsaSigH3    : TMS570LC43xx.Word;
      --  Channel 3 CRC value low register
      CrcValL3    : TMS570LC43xx.Word;
      --  Channel 3 CRC value high register
      CrcValH3    : TMS570LC43xx.Word;
      --  PSA Sector Signature Low Register 3
      PsaSecSigL3 : TMS570LC43xx.Word;
      --  PSA Sector Signature High Register 3
      PsaSecSigH3 : TMS570LC43xx.Word;
      --  Raw Data Low Register 3
      RawDataL3   : TMS570LC43xx.Word;
      --  Raw Data High Register 3
      RawDataH3   : TMS570LC43xx.Word;
      --  CRC Pattern Counter Preload Register 4
      PCount4     : TMS570LC43xx.Word;
      --  CRC Sector Counter Preload Register 4
      SCount4     : TMS570LC43xx.Word;
      --  CRC Current Sector Register 4
      CurSec4     : TMS570LC43xx.Word;
      --  Watchdog Timeout Preload Register
      WdToPld4    : TMS570LC43xx.Word;
      --  CRC Channel 4 Block Complete Timeout Preload Register
      BcToPld4    : TMS570LC43xx.Word;
      --  Channel 4 PSA signature low register
      PsaSigL4    : TMS570LC43xx.Word;
      --  Channel 4 PSA signature high register
      PsaSigH4    : TMS570LC43xx.Word;
      --  Channel 4 CRC value low register
      CrcValL4    : TMS570LC43xx.Word;
      --  Channel 4 CRC value high register
      CrcValH4    : TMS570LC43xx.Word;
      --  PSA Sector Signature Low Register 4
      PsaSecSigL4 : TMS570LC43xx.Word;
      --  PSA Sector Signature High Register 4
      PsaSecSigH4 : TMS570LC43xx.Word;
      --  Raw Data Low Register 4
      RawDataL4   : TMS570LC43xx.Word;
      --  Raw Data High Register 4
      RawDataH4   : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Crc_Peripheral use record
      Ctrl0       at 16#0# range 0 .. 31;
      Ctrl1       at 16#8# range 0 .. 31;
      Ctrl2       at 16#10# range 0 .. 31;
      IntSet      at 16#18# range 0 .. 31;
      IntClr      at 16#20# range 0 .. 31;
      IntStat     at 16#28# range 0 .. 31;
      IntOffst    at 16#30# range 0 .. 31;
      Busy        at 16#38# range 0 .. 31;
      PCount1     at 16#40# range 0 .. 31;
      SCount1     at 16#44# range 0 .. 31;
      CurSec1     at 16#48# range 0 .. 31;
      WdToPld1    at 16#4C# range 0 .. 31;
      BcToPld1    at 16#50# range 0 .. 31;
      PsaSigL1    at 16#60# range 0 .. 31;
      PsaSigH1    at 16#64# range 0 .. 31;
      CrcValL1    at 16#68# range 0 .. 31;
      CrcValH1    at 16#6C# range 0 .. 31;
      PsaSecSigL1 at 16#70# range 0 .. 31;
      PsaSecSigH1 at 16#74# range 0 .. 31;
      RawDataL1   at 16#78# range 0 .. 31;
      RawDataH1   at 16#7C# range 0 .. 31;
      PCount2     at 16#80# range 0 .. 31;
      SCount2     at 16#84# range 0 .. 31;
      CurSec2     at 16#88# range 0 .. 31;
      WdToPld2    at 16#8C# range 0 .. 31;
      BcToPld2    at 16#90# range 0 .. 31;
      PsaSigL2    at 16#A0# range 0 .. 31;
      PsaSigH2    at 16#A4# range 0 .. 31;
      CrcValL2    at 16#A8# range 0 .. 31;
      CrcValH2    at 16#AC# range 0 .. 31;
      PsaSecSigL2 at 16#B0# range 0 .. 31;
      PsaSecSigH2 at 16#B4# range 0 .. 31;
      RawDataL2   at 16#B8# range 0 .. 31;
      RawDataH2   at 16#BC# range 0 .. 31;
      PCount3     at 16#C0# range 0 .. 31;
      SCount3     at 16#C4# range 0 .. 31;
      CurSec3     at 16#C8# range 0 .. 31;
      WdToPld3    at 16#CC# range 0 .. 31;
      BcToPld3    at 16#D0# range 0 .. 31;
      PsaSigL3    at 16#E0# range 0 .. 31;
      PsaSigH3    at 16#E4# range 0 .. 31;
      CrcValL3    at 16#E8# range 0 .. 31;
      CrcValH3    at 16#EC# range 0 .. 31;
      PsaSecSigL3 at 16#F0# range 0 .. 31;
      PsaSecSigH3 at 16#F4# range 0 .. 31;
      RawDataL3   at 16#F8# range 0 .. 31;
      RawDataH3   at 16#FC# range 0 .. 31;
      PCount4     at 16#100# range 0 .. 31;
      SCount4     at 16#104# range 0 .. 31;
      CurSec4     at 16#108# range 0 .. 31;
      WdToPld4    at 16#10C# range 0 .. 31;
      BcToPld4    at 16#110# range 0 .. 31;
      PsaSigL4    at 16#120# range 0 .. 31;
      PsaSigH4    at 16#124# range 0 .. 31;
      CrcValL4    at 16#128# range 0 .. 31;
      CrcValH4    at 16#12C# range 0 .. 31;
      PsaSecSigL4 at 16#130# range 0 .. 31;
      PsaSecSigH4 at 16#134# range 0 .. 31;
      RawDataL4   at 16#138# range 0 .. 31;
      RawDataH4   at 16#13C# range 0 .. 31;
   end record;

   --  Cyclic Redundancy Check
   Crc1_Periph : aliased Crc_Peripheral
     with Import, Address => Crc1_Base;

   --  Cyclic Redundancy Check
   Crc2_Periph : aliased Crc_Peripheral
     with Import, Address => Crc2_Base;

end TMS570LC43xx.Crc;
