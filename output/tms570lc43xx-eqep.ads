--  This spec has been automatically generated from hercules_eqep_type0_registers_be.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.EQEP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  eQEP Control and Status Registers
   type EQEP_Peripheral is record
      --  eQEP Position Counter
      QPOSCNT  : TMS570LC43xx.Word;
      --  eQEP Initialization Position Count
      QPOSINIT : TMS570LC43xx.Word;
      --  eQEP Maximum Position Count
      QPOSMAX  : TMS570LC43xx.Word;
      --  eQEP Position-compare
      QPOSCMP  : TMS570LC43xx.Word;
      --  eQEP Index Position Latch
      QPOSILAT : TMS570LC43xx.Word;
      --  eQEP Strobe Position Latch
      QPOSSLAT : TMS570LC43xx.Word;
      --  eQEP Position Latch
      QPOSLAT  : TMS570LC43xx.Word;
      --  eQEP Unit Timer
      QUTMR    : TMS570LC43xx.Word;
      --  eQEP Unit Period Register
      QUPRD    : TMS570LC43xx.Word;
      --  eQEP Watchdog Period Register
      QWDPRD   : TMS570LC43xx.Short;
      --  eQEP Watchdog Timer
      QWDTMR   : TMS570LC43xx.Short;
      --  eQEP Control Register
      QEPCTL   : TMS570LC43xx.Short;
      --  eQEP Decoder Control Register
      QDECCTL  : TMS570LC43xx.Short;
      --  eQEP Position-compare Control Register
      QPOSCTL  : TMS570LC43xx.Short;
      --  eQEP Capture Control Register
      QCAPCTL  : TMS570LC43xx.Short;
      --  eQEP Interrupt Flag Register
      QFLG     : TMS570LC43xx.Short;
      --  eQEP Interrupt Enable Register
      QEINT    : TMS570LC43xx.Short;
      --  eQEP Interrupt Force Register
      QFRC     : TMS570LC43xx.Short;
      --  eQEP Interrupt Clear Register
      QCLR     : TMS570LC43xx.Short;
      --  eQEP Capture Timer
      QCTMR    : TMS570LC43xx.Short;
      --  eQEP Status Register
      QEPSTS   : TMS570LC43xx.Short;
      --  eQEP Capture Timer Latch
      QCTMRLAT : TMS570LC43xx.Short;
      --  eQEP Capture Period Register
      QCPRD    : TMS570LC43xx.Short;
      --  RESERVED
      RESERVED : TMS570LC43xx.Short;
      --  eQEP Capture Period Latch
      QCPRDLAT : TMS570LC43xx.Short;
   end record
     with Volatile;

   for EQEP_Peripheral use record
      QPOSCNT  at 16#0# range 0 .. 31;
      QPOSINIT at 16#4# range 0 .. 31;
      QPOSMAX  at 16#8# range 0 .. 31;
      QPOSCMP  at 16#C# range 0 .. 31;
      QPOSILAT at 16#10# range 0 .. 31;
      QPOSSLAT at 16#14# range 0 .. 31;
      QPOSLAT  at 16#18# range 0 .. 31;
      QUTMR    at 16#1C# range 0 .. 31;
      QUPRD    at 16#20# range 0 .. 31;
      QWDPRD   at 16#24# range 0 .. 15;
      QWDTMR   at 16#26# range 0 .. 15;
      QEPCTL   at 16#28# range 0 .. 15;
      QDECCTL  at 16#2A# range 0 .. 15;
      QPOSCTL  at 16#2C# range 0 .. 15;
      QCAPCTL  at 16#2E# range 0 .. 15;
      QFLG     at 16#30# range 0 .. 15;
      QEINT    at 16#32# range 0 .. 15;
      QFRC     at 16#34# range 0 .. 15;
      QCLR     at 16#36# range 0 .. 15;
      QCTMR    at 16#38# range 0 .. 15;
      QEPSTS   at 16#3A# range 0 .. 15;
      QCTMRLAT at 16#3C# range 0 .. 15;
      QCPRD    at 16#3E# range 0 .. 15;
      RESERVED at 16#40# range 0 .. 15;
      QCPRDLAT at 16#42# range 0 .. 15;
   end record;

   --  eQEP Control and Status Registers
   eQEP1_Periph : aliased EQEP_Peripheral
     with Import, Address => eQEP1_Base;

   --  eQEP Control and Status Registers
   eQEP2_Periph : aliased EQEP_Peripheral
     with Import, Address => eQEP2_Base;

end TMS570LC43xx.EQEP;
