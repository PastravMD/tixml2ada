--  This spec has been automatically generated from hercules_gio_general_spec_1.2.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Gio is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- GlbCtrl_Register --
   ----------------------

   subtype GlbCtrl_Reset_Field is TMS570LC43xx.Bit;
   subtype GlbCtrl_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Global Control Register
   type GlbCtrl_Register is record
      --  GIO reset
      Reset         : GlbCtrl_Reset_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : GlbCtrl_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GlbCtrl_Register use record
      Reset         at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- IntDet_Register --
   ---------------------

   subtype IntDet_GioIntDet0_Field is TMS570LC43xx.Byte;
   subtype IntDet_GioIntDet1_Field is TMS570LC43xx.Byte;
   subtype IntDet_GioIntDet2_Field is TMS570LC43xx.Byte;
   subtype IntDet_GioIntDet3_Field is TMS570LC43xx.Byte;

   --  Interrupt Detect
   type IntDet_Register is record
      --  Interrupt detection select for pins GIOA[7:0]
      GioIntDet0 : IntDet_GioIntDet0_Field := 16#0#;
      --  Interrupt detection select for pins GIOB[7:0]
      GioIntDet1 : IntDet_GioIntDet1_Field := 16#0#;
      --  Interrupt detection select for pins GIOC[7:0]
      GioIntDet2 : IntDet_GioIntDet2_Field := 16#0#;
      --  Interrupt detection select for pins GIOD[7:0]
      GioIntDet3 : IntDet_GioIntDet3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IntDet_Register use record
      GioIntDet0 at 16#0# range 0 .. 7;
      GioIntDet1 at 16#0# range 8 .. 15;
      GioIntDet2 at 16#0# range 16 .. 23;
      GioIntDet3 at 16#0# range 24 .. 31;
   end record;

   ---------------------
   -- IntPol_Register --
   ---------------------

   subtype IntPol_GioPol0_Field is TMS570LC43xx.Byte;
   subtype IntPol_GioPol1_Field is TMS570LC43xx.Byte;
   subtype IntPol_GioPol2_Field is TMS570LC43xx.Byte;
   subtype IntPol_GioPol3_Field is TMS570LC43xx.Byte;

   --  Interrupt Polarity
   type IntPol_Register is record
      --  Low-power mode (GIO module clocks off) / Interrupt polarity select
      --  for pins GIOA[7:0]
      GioPol0 : IntPol_GioPol0_Field := 16#0#;
      --  Low-power mode (GIO module clocks off) / Interrupt polarity select
      --  for pins GIOB[7:0]
      GioPol1 : IntPol_GioPol1_Field := 16#0#;
      --  Low-power mode (GIO module clocks off) / Interrupt polarity select
      --  for pins GIOC[7:0]
      GioPol2 : IntPol_GioPol2_Field := 16#0#;
      --  Low-power mode (GIO module clocks off) / Interrupt polarity select
      --  for pins GIOD[7:0]
      GioPol3 : IntPol_GioPol3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IntPol_Register use record
      GioPol0 at 16#0# range 0 .. 7;
      GioPol1 at 16#0# range 8 .. 15;
      GioPol2 at 16#0# range 16 .. 23;
      GioPol3 at 16#0# range 24 .. 31;
   end record;

   ------------------------
   -- IntEnaSet_Register --
   ------------------------

   subtype IntEnaSet_GioEnaSet0_Field is TMS570LC43xx.Byte;
   subtype IntEnaSet_GioEnaSet1_Field is TMS570LC43xx.Byte;
   subtype IntEnaSet_GioEnaSet2_Field is TMS570LC43xx.Byte;
   subtype IntEnaSet_GioEnaSet3_Field is TMS570LC43xx.Byte;

   --  Interrupt Enable Set
   type IntEnaSet_Register is record
      --  Interrupt enable for pins GIOA[7:0]
      GioEnaSet0 : IntEnaSet_GioEnaSet0_Field := 16#0#;
      --  Interrupt enable for pins GIOB[7:0]
      GioEnaSet1 : IntEnaSet_GioEnaSet1_Field := 16#0#;
      --  Interrupt enable for pins GIOC[7:0]
      GioEnaSet2 : IntEnaSet_GioEnaSet2_Field := 16#0#;
      --  Interrupt enable for pins GIOD[7:0]
      GioEnaSet3 : IntEnaSet_GioEnaSet3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IntEnaSet_Register use record
      GioEnaSet0 at 16#0# range 0 .. 7;
      GioEnaSet1 at 16#0# range 8 .. 15;
      GioEnaSet2 at 16#0# range 16 .. 23;
      GioEnaSet3 at 16#0# range 24 .. 31;
   end record;

   ------------------------
   -- IntEnaClr_Register --
   ------------------------

   subtype IntEnaClr_GioEnaClr0_Field is TMS570LC43xx.Byte;
   subtype IntEnaClr_GioEnaClr1_Field is TMS570LC43xx.Byte;
   subtype IntEnaClr_GioEnaClr2_Field is TMS570LC43xx.Byte;
   subtype IntEnaClr_GioEnaClr3_Field is TMS570LC43xx.Byte;

   --  Interrupt Enable Clear
   type IntEnaClr_Register is record
      --  Interrupt disable for pins GIOA[7:0]
      GioEnaClr0 : IntEnaClr_GioEnaClr0_Field := 16#0#;
      --  Interrupt disable for pins GIOB[7:0]
      GioEnaClr1 : IntEnaClr_GioEnaClr1_Field := 16#0#;
      --  Interrupt disable for pins GIOC[7:0]
      GioEnaClr2 : IntEnaClr_GioEnaClr2_Field := 16#0#;
      --  Interrupt disable for pins GIOD[7:0]
      GioEnaClr3 : IntEnaClr_GioEnaClr3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IntEnaClr_Register use record
      GioEnaClr0 at 16#0# range 0 .. 7;
      GioEnaClr1 at 16#0# range 8 .. 15;
      GioEnaClr2 at 16#0# range 16 .. 23;
      GioEnaClr3 at 16#0# range 24 .. 31;
   end record;

   ------------------------
   -- IntLvlSet_Register --
   ------------------------

   subtype IntLvlSet_GioLvlSet0_Field is TMS570LC43xx.Byte;
   subtype IntLvlSet_GioLvlSet1_Field is TMS570LC43xx.Byte;
   subtype IntLvlSet_GioLvlSet2_Field is TMS570LC43xx.Byte;
   subtype IntLvlSet_GioLvlSet3_Field is TMS570LC43xx.Byte;

   --  Interrupt Priority Set
   type IntLvlSet_Register is record
      --  GIO high-priority interrupt for pins GIOA[7:0]
      GioLvlSet0 : IntLvlSet_GioLvlSet0_Field := 16#0#;
      --  GIO high-priority interrupt for pins GIOB[7:0]
      GioLvlSet1 : IntLvlSet_GioLvlSet1_Field := 16#0#;
      --  GIO high-priority interrupt for pins GIOC[7:0]
      GioLvlSet2 : IntLvlSet_GioLvlSet2_Field := 16#0#;
      --  GIO high-priority interrupt for pins GIOD[7:0]
      GioLvlSet3 : IntLvlSet_GioLvlSet3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IntLvlSet_Register use record
      GioLvlSet0 at 16#0# range 0 .. 7;
      GioLvlSet1 at 16#0# range 8 .. 15;
      GioLvlSet2 at 16#0# range 16 .. 23;
      GioLvlSet3 at 16#0# range 24 .. 31;
   end record;

   ------------------------
   -- IntLvlClr_Register --
   ------------------------

   subtype IntLvlClr_GioLvlClr0_Field is TMS570LC43xx.Byte;
   subtype IntLvlClr_GioLvlClr1_Field is TMS570LC43xx.Byte;
   subtype IntLvlClr_GioLvlClr2_Field is TMS570LC43xx.Byte;
   subtype IntLvlClr_GioLvlClr3_Field is TMS570LC43xx.Byte;

   --  Interrupt Priority Clear
   type IntLvlClr_Register is record
      --  GIO low-priority interrupt for pins GIOA[7:0]
      GioLvlClr0 : IntLvlClr_GioLvlClr0_Field := 16#0#;
      --  GIO low-priority interrupt for pins GIOB[7:0]
      GioLvlClr1 : IntLvlClr_GioLvlClr1_Field := 16#0#;
      --  GIO low-priority interrupt for pins GIOC[7:0]
      GioLvlClr2 : IntLvlClr_GioLvlClr2_Field := 16#0#;
      --  GIO low-priority interrupt for pins GIOD[7:0]
      GioLvlClr3 : IntLvlClr_GioLvlClr3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IntLvlClr_Register use record
      GioLvlClr0 at 16#0# range 0 .. 7;
      GioLvlClr1 at 16#0# range 8 .. 15;
      GioLvlClr2 at 16#0# range 16 .. 23;
      GioLvlClr3 at 16#0# range 24 .. 31;
   end record;

   ---------------------
   -- IntFlg_Register --
   ---------------------

   subtype IntFlg_GioFlg0_Field is TMS570LC43xx.Byte;
   subtype IntFlg_GioFlg1_Field is TMS570LC43xx.Byte;
   subtype IntFlg_GioFlg2_Field is TMS570LC43xx.Byte;
   subtype IntFlg_GioFlg3_Field is TMS570LC43xx.Byte;

   --  Interrupt Flag
   type IntFlg_Register is record
      --  GIO flag for pins GIOA[7:0]
      GioFlg0 : IntFlg_GioFlg0_Field := 16#0#;
      --  GIO flag for pins GIOB[7:0]
      GioFlg1 : IntFlg_GioFlg1_Field := 16#0#;
      --  GIO flag for pins GIOC[7:0]
      GioFlg2 : IntFlg_GioFlg2_Field := 16#0#;
      --  GIO flag for pins GIOD[7:0]
      GioFlg3 : IntFlg_GioFlg3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IntFlg_Register use record
      GioFlg0 at 16#0# range 0 .. 7;
      GioFlg1 at 16#0# range 8 .. 15;
      GioFlg2 at 16#0# range 16 .. 23;
      GioFlg3 at 16#0# range 24 .. 31;
   end record;

   ---------------------
   -- Offst1_Register --
   ---------------------

   subtype Offst1_GioOff1_Field is TMS570LC43xx.UInt6;
   subtype Offst1_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Offset 1
   type Offst1_Register is record
      --  GIO offset 1. These bits index the currently pending high-priority
      --  interrupt.
      GioOff1       : Offst1_GioOff1_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_31 : Offst1_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Offst1_Register use record
      GioOff1       at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   ---------------------
   -- Offst2_Register --
   ---------------------

   subtype Offst2_GioOff2_Field is TMS570LC43xx.UInt6;
   subtype Offst2_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Offset 2
   type Offst2_Register is record
      --  GIO offset 2. These bits index the currently pending low-priority
      --  interrupt.
      GioOff2       : Offst2_GioOff2_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_31 : Offst2_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Offst2_Register use record
      GioOff2       at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -------------------
   -- Emu1_Register --
   -------------------

   subtype Emu1_GioEmu1_Field is TMS570LC43xx.UInt6;
   subtype Emu1_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Emulation 1
   type Emu1_Register is record
      --  GIO offset emulation 1. These bits index the currently pending
      --  high-priority interrupt.
      GioEmu1       : Emu1_GioEmu1_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_31 : Emu1_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Emu1_Register use record
      GioEmu1       at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -------------------
   -- Emu2_Register --
   -------------------

   subtype Emu2_GioEmu2_Field is TMS570LC43xx.UInt6;
   subtype Emu2_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Emulation 2
   type Emu2_Register is record
      --  GIO offset emulation 2. These bits index the currently pending
      --  low-priority interrupt.
      GioEmu2       : Emu2_GioEmu2_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_31 : Emu2_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Emu2_Register use record
      GioEmu2       at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Input Output
   type Gio_Peripheral is record
      --  Global Control Register
      GlbCtrl   : GlbCtrl_Register;
      --  Power Down
      PwDn      : TMS570LC43xx.Word;
      --  Interrupt Detect
      IntDet    : IntDet_Register;
      --  Interrupt Polarity
      IntPol    : IntPol_Register;
      --  Interrupt Enable Set
      IntEnaSet : IntEnaSet_Register;
      --  Interrupt Enable Clear
      IntEnaClr : IntEnaClr_Register;
      --  Interrupt Priority Set
      IntLvlSet : IntLvlSet_Register;
      --  Interrupt Priority Clear
      IntLvlClr : IntLvlClr_Register;
      --  Interrupt Flag
      IntFlg    : IntFlg_Register;
      --  Offset 1
      Offst1    : Offst1_Register;
      --  Offset 2
      Offst2    : Offst2_Register;
      --  Emulation 1
      Emu1      : Emu1_Register;
      --  Emulation 2
      Emu2      : Emu2_Register;
   end record
     with Volatile;

   for Gio_Peripheral use record
      GlbCtrl   at 16#0# range 0 .. 31;
      PwDn      at 16#4# range 0 .. 31;
      IntDet    at 16#8# range 0 .. 31;
      IntPol    at 16#C# range 0 .. 31;
      IntEnaSet at 16#10# range 0 .. 31;
      IntEnaClr at 16#14# range 0 .. 31;
      IntLvlSet at 16#18# range 0 .. 31;
      IntLvlClr at 16#1C# range 0 .. 31;
      IntFlg    at 16#20# range 0 .. 31;
      Offst1    at 16#24# range 0 .. 31;
      Offst2    at 16#28# range 0 .. 31;
      Emu1      at 16#2C# range 0 .. 31;
      Emu2      at 16#30# range 0 .. 31;
   end record;

   --  General Purpose Input Output
   Gio_Periph : aliased Gio_Peripheral
     with Import, Address => Gio_Base;

end TMS570LC43xx.Gio;
