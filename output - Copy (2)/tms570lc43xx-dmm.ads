--  This spec has been automatically generated from hercules_dmm_spec_1.5.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Dmm is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Data Modification Module
   type Dmm_Peripheral is record
      --  Global Control Register
      GlbCtrl    : TMS570LC43xx.Word;
      --  Interrupt Set Register
      IntSet     : TMS570LC43xx.Word;
      --  Interrupt Clear Register
      IntClr     : TMS570LC43xx.Word;
      --  Interrupt Level Register
      IntLvl     : TMS570LC43xx.Word;
      --  Interrupt Flag Register
      IntFlg     : TMS570LC43xx.Word;
      --  Interrupt Offset 1 Register
      IntOffst1  : TMS570LC43xx.Word;
      --  Interrupt Offset 2 Register
      IntOffst2  : TMS570LC43xx.Word;
      --  Direct Data Mode Destination Register
      DdmDst     : TMS570LC43xx.Word;
      --  Direct Data Mode Blocksize Register
      DdmBlkSz   : TMS570LC43xx.Word;
      --  Direct Data Mode Pointer Register
      DdmPtr     : TMS570LC43xx.Word;
      --  Direct Data Mode Interrupt Pointer Register
      DdmIntPtr  : TMS570LC43xx.Word;
      --  Destination 0 Region 1
      Dst0Rgn1   : TMS570LC43xx.Word;
      --  Destination 0 Blocksize 1
      Dst0BlkSz1 : TMS570LC43xx.Word;
      --  Destination 0 Region 2
      Dst0Rgn2   : TMS570LC43xx.Word;
      --  Destination 0 Blocksize 2
      Dst0BlkSz2 : TMS570LC43xx.Word;
      --  Destination 1 Region 1
      Dst1Rgn1   : TMS570LC43xx.Word;
      --  Destination 1 Blocksize 1
      Dst1BlkSz1 : TMS570LC43xx.Word;
      --  Destination 1 Region 2
      Dst1Rgn2   : TMS570LC43xx.Word;
      --  Destination 1 Blocksize 2
      Dst1BlkSz2 : TMS570LC43xx.Word;
      --  Destination 2 Region 1
      Dst2Rgn1   : TMS570LC43xx.Word;
      --  Destination 2 Blocksize 1
      Dst2BlkSz1 : TMS570LC43xx.Word;
      --  Destination 2 Region 2
      Dst2Rgn2   : TMS570LC43xx.Word;
      --  Destination 2 Blocksize 2
      Dst2BlkSz2 : TMS570LC43xx.Word;
      --  Destination 3 Region 1
      Dst3Rgn1   : TMS570LC43xx.Word;
      --  Destination 3 Blocksize 1
      Dst3BlkSz1 : TMS570LC43xx.Word;
      --  Destination 3 Region 2
      Dst3Rgn2   : TMS570LC43xx.Word;
      --  Destination 3 Blocksize 2
      Dst3BlkSz2 : TMS570LC43xx.Word;
      --  Pin Control 0
      Fun        : TMS570LC43xx.Word;
      --  Pin Control 1
      Dir        : TMS570LC43xx.Word;
      --  Pin Control 2
      DIn        : TMS570LC43xx.Word;
      --  Pin Control 3
      DOut       : TMS570LC43xx.Word;
      --  Pin Control 4
      DSet       : TMS570LC43xx.Word;
      --  Pin Control 5
      DClr       : TMS570LC43xx.Word;
      --  Pin Control 6
      PDr        : TMS570LC43xx.Word;
      --  Pin Control 7
      PDis       : TMS570LC43xx.Word;
      --  Pin Control 8
      PSel       : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Dmm_Peripheral use record
      GlbCtrl    at 16#0# range 0 .. 31;
      IntSet     at 16#4# range 0 .. 31;
      IntClr     at 16#8# range 0 .. 31;
      IntLvl     at 16#C# range 0 .. 31;
      IntFlg     at 16#10# range 0 .. 31;
      IntOffst1  at 16#14# range 0 .. 31;
      IntOffst2  at 16#18# range 0 .. 31;
      DdmDst     at 16#1C# range 0 .. 31;
      DdmBlkSz   at 16#20# range 0 .. 31;
      DdmPtr     at 16#24# range 0 .. 31;
      DdmIntPtr  at 16#28# range 0 .. 31;
      Dst0Rgn1   at 16#2C# range 0 .. 31;
      Dst0BlkSz1 at 16#30# range 0 .. 31;
      Dst0Rgn2   at 16#34# range 0 .. 31;
      Dst0BlkSz2 at 16#38# range 0 .. 31;
      Dst1Rgn1   at 16#3C# range 0 .. 31;
      Dst1BlkSz1 at 16#40# range 0 .. 31;
      Dst1Rgn2   at 16#44# range 0 .. 31;
      Dst1BlkSz2 at 16#48# range 0 .. 31;
      Dst2Rgn1   at 16#4C# range 0 .. 31;
      Dst2BlkSz1 at 16#50# range 0 .. 31;
      Dst2Rgn2   at 16#54# range 0 .. 31;
      Dst2BlkSz2 at 16#58# range 0 .. 31;
      Dst3Rgn1   at 16#5C# range 0 .. 31;
      Dst3BlkSz1 at 16#60# range 0 .. 31;
      Dst3Rgn2   at 16#64# range 0 .. 31;
      Dst3BlkSz2 at 16#68# range 0 .. 31;
      Fun        at 16#6C# range 0 .. 31;
      Dir        at 16#70# range 0 .. 31;
      DIn        at 16#74# range 0 .. 31;
      DOut       at 16#78# range 0 .. 31;
      DSet       at 16#7C# range 0 .. 31;
      DClr       at 16#80# range 0 .. 31;
      PDr        at 16#84# range 0 .. 31;
      PDis       at 16#88# range 0 .. 31;
      PSel       at 16#8C# range 0 .. 31;
   end record;

   --  Data Modification Module
   Dmm_Periph : aliased Dmm_Peripheral
     with Import, Address => Dmm_Base;

end TMS570LC43xx.Dmm;
