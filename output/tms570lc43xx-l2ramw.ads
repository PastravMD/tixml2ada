--  This spec has been automatically generated from hercules_l2ramw_spec_1.4.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.L2ramw is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  L2 RAM Wrapper
   type L2ramw_Peripheral is record
      --  Ram Control Register
      RamCtrl        : TMS570LC43xx.Word;
      --  Ram Error Status Register
      RamErrStat     : TMS570LC43xx.Word;
      --  Diagnostic Data Vector Upper 32bits
      DiagDataVectH  : TMS570LC43xx.Word;
      --  Diagnostic Data Vector Lower 32bits
      DiagDataVectL  : TMS570LC43xx.Word;
      --  Diagnostic ECC Vector
      DiagEccVect    : TMS570LC43xx.Word;
      --  RAM Test Control register
      RamTest        : TMS570LC43xx.Word;
      --  RAM Address Decode Vector Test Register
      AddrVectTstReg : TMS570LC43xx.Word;
      --  Memory Initialization Domain Register
      MemInitDomain  : TMS570LC43xx.Word;
      --  Bank to Domain Mapping Register0
      BnkDmnMap0     : TMS570LC43xx.Word;
      --  Bank to Domain Mapping Register1
      BnkDmnMap1     : TMS570LC43xx.Word;
   end record
     with Volatile;

   for L2ramw_Peripheral use record
      RamCtrl        at 16#0# range 0 .. 31;
      RamErrStat     at 16#10# range 0 .. 31;
      DiagDataVectH  at 16#24# range 0 .. 31;
      DiagDataVectL  at 16#28# range 0 .. 31;
      DiagEccVect    at 16#2C# range 0 .. 31;
      RamTest        at 16#30# range 0 .. 31;
      AddrVectTstReg at 16#38# range 0 .. 31;
      MemInitDomain  at 16#3C# range 0 .. 31;
      BnkDmnMap0     at 16#44# range 0 .. 31;
      BnkDmnMap1     at 16#48# range 0 .. 31;
   end record;

   --  L2 RAM Wrapper
   L2ramw_Periph : aliased L2ramw_Peripheral
     with Import, Address => L2ramw_Base;

end TMS570LC43xx.L2ramw;
