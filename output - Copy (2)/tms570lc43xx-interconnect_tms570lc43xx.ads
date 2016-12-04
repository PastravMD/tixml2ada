--  This spec has been automatically generated from hercules_interconnect_tms570lc43xx.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.interconnect_tms570lc43xx is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  CPU Subsystem Interconnect for Conqueror device
   type Interconnect_Peripheral is record
      --  Interconnect selftest status register
      StcStat         : TMS570LC43xx.Word;
      --  Interconnect selftest control register
      StcCtrl         : TMS570LC43xx.Word;
      --  Parity Error Status
      ParityErrStat   : TMS570LC43xx.Word;
      --  Transaction Error Status
      TransErrStat    : TMS570LC43xx.Word;
      --  Transaction ID Error Status
      TransIdErrStat  : TMS570LC43xx.Word;
      --  Transaction Signature Error Status
      TransSigErrStat : TMS570LC43xx.Word;
      --  Transaction Type Error Status
      TransTypErrStat : TMS570LC43xx.Word;
      --  Error User Parity
      ErrUserParity   : TMS570LC43xx.Word;
      --  MasterID mistmatch status register
      SerrUnexpMid    : TMS570LC43xx.Word;
      --  Address mismatch status register
      SerrAddrDecode  : TMS570LC43xx.Word;
      --  Parity on address status register
      SerrUserParity  : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Interconnect_Peripheral use record
      StcStat         at 16#0# range 0 .. 31;
      StcCtrl         at 16#4# range 0 .. 31;
      ParityErrStat   at 16#8# range 0 .. 31;
      TransErrStat    at 16#C# range 0 .. 31;
      TransIdErrStat  at 16#10# range 0 .. 31;
      TransSigErrStat at 16#14# range 0 .. 31;
      TransTypErrStat at 16#18# range 0 .. 31;
      ErrUserParity   at 16#1C# range 0 .. 31;
      SerrUnexpMid    at 16#20# range 0 .. 31;
      SerrAddrDecode  at 16#24# range 0 .. 31;
      SerrUserParity  at 16#28# range 0 .. 31;
   end record;

   --  CPU Subsystem Interconnect for Conqueror device
   Interconnect_Periph : aliased Interconnect_Peripheral
     with Import, Address => Interconnect_Base;

end TMS570LC43xx.interconnect_tms570lc43xx;
