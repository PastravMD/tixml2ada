--  This spec has been automatically generated from hercules_vim_base2_spec_2.4.2.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Vim_base2 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------------
   -- ChanCtrl_Register --
   -----------------------

   subtype ChanCtrl32_ChanMap3_Field is TMS570LC43xx.UInt7;
   subtype ChanCtrl32_Reserved_7_7_Field is TMS570LC43xx.Bit;
   subtype ChanCtrl32_ChanMap2_Field is TMS570LC43xx.UInt7;
   subtype ChanCtrl32_Reserved_15_15_Field is TMS570LC43xx.Bit;
   subtype ChanCtrl32_ChanMap1_Field is TMS570LC43xx.UInt7;
   subtype ChanCtrl32_Reserved_23_23_Field is TMS570LC43xx.Bit;
   subtype ChanCtrl32_ChanMap0_Field is TMS570LC43xx.UInt7;
   subtype ChanCtrl32_Reserved_31_31_Field is TMS570LC43xx.Bit;

   --  Channel Mapping Register
   type ChanCtrl_Register is record
      --  Interrupt CHANx 3 mapping control.
      ChanMap3       : ChanCtrl32_ChanMap3_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_7_7   : ChanCtrl32_Reserved_7_7_Field := 16#0#;
      --  Interrupt CHANx 2 mapping control.
      ChanMap2       : ChanCtrl32_ChanMap2_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_15_15 : ChanCtrl32_Reserved_15_15_Field := 16#0#;
      --  Interrupt CHANx 1 mapping control.
      ChanMap1       : ChanCtrl32_ChanMap1_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_23_23 : ChanCtrl32_Reserved_23_23_Field := 16#0#;
      --  Interrupt CHANx 0 mapping control.
      ChanMap0       : ChanCtrl32_ChanMap0_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_31_31 : ChanCtrl32_Reserved_31_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ChanCtrl_Register use record
      ChanMap3       at 16#0# range 0 .. 6;
      Reserved_7_7   at 16#0# range 7 .. 7;
      ChanMap2       at 16#0# range 8 .. 14;
      Reserved_15_15 at 16#0# range 15 .. 15;
      ChanMap1       at 16#0# range 16 .. 22;
      Reserved_23_23 at 16#0# range 23 .. 23;
      ChanMap0       at 16#0# range 24 .. 30;
      Reserved_31_31 at 16#0# range 31 .. 31;
   end record;

   -------------------------
   -- ParEccStat_Register --
   -------------------------

   subtype ParEccStat_UErr_Field is TMS570LC43xx.Bit;
   subtype ParEccStat_Reserved_1_7_Field is TMS570LC43xx.UInt7;
   subtype ParEccStat_SbErr_Field is TMS570LC43xx.Bit;
   subtype ParEccStat_Reserved_9_31_Field is TMS570LC43xx.UInt23;

   --  VIM RAM Parity/ECC Status Register
   type ParEccStat_Register is record
      --  Double bit error found and Interrupt Vector Table is bypassed.
      UErr          : ParEccStat_UErr_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_7  : ParEccStat_Reserved_1_7_Field := 16#0#;
      --  Single bit error detected and corrected by SECDED logic.
      SbErr         : ParEccStat_SbErr_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_9_31 : ParEccStat_Reserved_9_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ParEccStat_Register use record
      UErr          at 16#0# range 0 .. 0;
      Reserved_1_7  at 16#0# range 1 .. 7;
      SbErr         at 16#0# range 8 .. 8;
      Reserved_9_31 at 16#0# range 9 .. 31;
   end record;

   ------------------------
   -- ParEccCtl_Register --
   ------------------------

   subtype ParEccCtl_EccEna_Field is TMS570LC43xx.UInt4;
   subtype ParEccCtl_Reserved_4_7_Field is TMS570LC43xx.UInt4;
   subtype ParEccCtl_TestDiagEn_Field is TMS570LC43xx.UInt4;
   subtype ParEccCtl_Reserved_12_15_Field is TMS570LC43xx.UInt4;
   subtype ParEccCtl_EdacMode_Field is TMS570LC43xx.UInt4;
   subtype ParEccCtl_Reserved_20_23_Field is TMS570LC43xx.UInt4;
   subtype ParEccCtl_SbeEvtEn_Field is TMS570LC43xx.UInt4;
   subtype ParEccCtl_Reserved_28_31_Field is TMS570LC43xx.UInt4;

   --  VIM RAM Parity/ECC Control Register
   type ParEccCtl_Register is record
      --  VIM ECC enable.
      EccEna         : ParEccCtl_EccEna_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_7   : ParEccCtl_Reserved_4_7_Field := 16#0#;
      --  Make ECC bits writable as well as readable independent of data bits.
      TestDiagEn     : ParEccCtl_TestDiagEn_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_12_15 : ParEccCtl_Reserved_12_15_Field := 16#0#;
      --  Enabling of SECDED error correction
      EdacMode       : ParEccCtl_EdacMode_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_20_23 : ParEccCtl_Reserved_20_23_Field := 16#0#;
      --  Generation of Error signal based on SECDED logic
      SbeEvtEn       : ParEccCtl_SbeEvtEn_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_28_31 : ParEccCtl_Reserved_28_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ParEccCtl_Register use record
      EccEna         at 16#0# range 0 .. 3;
      Reserved_4_7   at 16#0# range 4 .. 7;
      TestDiagEn     at 16#0# range 8 .. 11;
      Reserved_12_15 at 16#0# range 12 .. 15;
      EdacMode       at 16#0# range 16 .. 19;
      Reserved_20_23 at 16#0# range 20 .. 23;
      SbeEvtEn       at 16#0# range 24 .. 27;
      Reserved_28_31 at 16#0# range 28 .. 31;
   end record;

   -----------------------
   -- UerrAddr_Register --
   -----------------------

   subtype UerrAddr_WordOffset_Field is TMS570LC43xx.UInt2;
   subtype UerrAddr_AddErr_Field is TMS570LC43xx.Byte;
   subtype UerrAddr_IvtOffset_Field is TMS570LC43xx.UInt22;

   --  Uncorrectable Error Address Register
   type UerrAddr_Register is record
      --  Word offset.
      WordOffset : UerrAddr_WordOffset_Field := 16#0#;
      --  Uncorrectable error address register.
      AddErr     : UerrAddr_AddErr_Field := 16#0#;
      --  Interrupt Vector Table offset.
      IvtOffset  : UerrAddr_IvtOffset_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for UerrAddr_Register use record
      WordOffset at 16#0# range 0 .. 1;
      AddErr     at 16#0# range 2 .. 9;
      IvtOffset  at 16#0# range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Vectored Interrupt Manager
   type Vim_base2_Peripheral is record
      --  Channel Mapping Register
      FirqPr4     : TMS570LC43xx.Word;
      --  Channel Mapping Register
      FirqPr5     : TMS570LC43xx.Word;
      --  Channel Mapping Register
      FirqPr6     : TMS570LC43xx.Word;
      --  Channel Mapping Register
      FirqPr7     : TMS570LC43xx.Word;
      --  Channel Mapping Register
      IntReq4     : TMS570LC43xx.Word;
      --  Channel Mapping Register
      IntReq5     : TMS570LC43xx.Word;
      --  Channel Mapping Register
      IntReq6     : TMS570LC43xx.Word;
      --  Channel Mapping Register
      IntReq7     : TMS570LC43xx.Word;
      --  Channel Mapping Register
      ReqEnaSet4  : TMS570LC43xx.Word;
      --  Channel Mapping Register
      ReqEnaSet5  : TMS570LC43xx.Word;
      --  Channel Mapping Register
      ReqEnaSet6  : TMS570LC43xx.Word;
      --  Channel Mapping Register
      ReqEnaSet7  : TMS570LC43xx.Word;
      --  Channel Mapping Register
      ReqEnaClr4  : TMS570LC43xx.Word;
      --  Channel Mapping Register
      ReqEnaClr5  : TMS570LC43xx.Word;
      --  Channel Mapping Register
      ReqEnaClr6  : TMS570LC43xx.Word;
      --  Channel Mapping Register
      ReqEnaClr7  : TMS570LC43xx.Word;
      --  Channel Mapping Register
      WakeEnaSet4 : TMS570LC43xx.Word;
      --  Channel Mapping Register
      WakeEnaSet5 : TMS570LC43xx.Word;
      --  Channel Mapping Register
      WakeEnaSet6 : TMS570LC43xx.Word;
      --  Channel Mapping Register
      WakeEnaSet7 : TMS570LC43xx.Word;
      --  Channel Mapping Register
      WakeEnaClr4 : TMS570LC43xx.Word;
      --  Channel Mapping Register
      WakeEnaClr5 : TMS570LC43xx.Word;
      --  Channel Mapping Register
      WakeEnaClr6 : TMS570LC43xx.Word;
      --  Channel Mapping Register
      WakeEnaClr7 : TMS570LC43xx.Word;
      --  Channel Mapping Register
      ChanCtrl32  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl33  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl34  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl35  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl36  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl37  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl38  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl39  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl40  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl41  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl42  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl43  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl44  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl45  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl46  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl47  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl48  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl49  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl50  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl51  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl52  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl53  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl54  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl55  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl56  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl57  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl58  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl59  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl60  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl61  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl62  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl63  : ChanCtrl_Register;
      --  VIM RAM Parity/ECC Status Register
      ParEccStat  : ParEccStat_Register;
      --  VIM RAM Parity/ECC Control Register
      ParEccCtl   : ParEccCtl_Register;
      --  Uncorrectable Error Address Register
      UerrAddr    : UerrAddr_Register;
      --  FallBack Vector Address Register
      FbVecAddr   : TMS570LC43xx.Word;
      --  Single Bit Error Address Register
      SBErrAddr   : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Vim_base2_Peripheral use record
      FirqPr4     at 16#0# range 0 .. 31;
      FirqPr5     at 16#4# range 0 .. 31;
      FirqPr6     at 16#8# range 0 .. 31;
      FirqPr7     at 16#C# range 0 .. 31;
      IntReq4     at 16#10# range 0 .. 31;
      IntReq5     at 16#14# range 0 .. 31;
      IntReq6     at 16#18# range 0 .. 31;
      IntReq7     at 16#1C# range 0 .. 31;
      ReqEnaSet4  at 16#20# range 0 .. 31;
      ReqEnaSet5  at 16#24# range 0 .. 31;
      ReqEnaSet6  at 16#28# range 0 .. 31;
      ReqEnaSet7  at 16#2C# range 0 .. 31;
      ReqEnaClr4  at 16#30# range 0 .. 31;
      ReqEnaClr5  at 16#34# range 0 .. 31;
      ReqEnaClr6  at 16#38# range 0 .. 31;
      ReqEnaClr7  at 16#3C# range 0 .. 31;
      WakeEnaSet4 at 16#40# range 0 .. 31;
      WakeEnaSet5 at 16#44# range 0 .. 31;
      WakeEnaSet6 at 16#48# range 0 .. 31;
      WakeEnaSet7 at 16#4C# range 0 .. 31;
      WakeEnaClr4 at 16#50# range 0 .. 31;
      WakeEnaClr5 at 16#54# range 0 .. 31;
      WakeEnaClr6 at 16#58# range 0 .. 31;
      WakeEnaClr7 at 16#5C# range 0 .. 31;
      ChanCtrl32  at 16#60# range 0 .. 31;
      ChanCtrl33  at 16#64# range 0 .. 31;
      ChanCtrl34  at 16#68# range 0 .. 31;
      ChanCtrl35  at 16#6C# range 0 .. 31;
      ChanCtrl36  at 16#70# range 0 .. 31;
      ChanCtrl37  at 16#74# range 0 .. 31;
      ChanCtrl38  at 16#78# range 0 .. 31;
      ChanCtrl39  at 16#7C# range 0 .. 31;
      ChanCtrl40  at 16#80# range 0 .. 31;
      ChanCtrl41  at 16#84# range 0 .. 31;
      ChanCtrl42  at 16#88# range 0 .. 31;
      ChanCtrl43  at 16#8C# range 0 .. 31;
      ChanCtrl44  at 16#90# range 0 .. 31;
      ChanCtrl45  at 16#94# range 0 .. 31;
      ChanCtrl46  at 16#98# range 0 .. 31;
      ChanCtrl47  at 16#9C# range 0 .. 31;
      ChanCtrl48  at 16#A0# range 0 .. 31;
      ChanCtrl49  at 16#A4# range 0 .. 31;
      ChanCtrl50  at 16#A8# range 0 .. 31;
      ChanCtrl51  at 16#AC# range 0 .. 31;
      ChanCtrl52  at 16#B0# range 0 .. 31;
      ChanCtrl53  at 16#B4# range 0 .. 31;
      ChanCtrl54  at 16#B8# range 0 .. 31;
      ChanCtrl55  at 16#BC# range 0 .. 31;
      ChanCtrl56  at 16#C0# range 0 .. 31;
      ChanCtrl57  at 16#C4# range 0 .. 31;
      ChanCtrl58  at 16#C8# range 0 .. 31;
      ChanCtrl59  at 16#CC# range 0 .. 31;
      ChanCtrl60  at 16#D0# range 0 .. 31;
      ChanCtrl61  at 16#D4# range 0 .. 31;
      ChanCtrl62  at 16#D8# range 0 .. 31;
      ChanCtrl63  at 16#DC# range 0 .. 31;
      ParEccStat  at 16#EC# range 0 .. 31;
      ParEccCtl   at 16#F0# range 0 .. 31;
      UerrAddr    at 16#F4# range 0 .. 31;
      FbVecAddr   at 16#F8# range 0 .. 31;
      SBErrAddr   at 16#FC# range 0 .. 31;
   end record;

   --  Vectored Interrupt Manager
   Vim_base2_Periph : aliased Vim_base2_Peripheral
     with Import, Address => Vim_base2_Base;

end TMS570LC43xx.Vim_base2;
