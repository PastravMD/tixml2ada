--  This spec has been automatically generated from hercules_pbist_spec_2.6.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Pbist is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  ProgRammable Built-In Self Test
   type Pbist_Peripheral is record
      --  Variable Address Register 0
      VarAddr0    : TMS570LC43xx.Word;
      --  Variable Address Register 1
      VarAddr1    : TMS570LC43xx.Word;
      --  Variable Address Register 2
      VarAddr2    : TMS570LC43xx.Word;
      --  Variable Address Register 3
      VarAddr3    : TMS570LC43xx.Word;
      --  Variable Loop Count Register 0
      VarLpCnt0   : TMS570LC43xx.Word;
      --  Variable Loop Count Register 1
      VarLpCnt1   : TMS570LC43xx.Word;
      --  Variable Loop Count Register 0
      VarLpCnt2   : TMS570LC43xx.Word;
      --  Variable Loop Count Register 1
      VarLpCnt3   : TMS570LC43xx.Word;
      --  DD0 Data Register
      DD0         : TMS570LC43xx.Word;
      --  DE0 Data Register
      DE0         : TMS570LC43xx.Word;
      --  Constant Address Register 0
      ConstAddr0  : TMS570LC43xx.Word;
      --  Constant Address Register 1
      ConstAddr1  : TMS570LC43xx.Word;
      --  Constant Address Register 2
      ConstAddr2  : TMS570LC43xx.Word;
      --  Constant Address Register 3
      ConstAddr3  : TMS570LC43xx.Word;
      --  Constant Loop Count Register 0
      ConstLpCnt0 : TMS570LC43xx.Word;
      --  Constant Loop Count Register 1
      ConstLpCnt1 : TMS570LC43xx.Word;
      --  Constant Loop Count Register 2
      ConstLpCnt2 : TMS570LC43xx.Word;
      --  Constant Loop Count Register 3
      ConstLpCnt3 : TMS570LC43xx.Word;
      --  Constant Increment Register 0
      ConstInc0   : TMS570LC43xx.Word;
      --  Constant Increment Register 1
      ConstInc1   : TMS570LC43xx.Word;
      --  Constant Increment Register 2
      ConstInc2   : TMS570LC43xx.Word;
      --  Constant Increment Register 3
      ConstInc3   : TMS570LC43xx.Word;
      --  Ram Configuration
      RamT        : TMS570LC43xx.Word;
      --  Datalogger
      Dlr         : TMS570LC43xx.Word;
      --  ConstLpCntock Mux Select
      Cms         : TMS570LC43xx.Word;
      --  ProgRam Control
      Str         : TMS570LC43xx.Word;
      --  Chip Select
      Csr         : TMS570LC43xx.Word;
      --  Fail Delay
      FDly        : TMS570LC43xx.Word;
      --  PBIST Activate ROM Clock Enable
      PAct        : TMS570LC43xx.Word;
      --  PBIST ID
      IdR         : TMS570LC43xx.Word;
      --  PBIST Override
      Over        : TMS570LC43xx.Word;
      --  Fail Status Fail - Port 0
      Fsfr0       : TMS570LC43xx.Word;
      --  Fail Status Fail - Port 1
      Fsfr1       : TMS570LC43xx.Word;
      --  Fail Status Count - Port 0
      Fsrc0       : TMS570LC43xx.Word;
      --  Fail Status Count - Port 1
      Fsrc1       : TMS570LC43xx.Word;
      --  Fail Status Address - Port 0
      Fsra0       : TMS570LC43xx.Word;
      --  Fail Status Address - Port 1
      Fsra1       : TMS570LC43xx.Word;
      --  Fail Status Data - Port 0
      Fsrdl0      : TMS570LC43xx.Word;
      --  Fail Status Data - Port 1
      Fsrdl1      : TMS570LC43xx.Word;
      --  ROM Mask
      Rom         : TMS570LC43xx.Word;
      --  ROM Algorithm Mask
      Algo        : TMS570LC43xx.Word;
      --  Ram Info Mask Lower
      RInfoL      : TMS570LC43xx.Word;
      --  Ram Info Mask Upper
      RInfoU      : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Pbist_Peripheral use record
      VarAddr0    at 16#100# range 0 .. 31;
      VarAddr1    at 16#104# range 0 .. 31;
      VarAddr2    at 16#108# range 0 .. 31;
      VarAddr3    at 16#10C# range 0 .. 31;
      VarLpCnt0   at 16#110# range 0 .. 31;
      VarLpCnt1   at 16#114# range 0 .. 31;
      VarLpCnt2   at 16#118# range 0 .. 31;
      VarLpCnt3   at 16#11C# range 0 .. 31;
      DD0         at 16#120# range 0 .. 31;
      DE0         at 16#124# range 0 .. 31;
      ConstAddr0  at 16#130# range 0 .. 31;
      ConstAddr1  at 16#134# range 0 .. 31;
      ConstAddr2  at 16#138# range 0 .. 31;
      ConstAddr3  at 16#13C# range 0 .. 31;
      ConstLpCnt0 at 16#140# range 0 .. 31;
      ConstLpCnt1 at 16#144# range 0 .. 31;
      ConstLpCnt2 at 16#148# range 0 .. 31;
      ConstLpCnt3 at 16#14C# range 0 .. 31;
      ConstInc0   at 16#150# range 0 .. 31;
      ConstInc1   at 16#154# range 0 .. 31;
      ConstInc2   at 16#158# range 0 .. 31;
      ConstInc3   at 16#15C# range 0 .. 31;
      RamT        at 16#160# range 0 .. 31;
      Dlr         at 16#164# range 0 .. 31;
      Cms         at 16#168# range 0 .. 31;
      Str         at 16#16C# range 0 .. 31;
      Csr         at 16#178# range 0 .. 31;
      FDly        at 16#17C# range 0 .. 31;
      PAct        at 16#180# range 0 .. 31;
      IdR         at 16#184# range 0 .. 31;
      Over        at 16#188# range 0 .. 31;
      Fsfr0       at 16#190# range 0 .. 31;
      Fsfr1       at 16#194# range 0 .. 31;
      Fsrc0       at 16#198# range 0 .. 31;
      Fsrc1       at 16#19C# range 0 .. 31;
      Fsra0       at 16#1A0# range 0 .. 31;
      Fsra1       at 16#1A4# range 0 .. 31;
      Fsrdl0      at 16#1A8# range 0 .. 31;
      Fsrdl1      at 16#1B0# range 0 .. 31;
      Rom         at 16#1C0# range 0 .. 31;
      Algo        at 16#1C4# range 0 .. 31;
      RInfoL      at 16#1C8# range 0 .. 31;
      RInfoU      at 16#1CC# range 0 .. 31;
   end record;

   --  ProgRammable Built-In Self Test
   Pbist_Periph : aliased Pbist_Peripheral
     with Import, Address => Pbist_Base;

end TMS570LC43xx.Pbist;
