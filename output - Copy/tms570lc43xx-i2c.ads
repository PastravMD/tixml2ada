--  This spec has been automatically generated from hercules_i2c_spec_2.6.2.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.I2C is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  I2C Module
   type I2C_Peripheral is record
      --  I2C Own Address Manager
      I2COAR   : TMS570LC43xx.Word;
      --  I2C Interrupt Mask Register
      I2CIMR   : TMS570LC43xx.Word;
      --  I2C Status Register
      I2CSTR   : TMS570LC43xx.Word;
      --  I2C Clock Divider Low Register
      I2CCKL   : TMS570LC43xx.Word;
      --  I2C Clock Control High Register
      I2CCKH   : TMS570LC43xx.Word;
      --  I2C Data Count Register
      I2CCNT   : TMS570LC43xx.Word;
      --  I2C Data Receive Register
      I2CDRR   : TMS570LC43xx.Word;
      --  I2C Slave Address Register
      I2CSAR   : TMS570LC43xx.Word;
      --  I2C Data Transmit Register
      I2CDXR   : TMS570LC43xx.Word;
      --  I2C Mode Register
      I2CMDR   : TMS570LC43xx.Word;
      --  I2C Interrupt Vector Register
      I2CIVR   : TMS570LC43xx.Word;
      --  I2C Extended Mode Register
      I2CEMDR  : TMS570LC43xx.Word;
      --  I2C Prescale Register
      I2CPSC   : TMS570LC43xx.Word;
      --  I2C Peripheral ID Register 1
      I2CPID1  : TMS570LC43xx.Word;
      --  I2C Peripheral ID Register 2
      I2CPID2  : TMS570LC43xx.Word;
      --  I2C DMA Control Register
      I2CDMACR : TMS570LC43xx.Word;
      --  I2C Pin Function Register
      I2CPFNC  : TMS570LC43xx.Word;
      --  I2C Pin Direction Register
      I2CPDIR  : TMS570LC43xx.Word;
      --  I2C Data Input Register
      I2CDIN   : TMS570LC43xx.Word;
      --  I2C Data Output Register
      I2CDOUT  : TMS570LC43xx.Word;
      --  I2C Data Set Register
      I2CDSET  : TMS570LC43xx.Word;
      --  I2C Data Clear Register
      I2CDCLR  : TMS570LC43xx.Word;
      --  I2C Pin Open Drain Register
      I2CPDR   : TMS570LC43xx.Word;
      --  I2C Pull Disable Register
      I2CPDIS  : TMS570LC43xx.Word;
      --  I2C Pull Select Register
      I2CPSEL  : TMS570LC43xx.Word;
      --  I2C Pins Slew Rate Select Register
      I2CSRS   : TMS570LC43xx.Word;
   end record
     with Volatile;

   for I2C_Peripheral use record
      I2COAR   at 16#0# range 0 .. 31;
      I2CIMR   at 16#4# range 0 .. 31;
      I2CSTR   at 16#8# range 0 .. 31;
      I2CCKL   at 16#C# range 0 .. 31;
      I2CCKH   at 16#10# range 0 .. 31;
      I2CCNT   at 16#14# range 0 .. 31;
      I2CDRR   at 16#18# range 0 .. 31;
      I2CSAR   at 16#1C# range 0 .. 31;
      I2CDXR   at 16#20# range 0 .. 31;
      I2CMDR   at 16#24# range 0 .. 31;
      I2CIVR   at 16#28# range 0 .. 31;
      I2CEMDR  at 16#2C# range 0 .. 31;
      I2CPSC   at 16#30# range 0 .. 31;
      I2CPID1  at 16#34# range 0 .. 31;
      I2CPID2  at 16#38# range 0 .. 31;
      I2CDMACR at 16#3C# range 0 .. 31;
      I2CPFNC  at 16#48# range 0 .. 31;
      I2CPDIR  at 16#4C# range 0 .. 31;
      I2CDIN   at 16#50# range 0 .. 31;
      I2CDOUT  at 16#54# range 0 .. 31;
      I2CDSET  at 16#58# range 0 .. 31;
      I2CDCLR  at 16#5C# range 0 .. 31;
      I2CPDR   at 16#60# range 0 .. 31;
      I2CPDIS  at 16#64# range 0 .. 31;
      I2CPSEL  at 16#68# range 0 .. 31;
      I2CSRS   at 16#6C# range 0 .. 31;
   end record;

   --  I2C Module
   I2C1_Periph : aliased I2C_Peripheral
     with Import, Address => I2C1_Base;

   --  I2C Module
   I2C2_Periph : aliased I2C_Peripheral
     with Import, Address => I2C2_Base;

end TMS570LC43xx.I2C;
