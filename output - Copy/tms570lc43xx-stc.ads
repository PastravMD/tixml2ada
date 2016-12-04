--  This spec has been automatically generated from hercules_stc_spec_3.2.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Stc is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Self Test Controller
   type Stc_Peripheral is record
      --  Global Control Register 0
      GlbCtrl0        : TMS570LC43xx.Word;
      --  Global Control Register 1
      GlbCtrl1        : TMS570LC43xx.Word;
      --  Run TimeOut Counter Preload Register
      Tpr             : TMS570LC43xx.Word;
      --  Current ROM Address Register
      CAddr           : TMS570LC43xx.Word;
      --  Current Interval Count Register
      CICnt           : TMS570LC43xx.Word;
      --  SelfTest Global Status Register
      GStat           : TMS570LC43xx.Word;
      --  Fail Status Register
      FStat           : TMS570LC43xx.Word;
      --  Cpu1 Current Misr Register
      Cpu1CurMisr0    : TMS570LC43xx.Word;
      --  Cpu1 Current Misr Register
      Cpu1CurMisr1    : TMS570LC43xx.Word;
      --  Cpu1 Current Misr Register
      Cpu1CurMisr2    : TMS570LC43xx.Word;
      --  Cpu1 Current Misr Register
      Cpu1CurMisr3    : TMS570LC43xx.Word;
      --  Cpu2 Current Misr Register
      Cpu2CurMisr0    : TMS570LC43xx.Word;
      --  Cpu2 Current Misr Register
      Cpu2CurMisr1    : TMS570LC43xx.Word;
      --  Cpu2 Current Misr Register
      Cpu2CurMisr2    : TMS570LC43xx.Word;
      --  Cpu2 Current Misr Register
      Cpu2CurMisr3    : TMS570LC43xx.Word;
      --  Signature SelfCheck Register
      StcSelfCheckReg : TMS570LC43xx.Word;
      --  STC Current ROM Address Register - Core2
      StcCurAddr2     : TMS570LC43xx.Word;
      --  STC Clock Prescalar
      StcClkDiv       : TMS570LC43xx.Word;
      --  STC Segment Preload Register
      StcSegPlr       : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Stc_Peripheral use record
      GlbCtrl0        at 16#0# range 0 .. 31;
      GlbCtrl1        at 16#4# range 0 .. 31;
      Tpr             at 16#8# range 0 .. 31;
      CAddr           at 16#C# range 0 .. 31;
      CICnt           at 16#10# range 0 .. 31;
      GStat           at 16#14# range 0 .. 31;
      FStat           at 16#18# range 0 .. 31;
      Cpu1CurMisr0    at 16#1C# range 0 .. 31;
      Cpu1CurMisr1    at 16#20# range 0 .. 31;
      Cpu1CurMisr2    at 16#24# range 0 .. 31;
      Cpu1CurMisr3    at 16#28# range 0 .. 31;
      Cpu2CurMisr0    at 16#2C# range 0 .. 31;
      Cpu2CurMisr1    at 16#30# range 0 .. 31;
      Cpu2CurMisr2    at 16#34# range 0 .. 31;
      Cpu2CurMisr3    at 16#38# range 0 .. 31;
      StcSelfCheckReg at 16#3C# range 0 .. 31;
      StcCurAddr2     at 16#40# range 0 .. 31;
      StcClkDiv       at 16#44# range 0 .. 31;
      StcSegPlr       at 16#48# range 0 .. 31;
   end record;

   --  Self Test Controller
   Stc2_Periph : aliased Stc_Peripheral
     with Import, Address => Stc2_Base;

   --  Self Test Controller
   Stc1_Periph : aliased Stc_Peripheral
     with Import, Address => Stc1_Base;

end TMS570LC43xx.Stc;
