--  This spec has been automatically generated from hercules_ccmr5_spec_0.6.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.CcmR5 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  CPU Compare Module for Cortex-R5
   type CcmR5_Peripheral is record
      --  CCMR5 Status Register1
      CcmSr1      : TMS570LC43xx.Word;
      --  CCMR5 Key Register1
      CcmKeyR1    : TMS570LC43xx.Word;
      --  CCMR5 Status Register2
      CcmSr2      : TMS570LC43xx.Word;
      --  CCMR5 Key Register2
      CcmKeyR2    : TMS570LC43xx.Word;
      --  CCMR5 Status Register3
      CcmSr3      : TMS570LC43xx.Word;
      --  CCMR5 Key Register3
      CcmKeyR3    : TMS570LC43xx.Word;
      --  CCMR5 Polarity Control Register
      CcmPolCntrl : TMS570LC43xx.Word;
      --  CCMR5 Status Register4
      CcmSr4      : TMS570LC43xx.Word;
      --  CCMR5 Key Register4
      CcmKeyR4    : TMS570LC43xx.Word;
      --  CCMR5 Power Domain Status Register0
      CcmPDStat0  : TMS570LC43xx.Word;
      --  CCMR5 Power Domain Status Register1
      CcmPDStat1  : TMS570LC43xx.Word;
   end record
     with Volatile;

   for CcmR5_Peripheral use record
      CcmSr1      at 16#0# range 0 .. 31;
      CcmKeyR1    at 16#4# range 0 .. 31;
      CcmSr2      at 16#8# range 0 .. 31;
      CcmKeyR2    at 16#C# range 0 .. 31;
      CcmSr3      at 16#10# range 0 .. 31;
      CcmKeyR3    at 16#14# range 0 .. 31;
      CcmPolCntrl at 16#18# range 0 .. 31;
      CcmSr4      at 16#1C# range 0 .. 31;
      CcmKeyR4    at 16#20# range 0 .. 31;
      CcmPDStat0  at 16#24# range 0 .. 31;
      CcmPDStat1  at 16#28# range 0 .. 31;
   end record;

   --  CPU Compare Module for Cortex-R5
   CcmR5_Periph : aliased CcmR5_Peripheral
     with Import, Address => CcmR5_Base;

end TMS570LC43xx.CcmR5;
