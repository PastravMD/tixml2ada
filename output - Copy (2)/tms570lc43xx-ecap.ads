--  This spec has been automatically generated from hercules_eCAP_Type0_Registers_be.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.ECAP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  eCAP Control and Status Registers
   type ECAP_Peripheral is record
      --  eCAP Time-Stamp Counter
      TSCTR  : TMS570LC43xx.Word;
      --  eCAP Counter Phase Offset Value Register
      CTRPHS : TMS570LC43xx.Word;
      --  eCAP Capture 1 Register
      CAP1   : TMS570LC43xx.Word;
      --  eCAP Capture 2 Register
      CAP2   : TMS570LC43xx.Word;
      --  eCAP Capture 3 Register
      CAP3   : TMS570LC43xx.Word;
      --  eCAP Capture 4 Register
      CAP4   : TMS570LC43xx.Word;
      --  eCAP Capture Control Register 2
      ECCTL2 : TMS570LC43xx.Short;
      --  eCAP Capture Control Register 1
      ECCTL1 : TMS570LC43xx.Short;
      --  eCAP Capture Interrupt Flag Register
      ECFLG  : TMS570LC43xx.Short;
      --  eCAP Capture Interrupt Enable Register
      ECEINT : TMS570LC43xx.Short;
      --  eCAP Capture Interrupt Force Register
      ECFRC  : TMS570LC43xx.Short;
      --  eCAP Capture Interrupt Clear Register
      ECCLR  : TMS570LC43xx.Short;
   end record
     with Volatile;

   for ECAP_Peripheral use record
      TSCTR  at 16#0# range 0 .. 31;
      CTRPHS at 16#4# range 0 .. 31;
      CAP1   at 16#8# range 0 .. 31;
      CAP2   at 16#C# range 0 .. 31;
      CAP3   at 16#10# range 0 .. 31;
      CAP4   at 16#14# range 0 .. 31;
      ECCTL2 at 16#28# range 0 .. 15;
      ECCTL1 at 16#2A# range 0 .. 15;
      ECFLG  at 16#2C# range 0 .. 15;
      ECEINT at 16#2E# range 0 .. 15;
      ECFRC  at 16#30# range 0 .. 15;
      ECCLR  at 16#32# range 0 .. 15;
   end record;

   --  eCAP Control and Status Registers
   eCAP1_Periph : aliased ECAP_Peripheral
     with Import, Address => eCAP1_Base;

   --  eCAP Control and Status Registers
   eCAP2_Periph : aliased ECAP_Peripheral
     with Import, Address => eCAP2_Base;

   --  eCAP Control and Status Registers
   eCAP3_Periph : aliased ECAP_Peripheral
     with Import, Address => eCAP3_Base;

   --  eCAP Control and Status Registers
   eCAP4_Periph : aliased ECAP_Peripheral
     with Import, Address => eCAP4_Base;

   --  eCAP Control and Status Registers
   eCAP5_Periph : aliased ECAP_Peripheral
     with Import, Address => eCAP5_Base;

   --  eCAP Control and Status Registers
   eCAP6_Periph : aliased ECAP_Peripheral
     with Import, Address => eCAP6_Base;

end TMS570LC43xx.ECAP;
