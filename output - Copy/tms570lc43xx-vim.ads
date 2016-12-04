--  This spec has been automatically generated from hercules_vim_spec_2.4.2.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Vim is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------------
   -- IrqIndex_Register --
   -----------------------

   subtype IrqIndex_IrqIndex_Field is TMS570LC43xx.Byte;
   subtype IrqIndex_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Index Offset Vector Register
   type IrqIndex_Register is record
      --  IRQ index vector.
      IrqIndex      : IrqIndex_IrqIndex_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : IrqIndex_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IrqIndex_Register use record
      IrqIndex      at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- FiqIndex_Register --
   -----------------------

   subtype FiqIndex_FiqIndex_Field is TMS570LC43xx.Byte;
   subtype FiqIndex_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Index Offset Vector Register
   type FiqIndex_Register is record
      --  FIQ index vector.
      FiqIndex      : FiqIndex_FiqIndex_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : FiqIndex_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FiqIndex_Register use record
      FiqIndex      at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ------------------------
   -- CapEvtSrc_Register --
   ------------------------

   subtype CapEvtSrc_CapEvtSrc0_Field is TMS570LC43xx.UInt7;
   subtype CapEvtSrc_Reserved_7_15_Field is TMS570LC43xx.UInt9;
   subtype CapEvtSrc_CapEvtSrc1_Field is TMS570LC43xx.UInt7;
   subtype CapEvtSrc_Reserved_23_31_Field is TMS570LC43xx.UInt9;

   --  Capture Event register
   type CapEvtSrc_Register is record
      --  Capture event source 0 mapping control.
      CapEvtSrc0     : CapEvtSrc_CapEvtSrc0_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_7_15  : CapEvtSrc_Reserved_7_15_Field := 16#0#;
      --  Capture event source 1 mapping control.
      CapEvtSrc1     : CapEvtSrc_CapEvtSrc1_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_23_31 : CapEvtSrc_Reserved_23_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CapEvtSrc_Register use record
      CapEvtSrc0     at 16#0# range 0 .. 6;
      Reserved_7_15  at 16#0# range 7 .. 15;
      CapEvtSrc1     at 16#0# range 16 .. 22;
      Reserved_23_31 at 16#0# range 23 .. 31;
   end record;

   -----------------------
   -- ChanCtrl_Register --
   -----------------------

   subtype ChanCtrl0_ChanMap3_Field is TMS570LC43xx.UInt7;
   subtype ChanCtrl0_Reserved_7_7_Field is TMS570LC43xx.Bit;
   subtype ChanCtrl0_ChanMap2_Field is TMS570LC43xx.UInt7;
   subtype ChanCtrl0_Reserved_15_15_Field is TMS570LC43xx.Bit;
   subtype ChanCtrl0_ChanMap1_Field is TMS570LC43xx.UInt7;
   subtype ChanCtrl0_Reserved_23_23_Field is TMS570LC43xx.Bit;
   subtype ChanCtrl0_ChanMap0_Field is TMS570LC43xx.UInt7;
   subtype ChanCtrl0_Reserved_31_31_Field is TMS570LC43xx.Bit;

   --  Channel Mapping Register
   type ChanCtrl_Register is record
      --  Interrupt CHANx 3 mapping control.
      ChanMap3       : ChanCtrl0_ChanMap3_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_7_7   : ChanCtrl0_Reserved_7_7_Field := 16#0#;
      --  Interrupt CHANx 2 mapping control.
      ChanMap2       : ChanCtrl0_ChanMap2_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_15_15 : ChanCtrl0_Reserved_15_15_Field := 16#0#;
      --  Interrupt CHANx 1 mapping control.
      ChanMap1       : ChanCtrl0_ChanMap1_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_23_23 : ChanCtrl0_Reserved_23_23_Field := 16#0#;
      --  Interrupt CHANx 0 mapping control.
      ChanMap0       : ChanCtrl0_ChanMap0_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_31_31 : ChanCtrl0_Reserved_31_31_Field := 16#0#;
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

   -----------------
   -- Peripherals --
   -----------------

   --  Vectored Interrupt Manager
   type Vim_Peripheral is record
      --  Index Offset Vector Register
      IrqIndex    : IrqIndex_Register;
      --  Index Offset Vector Register
      FiqIndex    : FiqIndex_Register;
      --  FIQ/IRQ program control bits.
      FirqPr0     : TMS570LC43xx.Word;
      --  FIQ/IRQ program control bits.
      FirqPr1     : TMS570LC43xx.Word;
      --  FIQ/IRQ program control bits.
      FirqPr2     : TMS570LC43xx.Word;
      --  FIQ/IRQ program control bits.
      FirqPr3     : TMS570LC43xx.Word;
      --  Pending Interrupt Read Location
      IntReq0     : TMS570LC43xx.Word;
      --  Pending Interrupt Read Location
      IntReq1     : TMS570LC43xx.Word;
      --  Pending Interrupt Read Location
      IntReq2     : TMS570LC43xx.Word;
      --  Pending Interrupt Read Location
      IntReq3     : TMS570LC43xx.Word;
      --  The interrupt register enable selectively enables individual request
      --  channels.
      ReqEnaSet0  : TMS570LC43xx.Word;
      --  The interrupt register enable selectively enables individual request
      --  channels.
      ReqEnaSet1  : TMS570LC43xx.Word;
      --  The interrupt register enable selectively enables individual request
      --  channels.
      ReqEnaSet2  : TMS570LC43xx.Word;
      --  The interrupt register enable selectively enables individual request
      --  channels.
      ReqEnaSet3  : TMS570LC43xx.Word;
      --  The interrupt register enable selectively disables individual request
      --  channels.
      ReqEnaClr0  : TMS570LC43xx.Word;
      --  The interrupt register enable selectively disables individual request
      --  channels.
      ReqEnaClr1  : TMS570LC43xx.Word;
      --  The interrupt register enable selectively disables individual request
      --  channels.
      ReqEnaClr2  : TMS570LC43xx.Word;
      --  The interrupt register enable selectively disables individual request
      --  channels.
      ReqEnaClr3  : TMS570LC43xx.Word;
      --  The wake-up enable registers selectively enables individual wake-up
      --  interrupt request lines.
      WakeEnaSet0 : TMS570LC43xx.Word;
      --  The wake-up enable registers selectively enables individual wake-up
      --  interrupt request lines.
      WakeEnaSet1 : TMS570LC43xx.Word;
      --  The wake-up enable registers selectively enables individual wake-up
      --  interrupt request lines.
      WakeEnaSet2 : TMS570LC43xx.Word;
      --  The wake-up enable registers selectively enables individual wake-up
      --  interrupt request lines.
      WakeEnaSet3 : TMS570LC43xx.Word;
      --  The wake-up enable register selectively disables individual wake-up
      --  interrupt request lines.
      WakeEnaClr0 : TMS570LC43xx.Word;
      --  The wake-up enable register selectively disables individual wake-up
      --  interrupt request lines.
      WakeEnaClr1 : TMS570LC43xx.Word;
      --  The wake-up enable register selectively disables individual wake-up
      --  interrupt request lines..
      WakeEnaClr2 : TMS570LC43xx.Word;
      --  The wake-up enable register selectively disables individual wake-up
      --  interrupt request lines.
      WakeEnaClr3 : TMS570LC43xx.Word;
      --  Irq Interrupt Vector Register
      IrqVecReg   : TMS570LC43xx.Word;
      --  Fiq Interrupt Vector Register
      FiqVecReg   : TMS570LC43xx.Word;
      --  Capture Event register
      CapEvtSrc   : CapEvtSrc_Register;
      --  Channel Mapping Register
      ChanCtrl0   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl1   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl2   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl3   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl4   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl5   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl6   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl7   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl8   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl9   : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl10  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl11  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl12  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl13  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl14  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl15  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl16  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl17  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl18  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl19  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl20  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl21  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl22  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl23  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl24  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl25  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl26  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl27  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl28  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl29  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl30  : ChanCtrl_Register;
      --  Channel Mapping Register
      ChanCtrl31  : ChanCtrl_Register;
   end record
     with Volatile;

   for Vim_Peripheral use record
      IrqIndex    at 16#0# range 0 .. 31;
      FiqIndex    at 16#4# range 0 .. 31;
      FirqPr0     at 16#10# range 0 .. 31;
      FirqPr1     at 16#14# range 0 .. 31;
      FirqPr2     at 16#18# range 0 .. 31;
      FirqPr3     at 16#1C# range 0 .. 31;
      IntReq0     at 16#20# range 0 .. 31;
      IntReq1     at 16#24# range 0 .. 31;
      IntReq2     at 16#28# range 0 .. 31;
      IntReq3     at 16#2C# range 0 .. 31;
      ReqEnaSet0  at 16#30# range 0 .. 31;
      ReqEnaSet1  at 16#34# range 0 .. 31;
      ReqEnaSet2  at 16#38# range 0 .. 31;
      ReqEnaSet3  at 16#3C# range 0 .. 31;
      ReqEnaClr0  at 16#40# range 0 .. 31;
      ReqEnaClr1  at 16#44# range 0 .. 31;
      ReqEnaClr2  at 16#48# range 0 .. 31;
      ReqEnaClr3  at 16#4C# range 0 .. 31;
      WakeEnaSet0 at 16#50# range 0 .. 31;
      WakeEnaSet1 at 16#54# range 0 .. 31;
      WakeEnaSet2 at 16#58# range 0 .. 31;
      WakeEnaSet3 at 16#5C# range 0 .. 31;
      WakeEnaClr0 at 16#60# range 0 .. 31;
      WakeEnaClr1 at 16#64# range 0 .. 31;
      WakeEnaClr2 at 16#68# range 0 .. 31;
      WakeEnaClr3 at 16#6C# range 0 .. 31;
      IrqVecReg   at 16#70# range 0 .. 31;
      FiqVecReg   at 16#74# range 0 .. 31;
      CapEvtSrc   at 16#78# range 0 .. 31;
      ChanCtrl0   at 16#80# range 0 .. 31;
      ChanCtrl1   at 16#84# range 0 .. 31;
      ChanCtrl2   at 16#88# range 0 .. 31;
      ChanCtrl3   at 16#8C# range 0 .. 31;
      ChanCtrl4   at 16#90# range 0 .. 31;
      ChanCtrl5   at 16#94# range 0 .. 31;
      ChanCtrl6   at 16#98# range 0 .. 31;
      ChanCtrl7   at 16#9C# range 0 .. 31;
      ChanCtrl8   at 16#A0# range 0 .. 31;
      ChanCtrl9   at 16#A4# range 0 .. 31;
      ChanCtrl10  at 16#A8# range 0 .. 31;
      ChanCtrl11  at 16#AC# range 0 .. 31;
      ChanCtrl12  at 16#B0# range 0 .. 31;
      ChanCtrl13  at 16#B4# range 0 .. 31;
      ChanCtrl14  at 16#B8# range 0 .. 31;
      ChanCtrl15  at 16#BC# range 0 .. 31;
      ChanCtrl16  at 16#C0# range 0 .. 31;
      ChanCtrl17  at 16#C4# range 0 .. 31;
      ChanCtrl18  at 16#C8# range 0 .. 31;
      ChanCtrl19  at 16#CC# range 0 .. 31;
      ChanCtrl20  at 16#D0# range 0 .. 31;
      ChanCtrl21  at 16#D4# range 0 .. 31;
      ChanCtrl22  at 16#D8# range 0 .. 31;
      ChanCtrl23  at 16#DC# range 0 .. 31;
      ChanCtrl24  at 16#E0# range 0 .. 31;
      ChanCtrl25  at 16#E4# range 0 .. 31;
      ChanCtrl26  at 16#E8# range 0 .. 31;
      ChanCtrl27  at 16#EC# range 0 .. 31;
      ChanCtrl28  at 16#F0# range 0 .. 31;
      ChanCtrl29  at 16#F4# range 0 .. 31;
      ChanCtrl30  at 16#F8# range 0 .. 31;
      ChanCtrl31  at 16#FC# range 0 .. 31;
   end record;

   --  Vectored Interrupt Manager
   Vim_Periph : aliased Vim_Peripheral
     with Import, Address => Vim_Base;

end TMS570LC43xx.Vim;
