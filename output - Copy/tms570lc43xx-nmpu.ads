--  This spec has been automatically generated from hercules_nmpu_spec_1.0.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.NMPU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Enhanced Memory Protection Unit
   type NMPU_Peripheral is record
      --  MPU Revision ID Register
      MpuRev      : TMS570LC43xx.Word;
      --  MPU Lock Register
      MpuLock     : TMS570LC43xx.Word;
      --  MPU Diagnostic Control Register
      MpuDiagCtrl : TMS570LC43xx.Word;
      --  MPU Diagnostic Address Register
      MpuDiagAddr : TMS570LC43xx.Word;
      --  MPU Error Status Register
      MpuErrStat  : TMS570LC43xx.Word;
      --  MPU Error Address Register
      MpuErrAddr  : TMS570LC43xx.Word;
      --  MPU Input Address Mask Register
      MpuIAM      : TMS570LC43xx.Word;
      --  MPU General Purpose Control Register
      MpuGPCtrl   : TMS570LC43xx.Word;
      --  MPU Control Register1
      MpuCtrl1    : TMS570LC43xx.Word;
      --  MPU Control Register2
      MpuCtrl2    : TMS570LC43xx.Word;
      --  MPU Control Register3
      MpuCtrl3    : TMS570LC43xx.Word;
      --  MPU Type Register
      MpuType     : TMS570LC43xx.Word;
      --  MPU Region Base Address Register
      MpuRegBase  : TMS570LC43xx.Word;
      --  MPU Region Size and Enable Register
      MpuRegSEna  : TMS570LC43xx.Word;
      --  MPU Region Access Control Register
      MpuRegAcr   : TMS570LC43xx.Word;
      --  MPU Region Number Register
      MpuRegNum   : TMS570LC43xx.Word;
      --  MPU Region Address Mask Register
      MpuRegAM    : TMS570LC43xx.Word;
      --  MPU Region Translation Address Register
      MpuRegTA    : TMS570LC43xx.Word;
      --  MPU Region Mode Translation Register
      MpuRegMT    : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 11
      UerrAddr11  : TMS570LC43xx.Word;
   end record
     with Volatile;

   for NMPU_Peripheral use record
      MpuRev      at 16#0# range 0 .. 31;
      MpuLock     at 16#4# range 0 .. 31;
      MpuDiagCtrl at 16#8# range 0 .. 31;
      MpuDiagAddr at 16#C# range 0 .. 31;
      MpuErrStat  at 16#10# range 0 .. 31;
      MpuErrAddr  at 16#14# range 0 .. 31;
      MpuIAM      at 16#18# range 0 .. 31;
      MpuGPCtrl   at 16#1C# range 0 .. 31;
      MpuCtrl1    at 16#20# range 0 .. 31;
      MpuCtrl2    at 16#24# range 0 .. 31;
      MpuCtrl3    at 16#28# range 0 .. 31;
      MpuType     at 16#2C# range 0 .. 31;
      MpuRegBase  at 16#30# range 0 .. 31;
      MpuRegSEna  at 16#34# range 0 .. 31;
      MpuRegAcr   at 16#38# range 0 .. 31;
      MpuRegNum   at 16#3C# range 0 .. 31;
      MpuRegAM    at 16#40# range 0 .. 31;
      MpuRegTA    at 16#44# range 0 .. 31;
      MpuRegMT    at 16#48# range 0 .. 31;
      UerrAddr11  at 16#4C# range 0 .. 31;
   end record;

   --  Enhanced Memory Protection Unit
   Nmpu3_Periph : aliased NMPU_Peripheral
     with Import, Address => Nmpu3_Base;

   --  Enhanced Memory Protection Unit
   Nmpu1_Periph : aliased NMPU_Peripheral
     with Import, Address => Nmpu1_Base;

   --  Enhanced Memory Protection Unit
   Nmpu2_Periph : aliased NMPU_Peripheral
     with Import, Address => Nmpu2_Base;

end TMS570LC43xx.NMPU;
