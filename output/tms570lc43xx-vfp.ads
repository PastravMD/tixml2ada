--  This spec has been automatically generated from vfp_cortexr5f_r1p2.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Vfp is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   type Vfp_Disc is
     (
      System_Fpsid,
      System_Fpscr,
      System_Fpexc,
      System_Mvfr0,
      System_Mvfr1,
      Sp_S0,
      Sp_S1,
      Sp_S2,
      Sp_S3,
      Sp_S4,
      Sp_S5,
      Sp_S6,
      Sp_S7,
      Sp_S8,
      Sp_S9,
      Sp_S10,
      Sp_S11,
      Sp_S12,
      Sp_S13,
      Sp_S14,
      Sp_S15,
      Sp_S16,
      Sp_S17,
      Sp_S18,
      Sp_S19,
      Sp_S20,
      Sp_S21,
      Sp_S22,
      Sp_S23,
      Sp_S24,
      Sp_S25,
      Sp_S26,
      Sp_S27,
      Sp_S28,
      Sp_S29,
      Sp_S30,
      Sp_S31,
      Dp_D0_L,
      Dp_D0_H,
      Dp_D1_L,
      Dp_D1_H,
      Dp_D2_L,
      Dp_D2_H,
      Dp_D3_L,
      Dp_D3_H,
      Dp_D4_L,
      Dp_D4_H,
      Dp_D5_L,
      Dp_D5_H,
      Dp_D6_L,
      Dp_D6_H,
      Dp_D7_L,
      Dp_D7_H,
      Dp_D8_L,
      Dp_D8_H,
      Dp_D9_L,
      Dp_D9_H,
      Dp_D10_L,
      Dp_D10_H,
      Dp_D11_L,
      Dp_D11_H,
      Dp_D12_L,
      Dp_D12_H,
      Dp_D13_L,
      Dp_D13_H,
      Dp_D14_L,
      Dp_D14_H,
      Dp_D15_L,
      Dp_D15_H,
      Dp_D0,
      Dp_D1,
      Dp_D2,
      Dp_D3,
      Dp_D4,
      Dp_D5,
      Dp_D6,
      Dp_D7,
      Dp_D8,
      Dp_D9,
      Dp_D10,
      Dp_D11,
      Dp_D12,
      Dp_D13,
      Dp_D14,
      Dp_D15);

   --  IRQ Registers
   type Vfp_Peripheral
     (Discriminent : Vfp_Disc := System_Fpsid)
   is record
      case Discriminent is
         when System_Fpsid =>
            VFP_SYSTEM_FPSID : TMS570LC43xx.Word;
         when System_Fpscr =>
            VFP_SYSTEM_FPSCR : TMS570LC43xx.Word;
         when System_Fpexc =>
            VFP_SYSTEM_FPEXC : TMS570LC43xx.Word;
         when System_Mvfr0 =>
            VFP_SYSTEM_MVFR0 : TMS570LC43xx.Word;
         when System_Mvfr1 =>
            VFP_SYSTEM_MVFR1 : TMS570LC43xx.Word;
         when Sp_S0 =>
            VFP_SP_S0 : TMS570LC43xx.Word;
         when Sp_S1 =>
            VFP_SP_S1 : TMS570LC43xx.Word;
         when Sp_S2 =>
            VFP_SP_S2 : TMS570LC43xx.Word;
         when Sp_S3 =>
            VFP_SP_S3 : TMS570LC43xx.Word;
         when Sp_S4 =>
            VFP_SP_S4 : TMS570LC43xx.Word;
         when Sp_S5 =>
            VFP_SP_S5 : TMS570LC43xx.Word;
         when Sp_S6 =>
            VFP_SP_S6 : TMS570LC43xx.Word;
         when Sp_S7 =>
            VFP_SP_S7 : TMS570LC43xx.Word;
         when Sp_S8 =>
            VFP_SP_S8 : TMS570LC43xx.Word;
         when Sp_S9 =>
            VFP_SP_S9 : TMS570LC43xx.Word;
         when Sp_S10 =>
            VFP_SP_S10 : TMS570LC43xx.Word;
         when Sp_S11 =>
            VFP_SP_S11 : TMS570LC43xx.Word;
         when Sp_S12 =>
            VFP_SP_S12 : TMS570LC43xx.Word;
         when Sp_S13 =>
            VFP_SP_S13 : TMS570LC43xx.Word;
         when Sp_S14 =>
            VFP_SP_S14 : TMS570LC43xx.Word;
         when Sp_S15 =>
            VFP_SP_S15 : TMS570LC43xx.Word;
         when Sp_S16 =>
            VFP_SP_S16 : TMS570LC43xx.Word;
         when Sp_S17 =>
            VFP_SP_S17 : TMS570LC43xx.Word;
         when Sp_S18 =>
            VFP_SP_S18 : TMS570LC43xx.Word;
         when Sp_S19 =>
            VFP_SP_S19 : TMS570LC43xx.Word;
         when Sp_S20 =>
            VFP_SP_S20 : TMS570LC43xx.Word;
         when Sp_S21 =>
            VFP_SP_S21 : TMS570LC43xx.Word;
         when Sp_S22 =>
            VFP_SP_S22 : TMS570LC43xx.Word;
         when Sp_S23 =>
            VFP_SP_S23 : TMS570LC43xx.Word;
         when Sp_S24 =>
            VFP_SP_S24 : TMS570LC43xx.Word;
         when Sp_S25 =>
            VFP_SP_S25 : TMS570LC43xx.Word;
         when Sp_S26 =>
            VFP_SP_S26 : TMS570LC43xx.Word;
         when Sp_S27 =>
            VFP_SP_S27 : TMS570LC43xx.Word;
         when Sp_S28 =>
            VFP_SP_S28 : TMS570LC43xx.Word;
         when Sp_S29 =>
            VFP_SP_S29 : TMS570LC43xx.Word;
         when Sp_S30 =>
            VFP_SP_S30 : TMS570LC43xx.Word;
         when Sp_S31 =>
            VFP_SP_S31 : TMS570LC43xx.Word;
         when Dp_D0_L =>
            VFP_DP_D0_L : TMS570LC43xx.Word;
         when Dp_D0_H =>
            VFP_DP_D0_H : TMS570LC43xx.Word;
         when Dp_D1_L =>
            VFP_DP_D1_L : TMS570LC43xx.Word;
         when Dp_D1_H =>
            VFP_DP_D1_H : TMS570LC43xx.Word;
         when Dp_D2_L =>
            VFP_DP_D2_L : TMS570LC43xx.Word;
         when Dp_D2_H =>
            VFP_DP_D2_H : TMS570LC43xx.Word;
         when Dp_D3_L =>
            VFP_DP_D3_L : TMS570LC43xx.Word;
         when Dp_D3_H =>
            VFP_DP_D3_H : TMS570LC43xx.Word;
         when Dp_D4_L =>
            VFP_DP_D4_L : TMS570LC43xx.Word;
         when Dp_D4_H =>
            VFP_DP_D4_H : TMS570LC43xx.Word;
         when Dp_D5_L =>
            VFP_DP_D5_L : TMS570LC43xx.Word;
         when Dp_D5_H =>
            VFP_DP_D5_H : TMS570LC43xx.Word;
         when Dp_D6_L =>
            VFP_DP_D6_L : TMS570LC43xx.Word;
         when Dp_D6_H =>
            VFP_DP_D6_H : TMS570LC43xx.Word;
         when Dp_D7_L =>
            VFP_DP_D7_L : TMS570LC43xx.Word;
         when Dp_D7_H =>
            VFP_DP_D7_H : TMS570LC43xx.Word;
         when Dp_D8_L =>
            VFP_DP_D8_L : TMS570LC43xx.Word;
         when Dp_D8_H =>
            VFP_DP_D8_H : TMS570LC43xx.Word;
         when Dp_D9_L =>
            VFP_DP_D9_L : TMS570LC43xx.Word;
         when Dp_D9_H =>
            VFP_DP_D9_H : TMS570LC43xx.Word;
         when Dp_D10_L =>
            VFP_DP_D10_L : TMS570LC43xx.Word;
         when Dp_D10_H =>
            VFP_DP_D10_H : TMS570LC43xx.Word;
         when Dp_D11_L =>
            VFP_DP_D11_L : TMS570LC43xx.Word;
         when Dp_D11_H =>
            VFP_DP_D11_H : TMS570LC43xx.Word;
         when Dp_D12_L =>
            VFP_DP_D12_L : TMS570LC43xx.Word;
         when Dp_D12_H =>
            VFP_DP_D12_H : TMS570LC43xx.Word;
         when Dp_D13_L =>
            VFP_DP_D13_L : TMS570LC43xx.Word;
         when Dp_D13_H =>
            VFP_DP_D13_H : TMS570LC43xx.Word;
         when Dp_D14_L =>
            VFP_DP_D14_L : TMS570LC43xx.Word;
         when Dp_D14_H =>
            VFP_DP_D14_H : TMS570LC43xx.Word;
         when Dp_D15_L =>
            VFP_DP_D15_L : TMS570LC43xx.Word;
         when Dp_D15_H =>
            VFP_DP_D15_H : TMS570LC43xx.Word;
         when Dp_D0 =>
            VFP_DP_D0 : TMS570LC43xx.UInt64;
         when Dp_D1 =>
            VFP_DP_D1 : TMS570LC43xx.UInt64;
         when Dp_D2 =>
            VFP_DP_D2 : TMS570LC43xx.UInt64;
         when Dp_D3 =>
            VFP_DP_D3 : TMS570LC43xx.UInt64;
         when Dp_D4 =>
            VFP_DP_D4 : TMS570LC43xx.UInt64;
         when Dp_D5 =>
            VFP_DP_D5 : TMS570LC43xx.UInt64;
         when Dp_D6 =>
            VFP_DP_D6 : TMS570LC43xx.UInt64;
         when Dp_D7 =>
            VFP_DP_D7 : TMS570LC43xx.UInt64;
         when Dp_D8 =>
            VFP_DP_D8 : TMS570LC43xx.UInt64;
         when Dp_D9 =>
            VFP_DP_D9 : TMS570LC43xx.UInt64;
         when Dp_D10 =>
            VFP_DP_D10 : TMS570LC43xx.UInt64;
         when Dp_D11 =>
            VFP_DP_D11 : TMS570LC43xx.UInt64;
         when Dp_D12 =>
            VFP_DP_D12 : TMS570LC43xx.UInt64;
         when Dp_D13 =>
            VFP_DP_D13 : TMS570LC43xx.UInt64;
         when Dp_D14 =>
            VFP_DP_D14 : TMS570LC43xx.UInt64;
         when Dp_D15 =>
            VFP_DP_D15 : TMS570LC43xx.UInt64;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for Vfp_Peripheral use record
      VFP_SYSTEM_FPSID at 0 range 0 .. 31;
      VFP_SYSTEM_FPSCR at 0 range 0 .. 31;
      VFP_SYSTEM_FPEXC at 0 range 0 .. 31;
      VFP_SYSTEM_MVFR0 at 0 range 0 .. 31;
      VFP_SYSTEM_MVFR1 at 0 range 0 .. 31;
      VFP_SP_S0        at 0 range 0 .. 31;
      VFP_SP_S1        at 0 range 0 .. 31;
      VFP_SP_S2        at 0 range 0 .. 31;
      VFP_SP_S3        at 0 range 0 .. 31;
      VFP_SP_S4        at 0 range 0 .. 31;
      VFP_SP_S5        at 0 range 0 .. 31;
      VFP_SP_S6        at 0 range 0 .. 31;
      VFP_SP_S7        at 0 range 0 .. 31;
      VFP_SP_S8        at 0 range 0 .. 31;
      VFP_SP_S9        at 0 range 0 .. 31;
      VFP_SP_S10       at 0 range 0 .. 31;
      VFP_SP_S11       at 0 range 0 .. 31;
      VFP_SP_S12       at 0 range 0 .. 31;
      VFP_SP_S13       at 0 range 0 .. 31;
      VFP_SP_S14       at 0 range 0 .. 31;
      VFP_SP_S15       at 0 range 0 .. 31;
      VFP_SP_S16       at 0 range 0 .. 31;
      VFP_SP_S17       at 0 range 0 .. 31;
      VFP_SP_S18       at 0 range 0 .. 31;
      VFP_SP_S19       at 0 range 0 .. 31;
      VFP_SP_S20       at 0 range 0 .. 31;
      VFP_SP_S21       at 0 range 0 .. 31;
      VFP_SP_S22       at 0 range 0 .. 31;
      VFP_SP_S23       at 0 range 0 .. 31;
      VFP_SP_S24       at 0 range 0 .. 31;
      VFP_SP_S25       at 0 range 0 .. 31;
      VFP_SP_S26       at 0 range 0 .. 31;
      VFP_SP_S27       at 0 range 0 .. 31;
      VFP_SP_S28       at 0 range 0 .. 31;
      VFP_SP_S29       at 0 range 0 .. 31;
      VFP_SP_S30       at 0 range 0 .. 31;
      VFP_SP_S31       at 0 range 0 .. 31;
      VFP_DP_D0_L      at 0 range 0 .. 31;
      VFP_DP_D0_H      at 0 range 0 .. 31;
      VFP_DP_D1_L      at 0 range 0 .. 31;
      VFP_DP_D1_H      at 0 range 0 .. 31;
      VFP_DP_D2_L      at 0 range 0 .. 31;
      VFP_DP_D2_H      at 0 range 0 .. 31;
      VFP_DP_D3_L      at 0 range 0 .. 31;
      VFP_DP_D3_H      at 0 range 0 .. 31;
      VFP_DP_D4_L      at 0 range 0 .. 31;
      VFP_DP_D4_H      at 0 range 0 .. 31;
      VFP_DP_D5_L      at 0 range 0 .. 31;
      VFP_DP_D5_H      at 0 range 0 .. 31;
      VFP_DP_D6_L      at 0 range 0 .. 31;
      VFP_DP_D6_H      at 0 range 0 .. 31;
      VFP_DP_D7_L      at 0 range 0 .. 31;
      VFP_DP_D7_H      at 0 range 0 .. 31;
      VFP_DP_D8_L      at 0 range 0 .. 31;
      VFP_DP_D8_H      at 0 range 0 .. 31;
      VFP_DP_D9_L      at 0 range 0 .. 31;
      VFP_DP_D9_H      at 0 range 0 .. 31;
      VFP_DP_D10_L     at 0 range 0 .. 31;
      VFP_DP_D10_H     at 0 range 0 .. 31;
      VFP_DP_D11_L     at 0 range 0 .. 31;
      VFP_DP_D11_H     at 0 range 0 .. 31;
      VFP_DP_D12_L     at 0 range 0 .. 31;
      VFP_DP_D12_H     at 0 range 0 .. 31;
      VFP_DP_D13_L     at 0 range 0 .. 31;
      VFP_DP_D13_H     at 0 range 0 .. 31;
      VFP_DP_D14_L     at 0 range 0 .. 31;
      VFP_DP_D14_H     at 0 range 0 .. 31;
      VFP_DP_D15_L     at 0 range 0 .. 31;
      VFP_DP_D15_H     at 0 range 0 .. 31;
      VFP_DP_D0        at 0 range 0 .. 63;
      VFP_DP_D1        at 0 range 0 .. 63;
      VFP_DP_D2        at 0 range 0 .. 63;
      VFP_DP_D3        at 0 range 0 .. 63;
      VFP_DP_D4        at 0 range 0 .. 63;
      VFP_DP_D5        at 0 range 0 .. 63;
      VFP_DP_D6        at 0 range 0 .. 63;
      VFP_DP_D7        at 0 range 0 .. 63;
      VFP_DP_D8        at 0 range 0 .. 63;
      VFP_DP_D9        at 0 range 0 .. 63;
      VFP_DP_D10       at 0 range 0 .. 63;
      VFP_DP_D11       at 0 range 0 .. 63;
      VFP_DP_D12       at 0 range 0 .. 63;
      VFP_DP_D13       at 0 range 0 .. 63;
      VFP_DP_D14       at 0 range 0 .. 63;
      VFP_DP_D15       at 0 range 0 .. 63;
   end record;

   --  IRQ Registers
   Vfp_Periph : aliased Vfp_Peripheral
     with Import, Address => Vfp_Base;

end TMS570LC43xx.Vfp;
