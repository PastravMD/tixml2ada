--  This spec has been automatically generated from hercules_dcc_spec_2.4.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.DCC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Dual Clock Comparator
   type DCC_Peripheral is record
      --  Global Control Register
      GCtrl      : TMS570LC43xx.Word;
      --  Revision ID
      Rev        : TMS570LC43xx.Word;
      --  Count0 Seed Value
      CntSeed0   : TMS570LC43xx.Word;
      --  Valid0 Seed Value
      ValidSeed0 : TMS570LC43xx.Word;
      --  Count1 Seed Value
      CntSeed1   : TMS570LC43xx.Word;
      --  Status Register
      Stat       : TMS570LC43xx.Word;
      --  Count0 Value Register
      Cnt0       : TMS570LC43xx.Word;
      --  Valid0 Value Register
      Valid0     : TMS570LC43xx.Word;
      --  Count1 Value Register
      Cnt1       : TMS570LC43xx.Word;
      --  Clock Source Selection Register 1
      ClkSrc1    : TMS570LC43xx.Word;
      --  Clock Source Selection Register 0
      ClkSrc0    : TMS570LC43xx.Word;
   end record
     with Volatile;

   for DCC_Peripheral use record
      GCtrl      at 16#0# range 0 .. 31;
      Rev        at 16#4# range 0 .. 31;
      CntSeed0   at 16#8# range 0 .. 31;
      ValidSeed0 at 16#C# range 0 .. 31;
      CntSeed1   at 16#10# range 0 .. 31;
      Stat       at 16#14# range 0 .. 31;
      Cnt0       at 16#18# range 0 .. 31;
      Valid0     at 16#1C# range 0 .. 31;
      Cnt1       at 16#20# range 0 .. 31;
      ClkSrc1    at 16#24# range 0 .. 31;
      ClkSrc0    at 16#28# range 0 .. 31;
   end record;

   --  Dual Clock Comparator
   Dcc1_Periph : aliased DCC_Peripheral
     with Import, Address => Dcc1_Base;

   --  Dual Clock Comparator
   Dcc2_Periph : aliased DCC_Peripheral
     with Import, Address => Dcc2_Base;

end TMS570LC43xx.DCC;
