--  This spec has been automatically generated from hercules_esm_spec_1.2.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Esm is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Error Signaling Module
   type Esm_Peripheral is record
      --  Influence Error Pin Set/Status Register 1
      IflErrPinSet1  : TMS570LC43xx.Word;
      --  Influence Error Pin Clear/Status Register 1
      IflErrPinClr1  : TMS570LC43xx.Word;
      --  Interrupt Enable Set/Status Register 1
      IntEnaSet1     : TMS570LC43xx.Word;
      --  Interrupt Enable Clear/Status Register 1
      IntEnaClr1     : TMS570LC43xx.Word;
      --  Interrupt Level Set/Status Register 1
      IntLvlSet1     : TMS570LC43xx.Word;
      --  Interrupt Level Clear/Status Register 1
      IntLvlClr1     : TMS570LC43xx.Word;
      --  Status Register 1
      Stat1          : TMS570LC43xx.Word;
      --  Status Register 2
      Stat2          : TMS570LC43xx.Word;
      --  Status Register 3
      Stat3          : TMS570LC43xx.Word;
      --  Error Pin Status Register
      ErrPinStat     : TMS570LC43xx.Word;
      --  Interrupt Offset High Register
      IntOffstHgh    : TMS570LC43xx.Word;
      --  Interrupt Offset Low Register
      IntOffstLow    : TMS570LC43xx.Word;
      --  Low-Time Counter Register
      LtCnt          : TMS570LC43xx.Word;
      --  Low-Time Counter Preload Register
      LtCntPre       : TMS570LC43xx.Word;
      --  Error Key Register
      ErrKey         : TMS570LC43xx.Word;
      --  Status Shadow Register
      ShdwStat2      : TMS570LC43xx.Word;
      --  Influence Error Pin Set/Status Register 4
      IflErrPinSet4  : TMS570LC43xx.Word;
      --  Influence Error Pin Clear/Status Register 4
      IflErrPinClr4  : TMS570LC43xx.Word;
      --  Interrupt Enable Set/Status Register 4
      IntEnaSet4     : TMS570LC43xx.Word;
      --  Interrupt Enable Clear/Status Register 4
      IntEnaClr4     : TMS570LC43xx.Word;
      --  Interrupt Level Set/Status Register 4
      IntLvlSet4     : TMS570LC43xx.Word;
      --  Interrupt Level Clear/Status Register 4
      IntLvlClr4     : TMS570LC43xx.Word;
      --  Status Register 4
      Stat4          : TMS570LC43xx.Word;
      --  Status Register 5
      Stat5          : TMS570LC43xx.Word;
      --  Status Register 6
      Stat6          : TMS570LC43xx.Word;
      --  Status Shadow Register5
      ShdwStat5      : TMS570LC43xx.Word;
      --  Influence Error Pin Set/Status Register 7
      IflErrPinSet7  : TMS570LC43xx.Word;
      --  Influence Error Pin Clear/Status Register 7
      IflErrPinClr7  : TMS570LC43xx.Word;
      --  Interrupt Enable Set/Status Register 7
      IntEnaSet7     : TMS570LC43xx.Word;
      --  Interrupt Enable Clear/Status Register 7
      IntEnaClr7     : TMS570LC43xx.Word;
      --  Interrupt Level Set/Status Register 7
      IntLvlSet7     : TMS570LC43xx.Word;
      --  Interrupt Level Clear/Status Register 7
      IntLvlClr7     : TMS570LC43xx.Word;
      --  Status Register 7
      Stat7          : TMS570LC43xx.Word;
      --  Status Register 8
      Stat8          : TMS570LC43xx.Word;
      --  Status Register 9
      Stat9          : TMS570LC43xx.Word;
      --  Status Shadow Register8
      ShdwStat8      : TMS570LC43xx.Word;
      --  Influence Error Pin Set/Status Register 10
      IflErrPinSet10 : TMS570LC43xx.Word;
      --  Influence Error Pin Clear/Status Register 10
      IflErrPinClr10 : TMS570LC43xx.Word;
      --  Interrupt Enable Set/Status Register 10
      IntEnaSet10    : TMS570LC43xx.Word;
      --  Interrupt Enable Clear/Status Register 10
      IntEnaClr10    : TMS570LC43xx.Word;
      --  Interrupt Level Set/Status Register 10
      IntLvlSet10    : TMS570LC43xx.Word;
      --  Interrupt Level Clear/Status Register 10
      IntLvlClr10    : TMS570LC43xx.Word;
      --  Status Register 10
      Stat10         : TMS570LC43xx.Word;
      --  Status Register 11
      Stat11         : TMS570LC43xx.Word;
      --  Status Register 12
      Stat12         : TMS570LC43xx.Word;
      --  Status Shadow Register11
      ShdwStat11     : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Esm_Peripheral use record
      IflErrPinSet1  at 16#0# range 0 .. 31;
      IflErrPinClr1  at 16#4# range 0 .. 31;
      IntEnaSet1     at 16#8# range 0 .. 31;
      IntEnaClr1     at 16#C# range 0 .. 31;
      IntLvlSet1     at 16#10# range 0 .. 31;
      IntLvlClr1     at 16#14# range 0 .. 31;
      Stat1          at 16#18# range 0 .. 31;
      Stat2          at 16#1C# range 0 .. 31;
      Stat3          at 16#20# range 0 .. 31;
      ErrPinStat     at 16#24# range 0 .. 31;
      IntOffstHgh    at 16#28# range 0 .. 31;
      IntOffstLow    at 16#2C# range 0 .. 31;
      LtCnt          at 16#30# range 0 .. 31;
      LtCntPre       at 16#34# range 0 .. 31;
      ErrKey         at 16#38# range 0 .. 31;
      ShdwStat2      at 16#3C# range 0 .. 31;
      IflErrPinSet4  at 16#40# range 0 .. 31;
      IflErrPinClr4  at 16#44# range 0 .. 31;
      IntEnaSet4     at 16#48# range 0 .. 31;
      IntEnaClr4     at 16#4C# range 0 .. 31;
      IntLvlSet4     at 16#50# range 0 .. 31;
      IntLvlClr4     at 16#54# range 0 .. 31;
      Stat4          at 16#58# range 0 .. 31;
      Stat5          at 16#5C# range 0 .. 31;
      Stat6          at 16#60# range 0 .. 31;
      ShdwStat5      at 16#64# range 0 .. 31;
      IflErrPinSet7  at 16#80# range 0 .. 31;
      IflErrPinClr7  at 16#84# range 0 .. 31;
      IntEnaSet7     at 16#88# range 0 .. 31;
      IntEnaClr7     at 16#8C# range 0 .. 31;
      IntLvlSet7     at 16#90# range 0 .. 31;
      IntLvlClr7     at 16#94# range 0 .. 31;
      Stat7          at 16#98# range 0 .. 31;
      Stat8          at 16#9C# range 0 .. 31;
      Stat9          at 16#A0# range 0 .. 31;
      ShdwStat8      at 16#A4# range 0 .. 31;
      IflErrPinSet10 at 16#C0# range 0 .. 31;
      IflErrPinClr10 at 16#C4# range 0 .. 31;
      IntEnaSet10    at 16#C8# range 0 .. 31;
      IntEnaClr10    at 16#CC# range 0 .. 31;
      IntLvlSet10    at 16#D0# range 0 .. 31;
      IntLvlClr10    at 16#D4# range 0 .. 31;
      Stat10         at 16#D8# range 0 .. 31;
      Stat11         at 16#DC# range 0 .. 31;
      Stat12         at 16#E0# range 0 .. 31;
      ShdwStat11     at 16#E4# range 0 .. 31;
   end record;

   --  Error Signaling Module
   Esm2_Periph : aliased Esm_Peripheral
     with Import, Address => Esm2_Base;

   --  Error Signaling Module
   Esm1_Periph : aliased Esm_Peripheral
     with Import, Address => Esm1_Base;

end TMS570LC43xx.Esm;
