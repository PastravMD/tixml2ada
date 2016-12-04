--  This spec has been automatically generated from hercules_sys2_spec_5.8.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.R4_SYS2 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- PLLCTL3_Register --
   ----------------------

   subtype PLLCTL3_PllMul2_Field is TMS570LC43xx.Short;
   subtype PLLCTL3_RefClkDiv2_Field is TMS570LC43xx.UInt6;
   subtype PLLCTL3_Reserved_22_23_Field is TMS570LC43xx.UInt2;
   subtype PLLCTL3_PllDiv2_Field is TMS570LC43xx.UInt5;
   subtype PLLCTL3_OdPll2_Field is TMS570LC43xx.UInt3;

   --  PLL Control Register 3
   type PLLCTL3_Register is record
      --  PLL2 Multiplication Factor
      PllMul2        : PLLCTL3_PllMul2_Field := 16#0#;
      --  Reference Clock Divider
      RefClkDiv2     : PLLCTL3_RefClkDiv2_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_22_23 : PLLCTL3_Reserved_22_23_Field := 16#0#;
      --  PLL2 Output Clock Divider
      PllDiv2        : PLLCTL3_PllDiv2_Field := 16#0#;
      --  Internal PLL Output Divider
      OdPll2         : PLLCTL3_OdPll2_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PLLCTL3_Register use record
      PllMul2        at 16#0# range 0 .. 15;
      RefClkDiv2     at 16#0# range 16 .. 21;
      Reserved_22_23 at 16#0# range 22 .. 23;
      PllDiv2        at 16#0# range 24 .. 28;
      OdPll2         at 16#0# range 29 .. 31;
   end record;

   ------------------------
   -- STCCLKDIV_Register --
   ------------------------

   subtype STCCLKDIV_Reserved_0_23_Field is TMS570LC43xx.UInt24;
   subtype STCCLKDIV_ClkDiv_Field is TMS570LC43xx.UInt3;
   subtype STCCLKDIV_Reserved_27_31_Field is TMS570LC43xx.UInt5;

   --  CPU Logic BIST Clock Divider
   type STCCLKDIV_Register is record
      --  Read returns 0. Writes have no effect.
      Reserved_0_23  : STCCLKDIV_Reserved_0_23_Field := 16#0#;
      --  Clock divider/prescaler for CPU clock during logic BIST
      ClkDiv         : STCCLKDIV_ClkDiv_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_27_31 : STCCLKDIV_Reserved_27_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for STCCLKDIV_Register use record
      Reserved_0_23  at 16#0# range 0 .. 23;
      ClkDiv         at 16#0# range 24 .. 26;
      Reserved_27_31 at 16#0# range 27 .. 31;
   end record;

   ------------------------
   -- CLK2CNTRL_Register --
   ------------------------

   subtype CLK2CNTRL_VClk3R_Field is TMS570LC43xx.UInt4;
   subtype CLK2CNTRL_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  Clock 2 Control Register
   type CLK2CNTRL_Register is record
      --  VBUS clock3 ratio.
      VClk3R        : CLK2CNTRL_VClk3R_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_31 : CLK2CNTRL_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK2CNTRL_Register use record
      VClk3R        at 16#0# range 0 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   ------------------------
   -- VCLKACON1_Register --
   ------------------------

   subtype VCLKACON1_VClkA3S_Field is TMS570LC43xx.UInt4;
   subtype VCLKACON1_VClkA3DivCDDis_Field is TMS570LC43xx.Bit;
   subtype VCLKACON1_Reserved_5_7_Field is TMS570LC43xx.UInt3;
   subtype VCLKACON1_VClkA3R_Field is TMS570LC43xx.UInt3;
   subtype VCLKACON1_Reserved_11_15_Field is TMS570LC43xx.UInt5;
   subtype VCLKACON1_VClkA4S_Field is TMS570LC43xx.UInt4;
   subtype VCLKACON1_VClkA4DivCDDis_Field is TMS570LC43xx.Bit;
   subtype VCLKACON1_Reserved_21_23_Field is TMS570LC43xx.UInt3;
   subtype VCLKACON1_VClkA4R_Field is TMS570LC43xx.UInt3;
   subtype VCLKACON1_Reserved_27_31_Field is TMS570LC43xx.UInt5;

   --  Peripheral Asynchronous Clock Configuration 1 Register
   type VCLKACON1_Register is record
      --  Peripheral asynchronous clock 3 source.
      VClkA3S        : VCLKACON1_VClkA3S_Field := 16#0#;
      --  Disable the VCLKA3 divider output.
      VClkA3DivCDDis : VCLKACON1_VClkA3DivCDDis_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_5_7   : VCLKACON1_Reserved_5_7_Field := 16#0#;
      --  Clock divider for the VCLKA3 source.
      VClkA3R        : VCLKACON1_VClkA3R_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_11_15 : VCLKACON1_Reserved_11_15_Field := 16#0#;
      --  Peripheral asynchronous clock 4 source.
      VClkA4S        : VCLKACON1_VClkA4S_Field := 16#0#;
      --  Disable the VCLKA4 divider output.
      VClkA4DivCDDis : VCLKACON1_VClkA4DivCDDis_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_21_23 : VCLKACON1_Reserved_21_23_Field := 16#0#;
      --  Clock divider for the VCLKA4 source.
      VClkA4R        : VCLKACON1_VClkA4R_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_27_31 : VCLKACON1_Reserved_27_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VCLKACON1_Register use record
      VClkA3S        at 16#0# range 0 .. 3;
      VClkA3DivCDDis at 16#0# range 4 .. 4;
      Reserved_5_7   at 16#0# range 5 .. 7;
      VClkA3R        at 16#0# range 8 .. 10;
      Reserved_11_15 at 16#0# range 11 .. 15;
      VClkA4S        at 16#0# range 16 .. 19;
      VClkA4DivCDDis at 16#0# range 20 .. 20;
      Reserved_21_23 at 16#0# range 21 .. 23;
      VClkA4R        at 16#0# range 24 .. 26;
      Reserved_27_31 at 16#0# range 27 .. 31;
   end record;

   ------------------------
   -- HCLK1Ctrl_Register --
   ------------------------

   subtype HCLK1Ctrl_HClkR_Field is TMS570LC43xx.UInt2;
   subtype HCLK1Ctrl_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  HCLK1 Control Register
   type HCLK1Ctrl_Register is record
      --  HCLK divider value.
      HClkR         : HCLK1Ctrl_HClkR_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_2_31 : HCLK1Ctrl_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCLK1Ctrl_Register use record
      HClkR         at 16#0# range 0 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   ----------------------
   -- CLKSLIP_Register --
   ----------------------

   subtype CLKSLIP_Pll1RFSlipFilterKey_Field is TMS570LC43xx.UInt4;
   subtype CLKSLIP_Reserved_4_7_Field is TMS570LC43xx.UInt4;
   subtype CLKSLIP_Pll1RFSlipFilterCnt_Field is TMS570LC43xx.UInt6;
   subtype CLKSLIP_Reserved_14_31_Field is TMS570LC43xx.UInt18;

   --  Clock Slip Register
   type CLKSLIP_Register is record
      --  Enable the PLL1 RFSLIP filtering.
      Pll1RFSlipFilterKey : CLKSLIP_Pll1RFSlipFilterKey_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_7        : CLKSLIP_Reserved_4_7_Field := 16#0#;
      --  Configure the count for the filtered PLL1 RFSLIP.
      Pll1RFSlipFilterCnt : CLKSLIP_Pll1RFSlipFilterCnt_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_14_31      : CLKSLIP_Reserved_14_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKSLIP_Register use record
      Pll1RFSlipFilterKey at 16#0# range 0 .. 3;
      Reserved_4_7        at 16#0# range 4 .. 7;
      Pll1RFSlipFilterCnt at 16#0# range 8 .. 13;
      Reserved_14_31      at 16#0# range 14 .. 31;
   end record;

   -------------------------
   -- EFC_CTLREG_Register --
   -------------------------

   subtype EFC_CTLREG_EfcInstrWEn_Field is TMS570LC43xx.UInt4;
   subtype EFC_CTLREG_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  EFUSE Controller Control Register
   type EFC_CTLREG_Register is record
      --  Enable user write of 4 EFUSE controller instructions.
      EfcInstrWEn   : EFC_CTLREG_EfcInstrWEn_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_31 : EFC_CTLREG_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EFC_CTLREG_Register use record
      EfcInstrWEn   at 16#0# range 0 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type Sys2_Disc is
     (
      Slip,
      Sys2_Disc_2Slip);

   --  R4 System Registers Second Frame
   type Sys2_Peripheral
     (Discriminent : Sys2_Disc := Slip)
   is record
      --  PLL Control Register 3
      PLLCTL3       : PLLCTL3_Register;
      --  CPU Logic BIST Clock Divider
      STCCLKDIV     : STCCLKDIV_Register;
      --  Clock Hibernate Mode Global Enable Register
      CLKHB_GLBREG  : TMS570LC43xx.Word;
      --  Clocked Hibernate RTI Domain Control Register
      CLKHB_RTIDREG : TMS570LC43xx.Word;
      --  Hibernate Clock Domain Status Register
      HBCD_STAT     : TMS570LC43xx.Word;
      --  Clock Trim 1 Register
      CLKTRMI1      : TMS570LC43xx.Word;
      --  ECP Control Register
      ECPCNTL       : TMS570LC43xx.Word;
      --  ECP Control Register 1
      ECPCNTL1      : TMS570LC43xx.Word;
      --  Clock 2 Control Register
      CLK2CNTRL     : CLK2CNTRL_Register;
      --  Peripheral Asynchronous Clock Configuration 1 Register
      VCLKACON1     : VCLKACON1_Register;
      --  Clock 3 Control Register
      CLK3CNTRL     : TMS570LC43xx.Word;
      --  Peripheral Asynchronous Clock Configuration 2 Register
      VCLKACON2     : TMS570LC43xx.Word;
      --  Peripheral Asynchronous Clock Configuration 3 Register
      VCLKACON3     : TMS570LC43xx.Word;
      --  HCLK1 Control Register
      HCLK1Ctrl     : HCLK1Ctrl_Register;
      --  IP ECC Error Enable Register
      IP1ECCERREN   : TMS570LC43xx.Word;
      --  EFUSE Controller Control Register
      EFC_CTLREG    : EFC_CTLREG_Register;
      --  Die Identification Register Lower Word
      DIEIDL_REG0   : TMS570LC43xx.Word;
      --  Die Identification Register Upper Word
      DIEIDH_REG1   : TMS570LC43xx.Word;
      --  Die Identification Register Lower Word
      DIEIDH_REG2   : TMS570LC43xx.Word;
      --  Die Identification Register Upper Word
      DIEIDH_REG3   : TMS570LC43xx.Word;
      case Discriminent is
         when Slip =>
            --  Clock Slip Register
            CLKSLIP : CLKSLIP_Register;
         when Sys2_Disc_2Slip =>
            --  Clock2 Slip Register
            CLK2SLIP : TMS570LC43xx.Word;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for Sys2_Peripheral use record
      PLLCTL3       at 16#0# range 0 .. 31;
      STCCLKDIV     at 16#8# range 0 .. 31;
      CLKHB_GLBREG  at 16#C# range 0 .. 31;
      CLKHB_RTIDREG at 16#10# range 0 .. 31;
      HBCD_STAT     at 16#14# range 0 .. 31;
      CLKTRMI1      at 16#20# range 0 .. 31;
      ECPCNTL       at 16#24# range 0 .. 31;
      ECPCNTL1      at 16#28# range 0 .. 31;
      CLK2CNTRL     at 16#3C# range 0 .. 31;
      VCLKACON1     at 16#40# range 0 .. 31;
      CLK3CNTRL     at 16#44# range 0 .. 31;
      VCLKACON2     at 16#48# range 0 .. 31;
      VCLKACON3     at 16#50# range 0 .. 31;
      HCLK1Ctrl     at 16#54# range 0 .. 31;
      IP1ECCERREN   at 16#78# range 0 .. 31;
      EFC_CTLREG    at 16#EC# range 0 .. 31;
      DIEIDL_REG0   at 16#F0# range 0 .. 31;
      DIEIDH_REG1   at 16#F4# range 0 .. 31;
      DIEIDH_REG2   at 16#F8# range 0 .. 31;
      DIEIDH_REG3   at 16#FC# range 0 .. 31;
      CLKSLIP       at 16#70# range 0 .. 31;
      CLK2SLIP      at 16#70# range 0 .. 31;
   end record;

   --  R4 System Registers Second Frame
   Sys2_Periph : aliased Sys2_Peripheral
     with Import, Address => Sys2_Base;

end TMS570LC43xx.R4_SYS2;
