--  This spec has been automatically generated from hercules_nhet_spec_1.3.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.NHET is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Platform High End Timer
   type NHET_Peripheral is record
      --  global control register
      GlbCtrl   : TMS570LC43xx.Word;
      --  prescaler factor register
      Pfr       : TMS570LC43xx.Word;
      --  Current Address Register
      Addr      : TMS570LC43xx.Word;
      --  Offset Level 1 Register
      Offst1    : TMS570LC43xx.Word;
      --  Offset Level 2 Register
      Offst2    : TMS570LC43xx.Word;
      --  Interrupt Enable Set Register
      IntEnaSet : TMS570LC43xx.Word;
      --  Interrupt Enable Clear Register
      IntEnaClr : TMS570LC43xx.Word;
      --  Exception Control Register 1
      Exc1      : TMS570LC43xx.Word;
      --  Exception Control Register 2
      Exc2      : TMS570LC43xx.Word;
      --  Interrupt Priority Register
      IntPrio   : TMS570LC43xx.Word;
      --  Interrupt Flag Register
      IntFlg    : TMS570LC43xx.Word;
      --  HR Share Control Register
      HrSh      : TMS570LC43xx.Word;
      --  HR Xor control register
      Xor_k     : TMS570LC43xx.Word;
      --  Request Enable Set Register
      ReqEnaSet : TMS570LC43xx.Word;
      --  Request Enable Clear Register
      ReqEnaClr : TMS570LC43xx.Word;
      --  Request Destination Select Register
      ReqDst    : TMS570LC43xx.Word;
      --  Direction Register
      Dir       : TMS570LC43xx.Word;
      --  Input Data Register
      DIn       : TMS570LC43xx.Word;
      --  Output Data Register
      DOut      : TMS570LC43xx.Word;
      --  Set Data Register
      DSet      : TMS570LC43xx.Word;
      --  Clear Data Register
      DClr      : TMS570LC43xx.Word;
      --  Open Drain Register
      PDr       : TMS570LC43xx.Word;
      --  Pull Disable Register
      PDis      : TMS570LC43xx.Word;
      --  Pull Select Register
      PSel      : TMS570LC43xx.Word;
      --  Parity Control Register
      ParCtrl   : TMS570LC43xx.Word;
      --  Parity Address Register
      ParAddr   : TMS570LC43xx.Word;
      --  Parity Pin Register
      ParPinReg : TMS570LC43xx.Word;
      --  Suppresion Filter Preload Register
      SfPrld    : TMS570LC43xx.Word;
      --  Suppresion Filter Enable Register
      SfEna     : TMS570LC43xx.Word;
      --  Loop Back Pair Select Register
      LbPairSel : TMS570LC43xx.Word;
      --  Loop Back Pair Direction Register
      LbPairDir : TMS570LC43xx.Word;
      --  Pin Disable Register
      PinDis    : TMS570LC43xx.Word;
      --  HWAG Pin Select Register
      HWAPinSel : TMS570LC43xx.Word;
      --  HWAG Control Register 0
      HWAGCR0   : TMS570LC43xx.Word;
      --  HWAG Control Register 1
      HWAGCR1   : TMS570LC43xx.Word;
      --  HWAG Control Register 2
      HWAGCR2   : TMS570LC43xx.Word;
      --  HWAG Interrupt Enable Set Register
      HWAENASET : TMS570LC43xx.Word;
      --  HWAG Interrupt Enable Clear Register
      HWAENACLR : TMS570LC43xx.Word;
      --  HWAG Interrupt Priority Set Register
      HWALVLSET : TMS570LC43xx.Word;
      --  HWAG Interrupt Priority Clear Register
      HWALVLCLR : TMS570LC43xx.Word;
      --  HWAG Interrupt Flags Register
      HWAFLG    : TMS570LC43xx.Word;
      --  HWAG Interrupt Offset Register 1, HWAG Low Priority Interrupt Offset
      HWAOFF0   : TMS570LC43xx.Word;
      --  HWAG Interrupt Offset Register 2, HWAG High Priority Interrupt Offset
      HWAOFF1   : TMS570LC43xx.Word;
      --  HWAG ACNT Register, HWAG Angle Value
      HWAACNT   : TMS570LC43xx.Word;
      --  HWAG PCNT (n-1) Register, HWAG Previous Tooth Period
      HWAPCNT1  : TMS570LC43xx.Word;
      --  HWAG PCNT (n) Register, HWAG Current Tooth Period
      HWAPCNT   : TMS570LC43xx.Word;
      --  HWAG Step Register
      HWASTWD   : TMS570LC43xx.Word;
      --  HWAG Teeth Number Register
      HWATHNB   : TMS570LC43xx.Word;
      --  HHWAG Current Teeth Number Register
      HWATHVL   : TMS570LC43xx.Word;
      --  HWAG Filter Register, HWAG Tick Counter Compare Value
      HWAFIL    : TMS570LC43xx.Word;
      --  HWAG Filter Register 2, HWAG Tick Counter Compare Value During
      --  Singularity Tooth
      HWAFIL2   : TMS570LC43xx.Word;
      --  HWAG Angle Increment Register
      HWAANGI   : TMS570LC43xx.Word;
   end record
     with Volatile;

   for NHET_Peripheral use record
      GlbCtrl   at 16#0# range 0 .. 31;
      Pfr       at 16#4# range 0 .. 31;
      Addr      at 16#8# range 0 .. 31;
      Offst1    at 16#C# range 0 .. 31;
      Offst2    at 16#10# range 0 .. 31;
      IntEnaSet at 16#14# range 0 .. 31;
      IntEnaClr at 16#18# range 0 .. 31;
      Exc1      at 16#1C# range 0 .. 31;
      Exc2      at 16#20# range 0 .. 31;
      IntPrio   at 16#24# range 0 .. 31;
      IntFlg    at 16#28# range 0 .. 31;
      HrSh      at 16#34# range 0 .. 31;
      Xor_k     at 16#38# range 0 .. 31;
      ReqEnaSet at 16#3C# range 0 .. 31;
      ReqEnaClr at 16#40# range 0 .. 31;
      ReqDst    at 16#44# range 0 .. 31;
      Dir       at 16#4C# range 0 .. 31;
      DIn       at 16#50# range 0 .. 31;
      DOut      at 16#54# range 0 .. 31;
      DSet      at 16#58# range 0 .. 31;
      DClr      at 16#5C# range 0 .. 31;
      PDr       at 16#60# range 0 .. 31;
      PDis      at 16#64# range 0 .. 31;
      PSel      at 16#68# range 0 .. 31;
      ParCtrl   at 16#74# range 0 .. 31;
      ParAddr   at 16#78# range 0 .. 31;
      ParPinReg at 16#7C# range 0 .. 31;
      SfPrld    at 16#80# range 0 .. 31;
      SfEna     at 16#84# range 0 .. 31;
      LbPairSel at 16#8C# range 0 .. 31;
      LbPairDir at 16#90# range 0 .. 31;
      PinDis    at 16#94# range 0 .. 31;
      HWAPinSel at 16#9C# range 0 .. 31;
      HWAGCR0   at 16#A0# range 0 .. 31;
      HWAGCR1   at 16#A4# range 0 .. 31;
      HWAGCR2   at 16#A8# range 0 .. 31;
      HWAENASET at 16#AC# range 0 .. 31;
      HWAENACLR at 16#B0# range 0 .. 31;
      HWALVLSET at 16#B4# range 0 .. 31;
      HWALVLCLR at 16#B8# range 0 .. 31;
      HWAFLG    at 16#BC# range 0 .. 31;
      HWAOFF0   at 16#C0# range 0 .. 31;
      HWAOFF1   at 16#C4# range 0 .. 31;
      HWAACNT   at 16#C8# range 0 .. 31;
      HWAPCNT1  at 16#CC# range 0 .. 31;
      HWAPCNT   at 16#D0# range 0 .. 31;
      HWASTWD   at 16#D4# range 0 .. 31;
      HWATHNB   at 16#D8# range 0 .. 31;
      HWATHVL   at 16#DC# range 0 .. 31;
      HWAFIL    at 16#E0# range 0 .. 31;
      HWAFIL2   at 16#E8# range 0 .. 31;
      HWAANGI   at 16#F0# range 0 .. 31;
   end record;

   --  Platform High End Timer
   Nhet1_Periph : aliased NHET_Peripheral
     with Import, Address => Nhet1_Base;

   --  Platform High End Timer
   Nhet2_Periph : aliased NHET_Peripheral
     with Import, Address => Nhet2_Base;

end TMS570LC43xx.NHET;
