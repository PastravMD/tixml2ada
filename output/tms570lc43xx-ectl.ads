--  This spec has been automatically generated from hercules_cpgmac_spec_1.2.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.ECTL is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- SOFTRESET_Register --
   ------------------------

   subtype SOFTRESET_RESET_Field is TMS570LC43xx.Bit;
   subtype SOFTRESET_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Software Reset Register
   type SOFTRESET_Register is record
      --  Soft Reset for CPGMACSS_R modules INT, REGS, CPPI
      RESET         : SOFTRESET_RESET_Field := 16#0#;
      Reserved_1_31 : SOFTRESET_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SOFTRESET_Register use record
      RESET         at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   -------------------------
   -- INTCONTROL_Register --
   -------------------------

   subtype INTCONTROL_INTPRESCALE_Field is TMS570LC43xx.UInt12;
   subtype INTCONTROL_Reserved_12_15_Field is TMS570LC43xx.UInt4;
   subtype INTCONTROL_C0RXPACEEN_Field is TMS570LC43xx.Bit;
   subtype INTCONTROL_C0TXPACEEN_Field is TMS570LC43xx.Bit;
   subtype INTCONTROL_C1RXPACEEN_Field is TMS570LC43xx.Bit;
   subtype INTCONTROL_C1TXPACEEN_Field is TMS570LC43xx.Bit;
   subtype INTCONTROL_C2RXPACEEN_Field is TMS570LC43xx.Bit;
   subtype INTCONTROL_C2TXPACEEN_Field is TMS570LC43xx.Bit;
   subtype INTCONTROL_Reserved_22_30_Field is TMS570LC43xx.UInt9;
   subtype INTCONTROL_Reserved_31_31_Field is TMS570LC43xx.Bit;

   --  Interrupt Control Register
   type INTCONTROL_Register is record
      --  Interrupt Counter Prescaler (Number of 4us VBUSP_CLKs)
      INTPRESCALE    : INTCONTROL_INTPRESCALE_Field := 16#0#;
      Reserved_12_15 : INTCONTROL_Reserved_12_15_Field := 16#0#;
      --  C0_RX_PULSE Pacing
      C0RXPACEEN     : INTCONTROL_C0RXPACEEN_Field := 16#0#;
      --  C0_TX_PULSE Pacing
      C0TXPACEEN     : INTCONTROL_C0TXPACEEN_Field := 16#0#;
      --  C1_RX_PULSE Pacing
      C1RXPACEEN     : INTCONTROL_C1RXPACEEN_Field := 16#0#;
      --  C1_TX_PULSE Pacing
      C1TXPACEEN     : INTCONTROL_C1TXPACEEN_Field := 16#0#;
      --  C2_RX_PULSE Pacing
      C2RXPACEEN     : INTCONTROL_C2RXPACEEN_Field := 16#0#;
      --  C2_TX_PULSE Pacing
      C2TXPACEEN     : INTCONTROL_C2TXPACEEN_Field := 16#0#;
      Reserved_22_30 : INTCONTROL_Reserved_22_30_Field := 16#0#;
      --  Interrupt Test
      Reserved_31_31 : INTCONTROL_Reserved_31_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTCONTROL_Register use record
      INTPRESCALE    at 16#0# range 0 .. 11;
      Reserved_12_15 at 16#0# range 12 .. 15;
      C0RXPACEEN     at 16#0# range 16 .. 16;
      C0TXPACEEN     at 16#0# range 17 .. 17;
      C1RXPACEEN     at 16#0# range 18 .. 18;
      C1TXPACEEN     at 16#0# range 19 .. 19;
      C2RXPACEEN     at 16#0# range 20 .. 20;
      C2TXPACEEN     at 16#0# range 21 .. 21;
      Reserved_22_30 at 16#0# range 22 .. 30;
      Reserved_31_31 at 16#0# range 31 .. 31;
   end record;

   ---------------------------
   -- C0RXTHRESHEN_Register --
   ---------------------------

   subtype C0RXTHRESHEN_RXCH0THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHEN_RXCH1THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHEN_RXCH2THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHEN_RXCH3THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHEN_RXCH4THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHEN_RXCH5THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHEN_RXCH6THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHEN_RXCH7THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHEN_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 0 Receive Threshold Enable Register
   type C0RXTHRESHEN_Register is record
      --  Corresponds to the interrupt for RXCH0THRESH
      RXCH0THRESHEN : C0RXTHRESHEN_RXCH0THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1THRESH
      RXCH1THRESHEN : C0RXTHRESHEN_RXCH1THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2THRESH
      RXCH2THRESHEN : C0RXTHRESHEN_RXCH2THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3THRESH
      RXCH3THRESHEN : C0RXTHRESHEN_RXCH3THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4THRESH
      RXCH4THRESHEN : C0RXTHRESHEN_RXCH4THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5THRESH
      RXCH5THRESHEN : C0RXTHRESHEN_RXCH5THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6THRESH
      RXCH6THRESHEN : C0RXTHRESHEN_RXCH6THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7THRESH
      RXCH7THRESHEN : C0RXTHRESHEN_RXCH7THRESHEN_Field := 16#0#;
      Reserved_8_31 : C0RXTHRESHEN_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0RXTHRESHEN_Register use record
      RXCH0THRESHEN at 16#0# range 0 .. 0;
      RXCH1THRESHEN at 16#0# range 1 .. 1;
      RXCH2THRESHEN at 16#0# range 2 .. 2;
      RXCH3THRESHEN at 16#0# range 3 .. 3;
      RXCH4THRESHEN at 16#0# range 4 .. 4;
      RXCH5THRESHEN at 16#0# range 5 .. 5;
      RXCH6THRESHEN at 16#0# range 6 .. 6;
      RXCH7THRESHEN at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ---------------------
   -- C0RXEN_Register --
   ---------------------

   subtype C0RXEN_RXCH0EN_Field is TMS570LC43xx.Bit;
   subtype C0RXEN_RXCH1EN_Field is TMS570LC43xx.Bit;
   subtype C0RXEN_RXCH2EN_Field is TMS570LC43xx.Bit;
   subtype C0RXEN_RXCH3EN_Field is TMS570LC43xx.Bit;
   subtype C0RXEN_RXCH4EN_Field is TMS570LC43xx.Bit;
   subtype C0RXEN_RXCH5EN_Field is TMS570LC43xx.Bit;
   subtype C0RXEN_RXCH6EN_Field is TMS570LC43xx.Bit;
   subtype C0RXEN_RXCH7EN_Field is TMS570LC43xx.Bit;
   subtype C0RXEN_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 0 Receive Enable Register
   type C0RXEN_Register is record
      --  Corresponds to the interrupt for RXCH0EN
      RXCH0EN       : C0RXEN_RXCH0EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1EN
      RXCH1EN       : C0RXEN_RXCH1EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2EN
      RXCH2EN       : C0RXEN_RXCH2EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3EN
      RXCH3EN       : C0RXEN_RXCH3EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4EN
      RXCH4EN       : C0RXEN_RXCH4EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5EN
      RXCH5EN       : C0RXEN_RXCH5EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6EN
      RXCH6EN       : C0RXEN_RXCH6EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7EN
      RXCH7EN       : C0RXEN_RXCH7EN_Field := 16#0#;
      Reserved_8_31 : C0RXEN_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0RXEN_Register use record
      RXCH0EN       at 16#0# range 0 .. 0;
      RXCH1EN       at 16#0# range 1 .. 1;
      RXCH2EN       at 16#0# range 2 .. 2;
      RXCH3EN       at 16#0# range 3 .. 3;
      RXCH4EN       at 16#0# range 4 .. 4;
      RXCH5EN       at 16#0# range 5 .. 5;
      RXCH6EN       at 16#0# range 6 .. 6;
      RXCH7EN       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ---------------------
   -- C0TXEN_Register --
   ---------------------

   subtype C0TXEN_TXCH0EN_Field is TMS570LC43xx.Bit;
   subtype C0TXEN_TXCH1EN_Field is TMS570LC43xx.Bit;
   subtype C0TXEN_TXCH2EN_Field is TMS570LC43xx.Bit;
   subtype C0TXEN_TXCH3EN_Field is TMS570LC43xx.Bit;
   subtype C0TXEN_TXCH4EN_Field is TMS570LC43xx.Bit;
   subtype C0TXEN_TXCH5EN_Field is TMS570LC43xx.Bit;
   subtype C0TXEN_TXCH6EN_Field is TMS570LC43xx.Bit;
   subtype C0TXEN_TXCH7EN_Field is TMS570LC43xx.Bit;
   subtype C0TXEN_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 0 Transmit Enable Register
   type C0TXEN_Register is record
      --  Corresponds to the interrupt for TXCH0EN
      TXCH0EN       : C0TXEN_TXCH0EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH1EN
      TXCH1EN       : C0TXEN_TXCH1EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH2EN
      TXCH2EN       : C0TXEN_TXCH2EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH3EN
      TXCH3EN       : C0TXEN_TXCH3EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH4EN
      TXCH4EN       : C0TXEN_TXCH4EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH5EN
      TXCH5EN       : C0TXEN_TXCH5EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH6EN
      TXCH6EN       : C0TXEN_TXCH6EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH7EN
      TXCH7EN       : C0TXEN_TXCH7EN_Field := 16#0#;
      Reserved_8_31 : C0TXEN_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0TXEN_Register use record
      TXCH0EN       at 16#0# range 0 .. 0;
      TXCH1EN       at 16#0# range 1 .. 1;
      TXCH2EN       at 16#0# range 2 .. 2;
      TXCH3EN       at 16#0# range 3 .. 3;
      TXCH4EN       at 16#0# range 4 .. 4;
      TXCH5EN       at 16#0# range 5 .. 5;
      TXCH6EN       at 16#0# range 6 .. 6;
      TXCH7EN       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- C0MISCEN_Register --
   -----------------------

   subtype C0MISCEN_USERINT0EN_Field is TMS570LC43xx.Bit;
   subtype C0MISCEN_LINKINT0EN_Field is TMS570LC43xx.Bit;
   subtype C0MISCEN_HOSTPENDEN_Field is TMS570LC43xx.Bit;
   subtype C0MISCEN_STATPENDEN_Field is TMS570LC43xx.Bit;
   subtype C0MISCEN_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  Core 0 Misc Interrupt Enable Register
   type C0MISCEN_Register is record
      --  MDIO USERINT[0]
      USERINT0EN    : C0MISCEN_USERINT0EN_Field := 16#0#;
      --  MDIO LINKINT[0]
      LINKINT0EN    : C0MISCEN_LINKINT0EN_Field := 16#0#;
      --  Host Pending Interrupt
      HOSTPENDEN    : C0MISCEN_HOSTPENDEN_Field := 16#0#;
      --  Status Pending Interrupt
      STATPENDEN    : C0MISCEN_STATPENDEN_Field := 16#0#;
      Reserved_4_31 : C0MISCEN_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0MISCEN_Register use record
      USERINT0EN    at 16#0# range 0 .. 0;
      LINKINT0EN    at 16#0# range 1 .. 1;
      HOSTPENDEN    at 16#0# range 2 .. 2;
      STATPENDEN    at 16#0# range 3 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   ---------------------------
   -- C1RXTHRESHEN_Register --
   ---------------------------

   subtype C1RXTHRESHEN_RXCH0THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHEN_RXCH1THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHEN_RXCH2THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHEN_RXCH3THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHEN_RXCH4THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHEN_RXCH5THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHEN_RXCH6THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHEN_RXCH7THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHEN_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 1 Receive Threshold Enable Register
   type C1RXTHRESHEN_Register is record
      --  Corresponds to the interrupt for RXCH0THRESH
      RXCH0THRESHEN : C1RXTHRESHEN_RXCH0THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1THRESH
      RXCH1THRESHEN : C1RXTHRESHEN_RXCH1THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2THRESH
      RXCH2THRESHEN : C1RXTHRESHEN_RXCH2THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3THRESH
      RXCH3THRESHEN : C1RXTHRESHEN_RXCH3THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4THRESH
      RXCH4THRESHEN : C1RXTHRESHEN_RXCH4THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5THRESH
      RXCH5THRESHEN : C1RXTHRESHEN_RXCH5THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6THRESH
      RXCH6THRESHEN : C1RXTHRESHEN_RXCH6THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7THRESH
      RXCH7THRESHEN : C1RXTHRESHEN_RXCH7THRESHEN_Field := 16#0#;
      Reserved_8_31 : C1RXTHRESHEN_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1RXTHRESHEN_Register use record
      RXCH0THRESHEN at 16#0# range 0 .. 0;
      RXCH1THRESHEN at 16#0# range 1 .. 1;
      RXCH2THRESHEN at 16#0# range 2 .. 2;
      RXCH3THRESHEN at 16#0# range 3 .. 3;
      RXCH4THRESHEN at 16#0# range 4 .. 4;
      RXCH5THRESHEN at 16#0# range 5 .. 5;
      RXCH6THRESHEN at 16#0# range 6 .. 6;
      RXCH7THRESHEN at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ---------------------
   -- C1RXEN_Register --
   ---------------------

   subtype C1RXEN_RXCH0EN_Field is TMS570LC43xx.Bit;
   subtype C1RXEN_RXCH1EN_Field is TMS570LC43xx.Bit;
   subtype C1RXEN_RXCH2EN_Field is TMS570LC43xx.Bit;
   subtype C1RXEN_RXCH3EN_Field is TMS570LC43xx.Bit;
   subtype C1RXEN_RXCH4EN_Field is TMS570LC43xx.Bit;
   subtype C1RXEN_RXCH5EN_Field is TMS570LC43xx.Bit;
   subtype C1RXEN_RXCH6EN_Field is TMS570LC43xx.Bit;
   subtype C1RXEN_RXCH7EN_Field is TMS570LC43xx.Bit;
   subtype C1RXEN_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 1 Receive Enable Register
   type C1RXEN_Register is record
      --  Corresponds to the interrupt for RXCH0EN
      RXCH0EN       : C1RXEN_RXCH0EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1EN
      RXCH1EN       : C1RXEN_RXCH1EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2EN
      RXCH2EN       : C1RXEN_RXCH2EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3EN
      RXCH3EN       : C1RXEN_RXCH3EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4EN
      RXCH4EN       : C1RXEN_RXCH4EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5EN
      RXCH5EN       : C1RXEN_RXCH5EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6EN
      RXCH6EN       : C1RXEN_RXCH6EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7EN
      RXCH7EN       : C1RXEN_RXCH7EN_Field := 16#0#;
      Reserved_8_31 : C1RXEN_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1RXEN_Register use record
      RXCH0EN       at 16#0# range 0 .. 0;
      RXCH1EN       at 16#0# range 1 .. 1;
      RXCH2EN       at 16#0# range 2 .. 2;
      RXCH3EN       at 16#0# range 3 .. 3;
      RXCH4EN       at 16#0# range 4 .. 4;
      RXCH5EN       at 16#0# range 5 .. 5;
      RXCH6EN       at 16#0# range 6 .. 6;
      RXCH7EN       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ---------------------
   -- C1TXEN_Register --
   ---------------------

   subtype C1TXEN_TXCH0EN_Field is TMS570LC43xx.Bit;
   subtype C1TXEN_TXCH1EN_Field is TMS570LC43xx.Bit;
   subtype C1TXEN_TXCH2EN_Field is TMS570LC43xx.Bit;
   subtype C1TXEN_TXCH3EN_Field is TMS570LC43xx.Bit;
   subtype C1TXEN_TXCH4EN_Field is TMS570LC43xx.Bit;
   subtype C1TXEN_TXCH5EN_Field is TMS570LC43xx.Bit;
   subtype C1TXEN_TXCH6EN_Field is TMS570LC43xx.Bit;
   subtype C1TXEN_TXCH7EN_Field is TMS570LC43xx.Bit;
   subtype C1TXEN_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 1 Transmit Enable Register
   type C1TXEN_Register is record
      --  Corresponds to the interrupt for TXCH0EN
      TXCH0EN       : C1TXEN_TXCH0EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH1EN
      TXCH1EN       : C1TXEN_TXCH1EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH2EN
      TXCH2EN       : C1TXEN_TXCH2EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH3EN
      TXCH3EN       : C1TXEN_TXCH3EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH4EN
      TXCH4EN       : C1TXEN_TXCH4EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH5EN
      TXCH5EN       : C1TXEN_TXCH5EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH6EN
      TXCH6EN       : C1TXEN_TXCH6EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH7EN
      TXCH7EN       : C1TXEN_TXCH7EN_Field := 16#0#;
      Reserved_8_31 : C1TXEN_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1TXEN_Register use record
      TXCH0EN       at 16#0# range 0 .. 0;
      TXCH1EN       at 16#0# range 1 .. 1;
      TXCH2EN       at 16#0# range 2 .. 2;
      TXCH3EN       at 16#0# range 3 .. 3;
      TXCH4EN       at 16#0# range 4 .. 4;
      TXCH5EN       at 16#0# range 5 .. 5;
      TXCH6EN       at 16#0# range 6 .. 6;
      TXCH7EN       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- C1MISCEN_Register --
   -----------------------

   subtype C1MISCEN_USERINT0EN_Field is TMS570LC43xx.Bit;
   subtype C1MISCEN_LINKINT0EN_Field is TMS570LC43xx.Bit;
   subtype C1MISCEN_HOSTPENDEN_Field is TMS570LC43xx.Bit;
   subtype C1MISCEN_STATPENDEN_Field is TMS570LC43xx.Bit;
   subtype C1MISCEN_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  Core 1 Misc Enable Register
   type C1MISCEN_Register is record
      --  MDIO USERINT[0]
      USERINT0EN    : C1MISCEN_USERINT0EN_Field := 16#0#;
      --  MDIO LINKINT[0]
      LINKINT0EN    : C1MISCEN_LINKINT0EN_Field := 16#0#;
      --  Host Pending Interrupt
      HOSTPENDEN    : C1MISCEN_HOSTPENDEN_Field := 16#0#;
      --  Status Pending Interrupt
      STATPENDEN    : C1MISCEN_STATPENDEN_Field := 16#0#;
      Reserved_4_31 : C1MISCEN_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1MISCEN_Register use record
      USERINT0EN    at 16#0# range 0 .. 0;
      LINKINT0EN    at 16#0# range 1 .. 1;
      HOSTPENDEN    at 16#0# range 2 .. 2;
      STATPENDEN    at 16#0# range 3 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   ---------------------------
   -- C2RXTHRESHEN_Register --
   ---------------------------

   subtype C2RXTHRESHEN_RXCH0THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHEN_RXCH1THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHEN_RXCH2THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHEN_RXCH3THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHEN_RXCH4THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHEN_RXCH5THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHEN_RXCH6THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHEN_RXCH7THRESHEN_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHEN_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 2 Receive Threshold Enable Register
   type C2RXTHRESHEN_Register is record
      --  Corresponds to the interrupt for RXCH0THRESH
      RXCH0THRESHEN : C2RXTHRESHEN_RXCH0THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1THRESH
      RXCH1THRESHEN : C2RXTHRESHEN_RXCH1THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2THRESH
      RXCH2THRESHEN : C2RXTHRESHEN_RXCH2THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3THRESH
      RXCH3THRESHEN : C2RXTHRESHEN_RXCH3THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4THRESH
      RXCH4THRESHEN : C2RXTHRESHEN_RXCH4THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5THRESH
      RXCH5THRESHEN : C2RXTHRESHEN_RXCH5THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6THRESH
      RXCH6THRESHEN : C2RXTHRESHEN_RXCH6THRESHEN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7THRESH
      RXCH7THRESHEN : C2RXTHRESHEN_RXCH7THRESHEN_Field := 16#0#;
      Reserved_8_31 : C2RXTHRESHEN_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2RXTHRESHEN_Register use record
      RXCH0THRESHEN at 16#0# range 0 .. 0;
      RXCH1THRESHEN at 16#0# range 1 .. 1;
      RXCH2THRESHEN at 16#0# range 2 .. 2;
      RXCH3THRESHEN at 16#0# range 3 .. 3;
      RXCH4THRESHEN at 16#0# range 4 .. 4;
      RXCH5THRESHEN at 16#0# range 5 .. 5;
      RXCH6THRESHEN at 16#0# range 6 .. 6;
      RXCH7THRESHEN at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ---------------------
   -- C2RXEN_Register --
   ---------------------

   subtype C2RXEN_RXCH0EN_Field is TMS570LC43xx.Bit;
   subtype C2RXEN_RXCH1EN_Field is TMS570LC43xx.Bit;
   subtype C2RXEN_RXCH2EN_Field is TMS570LC43xx.Bit;
   subtype C2RXEN_RXCH3EN_Field is TMS570LC43xx.Bit;
   subtype C2RXEN_RXCH4EN_Field is TMS570LC43xx.Bit;
   subtype C2RXEN_RXCH5EN_Field is TMS570LC43xx.Bit;
   subtype C2RXEN_RXCH6EN_Field is TMS570LC43xx.Bit;
   subtype C2RXEN_RXCH7EN_Field is TMS570LC43xx.Bit;
   subtype C2RXEN_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 2 Receive Enable Register
   type C2RXEN_Register is record
      --  Corresponds to the interrupt for RXCH0EN
      RXCH0EN       : C2RXEN_RXCH0EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1EN
      RXCH1EN       : C2RXEN_RXCH1EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2EN
      RXCH2EN       : C2RXEN_RXCH2EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3EN
      RXCH3EN       : C2RXEN_RXCH3EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4EN
      RXCH4EN       : C2RXEN_RXCH4EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5EN
      RXCH5EN       : C2RXEN_RXCH5EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6EN
      RXCH6EN       : C2RXEN_RXCH6EN_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7EN
      RXCH7EN       : C2RXEN_RXCH7EN_Field := 16#0#;
      Reserved_8_31 : C2RXEN_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2RXEN_Register use record
      RXCH0EN       at 16#0# range 0 .. 0;
      RXCH1EN       at 16#0# range 1 .. 1;
      RXCH2EN       at 16#0# range 2 .. 2;
      RXCH3EN       at 16#0# range 3 .. 3;
      RXCH4EN       at 16#0# range 4 .. 4;
      RXCH5EN       at 16#0# range 5 .. 5;
      RXCH6EN       at 16#0# range 6 .. 6;
      RXCH7EN       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ---------------------
   -- C2TXEN_Register --
   ---------------------

   subtype C2TXEN_TXCH0EN_Field is TMS570LC43xx.Bit;
   subtype C2TXEN_TXCH1EN_Field is TMS570LC43xx.Bit;
   subtype C2TXEN_TXCH2EN_Field is TMS570LC43xx.Bit;
   subtype C2TXEN_TXCH3EN_Field is TMS570LC43xx.Bit;
   subtype C2TXEN_TXCH4EN_Field is TMS570LC43xx.Bit;
   subtype C2TXEN_TXCH5EN_Field is TMS570LC43xx.Bit;
   subtype C2TXEN_TXCH6EN_Field is TMS570LC43xx.Bit;
   subtype C2TXEN_TXCH7EN_Field is TMS570LC43xx.Bit;
   subtype C2TXEN_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 2 Transmit Enable Register
   type C2TXEN_Register is record
      --  Corresponds to the interrupt for TXCH0EN
      TXCH0EN       : C2TXEN_TXCH0EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH1EN
      TXCH1EN       : C2TXEN_TXCH1EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH2EN
      TXCH2EN       : C2TXEN_TXCH2EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH3EN
      TXCH3EN       : C2TXEN_TXCH3EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH4EN
      TXCH4EN       : C2TXEN_TXCH4EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH5EN
      TXCH5EN       : C2TXEN_TXCH5EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH6EN
      TXCH6EN       : C2TXEN_TXCH6EN_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH7EN
      TXCH7EN       : C2TXEN_TXCH7EN_Field := 16#0#;
      Reserved_8_31 : C2TXEN_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2TXEN_Register use record
      TXCH0EN       at 16#0# range 0 .. 0;
      TXCH1EN       at 16#0# range 1 .. 1;
      TXCH2EN       at 16#0# range 2 .. 2;
      TXCH3EN       at 16#0# range 3 .. 3;
      TXCH4EN       at 16#0# range 4 .. 4;
      TXCH5EN       at 16#0# range 5 .. 5;
      TXCH6EN       at 16#0# range 6 .. 6;
      TXCH7EN       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- C2MISCEN_Register --
   -----------------------

   subtype C2MISCEN_USERINT0EN_Field is TMS570LC43xx.Bit;
   subtype C2MISCEN_LINKINT0EN_Field is TMS570LC43xx.Bit;
   subtype C2MISCEN_HOSTPENDEN_Field is TMS570LC43xx.Bit;
   subtype C2MISCEN_STATPENDEN_Field is TMS570LC43xx.Bit;
   subtype C2MISCEN_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  Core 2 Misc Enable Register
   type C2MISCEN_Register is record
      --  MDIO USERINT[0]
      USERINT0EN    : C2MISCEN_USERINT0EN_Field := 16#0#;
      --  MDIO LINKINT[0]
      LINKINT0EN    : C2MISCEN_LINKINT0EN_Field := 16#0#;
      --  Host Pending Interrupt
      HOSTPENDEN    : C2MISCEN_HOSTPENDEN_Field := 16#0#;
      --  Status Pending Interrupt
      STATPENDEN    : C2MISCEN_STATPENDEN_Field := 16#0#;
      Reserved_4_31 : C2MISCEN_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2MISCEN_Register use record
      USERINT0EN    at 16#0# range 0 .. 0;
      LINKINT0EN    at 16#0# range 1 .. 1;
      HOSTPENDEN    at 16#0# range 2 .. 2;
      STATPENDEN    at 16#0# range 3 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   -----------------------------
   -- C0RXTHRESHSTAT_Register --
   -----------------------------

   subtype C0RXTHRESHSTAT_RXCH0THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHSTAT_RXCH1THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHSTAT_RXCH2THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHSTAT_RXCH3THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHSTAT_RXCH4THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHSTAT_RXCH5THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHSTAT_RXCH6THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHSTAT_RXCH7THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C0RXTHRESHSTAT_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 0 Receive Threshold Status Register
   type C0RXTHRESHSTAT_Register is record
      --  Corresponds to the interrupt for RXCH0THRESH
      RXCH0THRESHSTAT : C0RXTHRESHSTAT_RXCH0THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1THRESH
      RXCH1THRESHSTAT : C0RXTHRESHSTAT_RXCH1THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2THRESH
      RXCH2THRESHSTAT : C0RXTHRESHSTAT_RXCH2THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3THRESH
      RXCH3THRESHSTAT : C0RXTHRESHSTAT_RXCH3THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4THRESH
      RXCH4THRESHSTAT : C0RXTHRESHSTAT_RXCH4THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5THRESH
      RXCH5THRESHSTAT : C0RXTHRESHSTAT_RXCH5THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6THRESH
      RXCH6THRESHSTAT : C0RXTHRESHSTAT_RXCH6THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7THRESH
      RXCH7THRESHSTAT : C0RXTHRESHSTAT_RXCH7THRESHSTAT_Field := 16#0#;
      Reserved_8_31   : C0RXTHRESHSTAT_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0RXTHRESHSTAT_Register use record
      RXCH0THRESHSTAT at 16#0# range 0 .. 0;
      RXCH1THRESHSTAT at 16#0# range 1 .. 1;
      RXCH2THRESHSTAT at 16#0# range 2 .. 2;
      RXCH3THRESHSTAT at 16#0# range 3 .. 3;
      RXCH4THRESHSTAT at 16#0# range 4 .. 4;
      RXCH5THRESHSTAT at 16#0# range 5 .. 5;
      RXCH6THRESHSTAT at 16#0# range 6 .. 6;
      RXCH7THRESHSTAT at 16#0# range 7 .. 7;
      Reserved_8_31   at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- C0RXSTAT_Register --
   -----------------------

   subtype C0RXSTAT_RXCH0STAT_Field is TMS570LC43xx.Bit;
   subtype C0RXSTAT_RXCH1STAT_Field is TMS570LC43xx.Bit;
   subtype C0RXSTAT_RXCH2STAT_Field is TMS570LC43xx.Bit;
   subtype C0RXSTAT_RXCH3STAT_Field is TMS570LC43xx.Bit;
   subtype C0RXSTAT_RXCH4STAT_Field is TMS570LC43xx.Bit;
   subtype C0RXSTAT_RXCH5STAT_Field is TMS570LC43xx.Bit;
   subtype C0RXSTAT_RXCH6STAT_Field is TMS570LC43xx.Bit;
   subtype C0RXSTAT_RXCH7STAT_Field is TMS570LC43xx.Bit;
   subtype C0RXSTAT_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 0 Receive Status Register
   type C0RXSTAT_Register is record
      --  Corresponds to the interrupt for RXCH0STAT
      RXCH0STAT     : C0RXSTAT_RXCH0STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1STAT
      RXCH1STAT     : C0RXSTAT_RXCH1STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2STAT
      RXCH2STAT     : C0RXSTAT_RXCH2STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3STAT
      RXCH3STAT     : C0RXSTAT_RXCH3STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4STAT
      RXCH4STAT     : C0RXSTAT_RXCH4STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5STAT
      RXCH5STAT     : C0RXSTAT_RXCH5STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6STAT
      RXCH6STAT     : C0RXSTAT_RXCH6STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7STAT
      RXCH7STAT     : C0RXSTAT_RXCH7STAT_Field := 16#0#;
      Reserved_8_31 : C0RXSTAT_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0RXSTAT_Register use record
      RXCH0STAT     at 16#0# range 0 .. 0;
      RXCH1STAT     at 16#0# range 1 .. 1;
      RXCH2STAT     at 16#0# range 2 .. 2;
      RXCH3STAT     at 16#0# range 3 .. 3;
      RXCH4STAT     at 16#0# range 4 .. 4;
      RXCH5STAT     at 16#0# range 5 .. 5;
      RXCH6STAT     at 16#0# range 6 .. 6;
      RXCH7STAT     at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- C0TXSTAT_Register --
   -----------------------

   subtype C0TXSTAT_TXCH0STAT_Field is TMS570LC43xx.Bit;
   subtype C0TXSTAT_TXCH1STAT_Field is TMS570LC43xx.Bit;
   subtype C0TXSTAT_TXCH2STAT_Field is TMS570LC43xx.Bit;
   subtype C0TXSTAT_TXCH3STAT_Field is TMS570LC43xx.Bit;
   subtype C0TXSTAT_TXCH4STAT_Field is TMS570LC43xx.Bit;
   subtype C0TXSTAT_TXCH5STAT_Field is TMS570LC43xx.Bit;
   subtype C0TXSTAT_TXCH6STAT_Field is TMS570LC43xx.Bit;
   subtype C0TXSTAT_TXCH7STAT_Field is TMS570LC43xx.Bit;
   subtype C0TXSTAT_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 0 Transmit Status Register
   type C0TXSTAT_Register is record
      --  Corresponds to the interrupt for TXCH0STAT
      TXCH0STAT     : C0TXSTAT_TXCH0STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH1STAT
      TXCH1STAT     : C0TXSTAT_TXCH1STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH2STAT
      TXCH2STAT     : C0TXSTAT_TXCH2STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH3STAT
      TXCH3STAT     : C0TXSTAT_TXCH3STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH4STAT
      TXCH4STAT     : C0TXSTAT_TXCH4STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH5STAT
      TXCH5STAT     : C0TXSTAT_TXCH5STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH6STAT
      TXCH6STAT     : C0TXSTAT_TXCH6STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH7STAT
      TXCH7STAT     : C0TXSTAT_TXCH7STAT_Field := 16#0#;
      Reserved_8_31 : C0TXSTAT_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0TXSTAT_Register use record
      TXCH0STAT     at 16#0# range 0 .. 0;
      TXCH1STAT     at 16#0# range 1 .. 1;
      TXCH2STAT     at 16#0# range 2 .. 2;
      TXCH3STAT     at 16#0# range 3 .. 3;
      TXCH4STAT     at 16#0# range 4 .. 4;
      TXCH5STAT     at 16#0# range 5 .. 5;
      TXCH6STAT     at 16#0# range 6 .. 6;
      TXCH7STAT     at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------------
   -- C0MISCSTAT_Register --
   -------------------------

   subtype C0MISCSTAT_USERINT0STAT_Field is TMS570LC43xx.Bit;
   subtype C0MISCSTAT_LINKINT0STAT_Field is TMS570LC43xx.Bit;
   subtype C0MISCSTAT_HOSTPENDSTAT_Field is TMS570LC43xx.Bit;
   subtype C0MISCSTAT_STATPENDSTAT_Field is TMS570LC43xx.Bit;
   subtype C0MISCSTAT_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  Core 0 Misc Interrupt Status Register
   type C0MISCSTAT_Register is record
      USERINT0STAT  : C0MISCSTAT_USERINT0STAT_Field := 16#0#;
      LINKINT0STAT  : C0MISCSTAT_LINKINT0STAT_Field := 16#0#;
      HOSTPENDSTAT  : C0MISCSTAT_HOSTPENDSTAT_Field := 16#0#;
      STATPENDSTAT  : C0MISCSTAT_STATPENDSTAT_Field := 16#0#;
      Reserved_4_31 : C0MISCSTAT_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0MISCSTAT_Register use record
      USERINT0STAT  at 16#0# range 0 .. 0;
      LINKINT0STAT  at 16#0# range 1 .. 1;
      HOSTPENDSTAT  at 16#0# range 2 .. 2;
      STATPENDSTAT  at 16#0# range 3 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   -----------------------------
   -- C1RXTHRESHSTAT_Register --
   -----------------------------

   subtype C1RXTHRESHSTAT_RXCH0THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHSTAT_RXCH1THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHSTAT_RXCH2THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHSTAT_RXCH3THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHSTAT_RXCH4THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHSTAT_RXCH5THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHSTAT_RXCH6THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHSTAT_RXCH7THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C1RXTHRESHSTAT_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 1 Receive Threshold Status Register
   type C1RXTHRESHSTAT_Register is record
      --  Corresponds to the interrupt for RXCH0THRESH
      RXCH0THRESHSTAT : C1RXTHRESHSTAT_RXCH0THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1THRESH
      RXCH1THRESHSTAT : C1RXTHRESHSTAT_RXCH1THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2THRESH
      RXCH2THRESHSTAT : C1RXTHRESHSTAT_RXCH2THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3THRESH
      RXCH3THRESHSTAT : C1RXTHRESHSTAT_RXCH3THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4THRESH
      RXCH4THRESHSTAT : C1RXTHRESHSTAT_RXCH4THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5THRESH
      RXCH5THRESHSTAT : C1RXTHRESHSTAT_RXCH5THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6THRESH
      RXCH6THRESHSTAT : C1RXTHRESHSTAT_RXCH6THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7THRESH
      RXCH7THRESHSTAT : C1RXTHRESHSTAT_RXCH7THRESHSTAT_Field := 16#0#;
      Reserved_8_31   : C1RXTHRESHSTAT_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1RXTHRESHSTAT_Register use record
      RXCH0THRESHSTAT at 16#0# range 0 .. 0;
      RXCH1THRESHSTAT at 16#0# range 1 .. 1;
      RXCH2THRESHSTAT at 16#0# range 2 .. 2;
      RXCH3THRESHSTAT at 16#0# range 3 .. 3;
      RXCH4THRESHSTAT at 16#0# range 4 .. 4;
      RXCH5THRESHSTAT at 16#0# range 5 .. 5;
      RXCH6THRESHSTAT at 16#0# range 6 .. 6;
      RXCH7THRESHSTAT at 16#0# range 7 .. 7;
      Reserved_8_31   at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- C1RXSTAT_Register --
   -----------------------

   subtype C1RXSTAT_RXCH0STAT_Field is TMS570LC43xx.Bit;
   subtype C1RXSTAT_RXCH1STAT_Field is TMS570LC43xx.Bit;
   subtype C1RXSTAT_RXCH2STAT_Field is TMS570LC43xx.Bit;
   subtype C1RXSTAT_RXCH3STAT_Field is TMS570LC43xx.Bit;
   subtype C1RXSTAT_RXCH4STAT_Field is TMS570LC43xx.Bit;
   subtype C1RXSTAT_RXCH5STAT_Field is TMS570LC43xx.Bit;
   subtype C1RXSTAT_RXCH6STAT_Field is TMS570LC43xx.Bit;
   subtype C1RXSTAT_RXCH7STAT_Field is TMS570LC43xx.Bit;
   subtype C1RXSTAT_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 1 Receive Status Register
   type C1RXSTAT_Register is record
      --  Corresponds to the interrupt for RXCH0STAT
      RXCH0STAT     : C1RXSTAT_RXCH0STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1STAT
      RXCH1STAT     : C1RXSTAT_RXCH1STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2STAT
      RXCH2STAT     : C1RXSTAT_RXCH2STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3STAT
      RXCH3STAT     : C1RXSTAT_RXCH3STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4STAT
      RXCH4STAT     : C1RXSTAT_RXCH4STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5STAT
      RXCH5STAT     : C1RXSTAT_RXCH5STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6STAT
      RXCH6STAT     : C1RXSTAT_RXCH6STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7STAT
      RXCH7STAT     : C1RXSTAT_RXCH7STAT_Field := 16#0#;
      Reserved_8_31 : C1RXSTAT_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1RXSTAT_Register use record
      RXCH0STAT     at 16#0# range 0 .. 0;
      RXCH1STAT     at 16#0# range 1 .. 1;
      RXCH2STAT     at 16#0# range 2 .. 2;
      RXCH3STAT     at 16#0# range 3 .. 3;
      RXCH4STAT     at 16#0# range 4 .. 4;
      RXCH5STAT     at 16#0# range 5 .. 5;
      RXCH6STAT     at 16#0# range 6 .. 6;
      RXCH7STAT     at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- C1TXSTAT_Register --
   -----------------------

   subtype C1TXSTAT_TXCH0STAT_Field is TMS570LC43xx.Bit;
   subtype C1TXSTAT_TXCH1STAT_Field is TMS570LC43xx.Bit;
   subtype C1TXSTAT_TXCH2STAT_Field is TMS570LC43xx.Bit;
   subtype C1TXSTAT_TXCH3STAT_Field is TMS570LC43xx.Bit;
   subtype C1TXSTAT_TXCH4STAT_Field is TMS570LC43xx.Bit;
   subtype C1TXSTAT_TXCH5STAT_Field is TMS570LC43xx.Bit;
   subtype C1TXSTAT_TXCH6STAT_Field is TMS570LC43xx.Bit;
   subtype C1TXSTAT_TXCH7STAT_Field is TMS570LC43xx.Bit;
   subtype C1TXSTAT_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 1 Transmit Status Register
   type C1TXSTAT_Register is record
      --  Corresponds to the interrupt for TXCH0STAT
      TXCH0STAT     : C1TXSTAT_TXCH0STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH1STAT
      TXCH1STAT     : C1TXSTAT_TXCH1STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH2STAT
      TXCH2STAT     : C1TXSTAT_TXCH2STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH3STAT
      TXCH3STAT     : C1TXSTAT_TXCH3STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH4STAT
      TXCH4STAT     : C1TXSTAT_TXCH4STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH5STAT
      TXCH5STAT     : C1TXSTAT_TXCH5STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH6STAT
      TXCH6STAT     : C1TXSTAT_TXCH6STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH7STAT
      TXCH7STAT     : C1TXSTAT_TXCH7STAT_Field := 16#0#;
      Reserved_8_31 : C1TXSTAT_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1TXSTAT_Register use record
      TXCH0STAT     at 16#0# range 0 .. 0;
      TXCH1STAT     at 16#0# range 1 .. 1;
      TXCH2STAT     at 16#0# range 2 .. 2;
      TXCH3STAT     at 16#0# range 3 .. 3;
      TXCH4STAT     at 16#0# range 4 .. 4;
      TXCH5STAT     at 16#0# range 5 .. 5;
      TXCH6STAT     at 16#0# range 6 .. 6;
      TXCH7STAT     at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------------
   -- C1MISCSTAT_Register --
   -------------------------

   subtype C1MISCSTAT_USERINT0STAT_Field is TMS570LC43xx.Bit;
   subtype C1MISCSTAT_LINKINT0STAT_Field is TMS570LC43xx.Bit;
   subtype C1MISCSTAT_HOSTPENDSTAT_Field is TMS570LC43xx.Bit;
   subtype C1MISCSTAT_STATPENDSTAT_Field is TMS570LC43xx.Bit;
   subtype C1MISCSTAT_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  Core 1 Misc Interrupt Status Register
   type C1MISCSTAT_Register is record
      USERINT0STAT  : C1MISCSTAT_USERINT0STAT_Field := 16#0#;
      LINKINT0STAT  : C1MISCSTAT_LINKINT0STAT_Field := 16#0#;
      HOSTPENDSTAT  : C1MISCSTAT_HOSTPENDSTAT_Field := 16#0#;
      STATPENDSTAT  : C1MISCSTAT_STATPENDSTAT_Field := 16#0#;
      Reserved_4_31 : C1MISCSTAT_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1MISCSTAT_Register use record
      USERINT0STAT  at 16#0# range 0 .. 0;
      LINKINT0STAT  at 16#0# range 1 .. 1;
      HOSTPENDSTAT  at 16#0# range 2 .. 2;
      STATPENDSTAT  at 16#0# range 3 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   -----------------------------
   -- C2RXTHRESHSTAT_Register --
   -----------------------------

   subtype C2RXTHRESHSTAT_RXCH0THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHSTAT_RXCH1THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHSTAT_RXCH2THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHSTAT_RXCH3THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHSTAT_RXCH4THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHSTAT_RXCH5THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHSTAT_RXCH6THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHSTAT_RXCH7THRESHSTAT_Field is TMS570LC43xx.Bit;
   subtype C2RXTHRESHSTAT_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 2 Receive Threshold Status Register
   type C2RXTHRESHSTAT_Register is record
      --  Corresponds to the interrupt for RXCH0THRESH
      RXCH0THRESHSTAT : C2RXTHRESHSTAT_RXCH0THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1THRESH
      RXCH1THRESHSTAT : C2RXTHRESHSTAT_RXCH1THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2THRESH
      RXCH2THRESHSTAT : C2RXTHRESHSTAT_RXCH2THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3THRESH
      RXCH3THRESHSTAT : C2RXTHRESHSTAT_RXCH3THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4THRESH
      RXCH4THRESHSTAT : C2RXTHRESHSTAT_RXCH4THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5THRESH
      RXCH5THRESHSTAT : C2RXTHRESHSTAT_RXCH5THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6THRESH
      RXCH6THRESHSTAT : C2RXTHRESHSTAT_RXCH6THRESHSTAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7THRESH
      RXCH7THRESHSTAT : C2RXTHRESHSTAT_RXCH7THRESHSTAT_Field := 16#0#;
      Reserved_8_31   : C2RXTHRESHSTAT_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2RXTHRESHSTAT_Register use record
      RXCH0THRESHSTAT at 16#0# range 0 .. 0;
      RXCH1THRESHSTAT at 16#0# range 1 .. 1;
      RXCH2THRESHSTAT at 16#0# range 2 .. 2;
      RXCH3THRESHSTAT at 16#0# range 3 .. 3;
      RXCH4THRESHSTAT at 16#0# range 4 .. 4;
      RXCH5THRESHSTAT at 16#0# range 5 .. 5;
      RXCH6THRESHSTAT at 16#0# range 6 .. 6;
      RXCH7THRESHSTAT at 16#0# range 7 .. 7;
      Reserved_8_31   at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- C2RXSTAT_Register --
   -----------------------

   subtype C2RXSTAT_RXCH0STAT_Field is TMS570LC43xx.Bit;
   subtype C2RXSTAT_RXCH1STAT_Field is TMS570LC43xx.Bit;
   subtype C2RXSTAT_RXCH2STAT_Field is TMS570LC43xx.Bit;
   subtype C2RXSTAT_RXCH3STAT_Field is TMS570LC43xx.Bit;
   subtype C2RXSTAT_RXCH4STAT_Field is TMS570LC43xx.Bit;
   subtype C2RXSTAT_RXCH5STAT_Field is TMS570LC43xx.Bit;
   subtype C2RXSTAT_RXCH6STAT_Field is TMS570LC43xx.Bit;
   subtype C2RXSTAT_RXCH7STAT_Field is TMS570LC43xx.Bit;
   subtype C2RXSTAT_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 2 Receive Status Register
   type C2RXSTAT_Register is record
      --  Corresponds to the interrupt for RXCH0STAT
      RXCH0STAT     : C2RXSTAT_RXCH0STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH1STAT
      RXCH1STAT     : C2RXSTAT_RXCH1STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH2STAT
      RXCH2STAT     : C2RXSTAT_RXCH2STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH3STAT
      RXCH3STAT     : C2RXSTAT_RXCH3STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH4STAT
      RXCH4STAT     : C2RXSTAT_RXCH4STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH5STAT
      RXCH5STAT     : C2RXSTAT_RXCH5STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH6STAT
      RXCH6STAT     : C2RXSTAT_RXCH6STAT_Field := 16#0#;
      --  Corresponds to the interrupt for RXCH7STAT
      RXCH7STAT     : C2RXSTAT_RXCH7STAT_Field := 16#0#;
      Reserved_8_31 : C2RXSTAT_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2RXSTAT_Register use record
      RXCH0STAT     at 16#0# range 0 .. 0;
      RXCH1STAT     at 16#0# range 1 .. 1;
      RXCH2STAT     at 16#0# range 2 .. 2;
      RXCH3STAT     at 16#0# range 3 .. 3;
      RXCH4STAT     at 16#0# range 4 .. 4;
      RXCH5STAT     at 16#0# range 5 .. 5;
      RXCH6STAT     at 16#0# range 6 .. 6;
      RXCH7STAT     at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- C2TXSTAT_Register --
   -----------------------

   subtype C2TXSTAT_TXCH0STAT_Field is TMS570LC43xx.Bit;
   subtype C2TXSTAT_TXCH1STAT_Field is TMS570LC43xx.Bit;
   subtype C2TXSTAT_TXCH2STAT_Field is TMS570LC43xx.Bit;
   subtype C2TXSTAT_TXCH3STAT_Field is TMS570LC43xx.Bit;
   subtype C2TXSTAT_TXCH4STAT_Field is TMS570LC43xx.Bit;
   subtype C2TXSTAT_TXCH5STAT_Field is TMS570LC43xx.Bit;
   subtype C2TXSTAT_TXCH6STAT_Field is TMS570LC43xx.Bit;
   subtype C2TXSTAT_TXCH7STAT_Field is TMS570LC43xx.Bit;
   subtype C2TXSTAT_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Core 2 Transmit Status Register
   type C2TXSTAT_Register is record
      --  Corresponds to the interrupt for TXCH0STAT
      TXCH0STAT     : C2TXSTAT_TXCH0STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH1STAT
      TXCH1STAT     : C2TXSTAT_TXCH1STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH2STAT
      TXCH2STAT     : C2TXSTAT_TXCH2STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH3STAT
      TXCH3STAT     : C2TXSTAT_TXCH3STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH4STAT
      TXCH4STAT     : C2TXSTAT_TXCH4STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH5STAT
      TXCH5STAT     : C2TXSTAT_TXCH5STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH6STAT
      TXCH6STAT     : C2TXSTAT_TXCH6STAT_Field := 16#0#;
      --  Corresponds to the interrupt for TXCH7STAT
      TXCH7STAT     : C2TXSTAT_TXCH7STAT_Field := 16#0#;
      Reserved_8_31 : C2TXSTAT_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2TXSTAT_Register use record
      TXCH0STAT     at 16#0# range 0 .. 0;
      TXCH1STAT     at 16#0# range 1 .. 1;
      TXCH2STAT     at 16#0# range 2 .. 2;
      TXCH3STAT     at 16#0# range 3 .. 3;
      TXCH4STAT     at 16#0# range 4 .. 4;
      TXCH5STAT     at 16#0# range 5 .. 5;
      TXCH6STAT     at 16#0# range 6 .. 6;
      TXCH7STAT     at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------------
   -- C2MISCSTAT_Register --
   -------------------------

   subtype C2MISCSTAT_USERINT0STAT_Field is TMS570LC43xx.Bit;
   subtype C2MISCSTAT_LINKINT0STAT_Field is TMS570LC43xx.Bit;
   subtype C2MISCSTAT_HOSTPENDSTAT_Field is TMS570LC43xx.Bit;
   subtype C2MISCSTAT_STATPENDSTAT_Field is TMS570LC43xx.Bit;
   subtype C2MISCSTAT_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  Core 2 Misc Interrupt Status Register
   type C2MISCSTAT_Register is record
      USERINT0STAT  : C2MISCSTAT_USERINT0STAT_Field := 16#0#;
      LINKINT0STAT  : C2MISCSTAT_LINKINT0STAT_Field := 16#0#;
      HOSTPENDSTAT  : C2MISCSTAT_HOSTPENDSTAT_Field := 16#0#;
      STATPENDSTAT  : C2MISCSTAT_STATPENDSTAT_Field := 16#0#;
      Reserved_4_31 : C2MISCSTAT_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2MISCSTAT_Register use record
      USERINT0STAT  at 16#0# range 0 .. 0;
      LINKINT0STAT  at 16#0# range 1 .. 1;
      HOSTPENDSTAT  at 16#0# range 2 .. 2;
      STATPENDSTAT  at 16#0# range 3 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   -----------------------
   -- C0RXIMAX_Register --
   -----------------------

   subtype C0RXIMAX_RXIMAX_Field is TMS570LC43xx.UInt6;
   subtype C0RXIMAX_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Core 0 Receive Interrupts per Millisecond Register
   type C0RXIMAX_Register is record
      --  Core 0 Receive Interrupts per Millisecond for C0RXPULSE
      RXIMAX        : C0RXIMAX_RXIMAX_Field := 16#0#;
      Reserved_6_31 : C0RXIMAX_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0RXIMAX_Register use record
      RXIMAX        at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -----------------------
   -- C0TXIMAX_Register --
   -----------------------

   subtype C0TXIMAX_TXIMAX_Field is TMS570LC43xx.UInt6;
   subtype C0TXIMAX_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Core 0 Transmit Interrupts per Millisecond Register
   type C0TXIMAX_Register is record
      --  Core 0 Receive Interrupts per Millisecond for C0TXPULSE
      TXIMAX        : C0TXIMAX_TXIMAX_Field := 16#0#;
      Reserved_6_31 : C0TXIMAX_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C0TXIMAX_Register use record
      TXIMAX        at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -----------------------
   -- C1RXIMAX_Register --
   -----------------------

   subtype C1RXIMAX_RXIMAX_Field is TMS570LC43xx.UInt6;
   subtype C1RXIMAX_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Core 1 Receive Interrupts per Millisecond Register
   type C1RXIMAX_Register is record
      --  Core 1 Receive Interrupts per Millisecond for C1RXPULSE
      RXIMAX        : C1RXIMAX_RXIMAX_Field := 16#0#;
      Reserved_6_31 : C1RXIMAX_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1RXIMAX_Register use record
      RXIMAX        at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -----------------------
   -- C1TXIMAX_Register --
   -----------------------

   subtype C1TXIMAX_TXIMAX_Field is TMS570LC43xx.UInt6;
   subtype C1TXIMAX_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Core 1 Transmit Interrupts per Millisecond Register
   type C1TXIMAX_Register is record
      --  Core 1 Receive Interrupts per Millisecond for C1TXPULSE
      TXIMAX        : C1TXIMAX_TXIMAX_Field := 16#0#;
      Reserved_6_31 : C1TXIMAX_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C1TXIMAX_Register use record
      TXIMAX        at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -----------------------
   -- C2RXIMAX_Register --
   -----------------------

   subtype C2RXIMAX_RXIMAX_Field is TMS570LC43xx.UInt6;
   subtype C2RXIMAX_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Core 2 Receive Interrupts per Millisecond Register
   type C2RXIMAX_Register is record
      --  Core 1 Receive Interrupts per Millisecond for C1RXPULSE
      RXIMAX        : C2RXIMAX_RXIMAX_Field := 16#0#;
      Reserved_6_31 : C2RXIMAX_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2RXIMAX_Register use record
      RXIMAX        at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -----------------------
   -- C2TXIMAX_Register --
   -----------------------

   subtype C2TXIMAX_TXIMAX_Field is TMS570LC43xx.UInt6;
   subtype C2TXIMAX_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Core 2 Transmit Interrupts per Millisecond Register
   type C2TXIMAX_Register is record
      --  Core 1 Receive Interrupts per Millisecond for C1TXPULSE
      TXIMAX        : C2TXIMAX_TXIMAX_Field := 16#0#;
      Reserved_6_31 : C2TXIMAX_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for C2TXIMAX_Register use record
      TXIMAX        at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Common Platform Gigabit ethernet MAC SubSystem RMII
   type CPGMAC_Peripheral is record
      --  Transmit Identification and Version Register
      REVID          : TMS570LC43xx.Word;
      --  Software Reset Register
      SOFTRESET      : SOFTRESET_Register;
      --  Interrupt Control Register
      INTCONTROL     : INTCONTROL_Register;
      --  Core 0 Receive Threshold Enable Register
      C0RXTHRESHEN   : C0RXTHRESHEN_Register;
      --  Core 0 Receive Enable Register
      C0RXEN         : C0RXEN_Register;
      --  Core 0 Transmit Enable Register
      C0TXEN         : C0TXEN_Register;
      --  Core 0 Misc Interrupt Enable Register
      C0MISCEN       : C0MISCEN_Register;
      --  Core 1 Receive Threshold Enable Register
      C1RXTHRESHEN   : C1RXTHRESHEN_Register;
      --  Core 1 Receive Enable Register
      C1RXEN         : C1RXEN_Register;
      --  Core 1 Transmit Enable Register
      C1TXEN         : C1TXEN_Register;
      --  Core 1 Misc Enable Register
      C1MISCEN       : C1MISCEN_Register;
      --  Core 2 Receive Threshold Enable Register
      C2RXTHRESHEN   : C2RXTHRESHEN_Register;
      --  Core 2 Receive Enable Register
      C2RXEN         : C2RXEN_Register;
      --  Core 2 Transmit Enable Register
      C2TXEN         : C2TXEN_Register;
      --  Core 2 Misc Enable Register
      C2MISCEN       : C2MISCEN_Register;
      --  Core 0 Receive Threshold Status Register
      C0RXTHRESHSTAT : C0RXTHRESHSTAT_Register;
      --  Core 0 Receive Status Register
      C0RXSTAT       : C0RXSTAT_Register;
      --  Core 0 Transmit Status Register
      C0TXSTAT       : C0TXSTAT_Register;
      --  Core 0 Misc Interrupt Status Register
      C0MISCSTAT     : C0MISCSTAT_Register;
      --  Core 1 Receive Threshold Status Register
      C1RXTHRESHSTAT : C1RXTHRESHSTAT_Register;
      --  Core 1 Receive Status Register
      C1RXSTAT       : C1RXSTAT_Register;
      --  Core 1 Transmit Status Register
      C1TXSTAT       : C1TXSTAT_Register;
      --  Core 1 Misc Interrupt Status Register
      C1MISCSTAT     : C1MISCSTAT_Register;
      --  Core 2 Receive Threshold Status Register
      C2RXTHRESHSTAT : C2RXTHRESHSTAT_Register;
      --  Core 2 Receive Status Register
      C2RXSTAT       : C2RXSTAT_Register;
      --  Core 2 Transmit Status Register
      C2TXSTAT       : C2TXSTAT_Register;
      --  Core 2 Misc Interrupt Status Register
      C2MISCSTAT     : C2MISCSTAT_Register;
      --  Core 0 Receive Interrupts per Millisecond Register
      C0RXIMAX       : C0RXIMAX_Register;
      --  Core 0 Transmit Interrupts per Millisecond Register
      C0TXIMAX       : C0TXIMAX_Register;
      --  Core 1 Receive Interrupts per Millisecond Register
      C1RXIMAX       : C1RXIMAX_Register;
      --  Core 1 Transmit Interrupts per Millisecond Register
      C1TXIMAX       : C1TXIMAX_Register;
      --  Core 2 Receive Interrupts per Millisecond Register
      C2RXIMAX       : C2RXIMAX_Register;
      --  Core 2 Transmit Interrupts per Millisecond Register
      C2TXIMAX       : C2TXIMAX_Register;
   end record
     with Volatile;

   for CPGMAC_Peripheral use record
      REVID          at 16#0# range 0 .. 31;
      SOFTRESET      at 16#4# range 0 .. 31;
      INTCONTROL     at 16#C# range 0 .. 31;
      C0RXTHRESHEN   at 16#10# range 0 .. 31;
      C0RXEN         at 16#14# range 0 .. 31;
      C0TXEN         at 16#18# range 0 .. 31;
      C0MISCEN       at 16#1C# range 0 .. 31;
      C1RXTHRESHEN   at 16#20# range 0 .. 31;
      C1RXEN         at 16#24# range 0 .. 31;
      C1TXEN         at 16#28# range 0 .. 31;
      C1MISCEN       at 16#2C# range 0 .. 31;
      C2RXTHRESHEN   at 16#30# range 0 .. 31;
      C2RXEN         at 16#34# range 0 .. 31;
      C2TXEN         at 16#38# range 0 .. 31;
      C2MISCEN       at 16#3C# range 0 .. 31;
      C0RXTHRESHSTAT at 16#40# range 0 .. 31;
      C0RXSTAT       at 16#44# range 0 .. 31;
      C0TXSTAT       at 16#48# range 0 .. 31;
      C0MISCSTAT     at 16#4C# range 0 .. 31;
      C1RXTHRESHSTAT at 16#50# range 0 .. 31;
      C1RXSTAT       at 16#54# range 0 .. 31;
      C1TXSTAT       at 16#58# range 0 .. 31;
      C1MISCSTAT     at 16#5C# range 0 .. 31;
      C2RXTHRESHSTAT at 16#60# range 0 .. 31;
      C2RXSTAT       at 16#64# range 0 .. 31;
      C2TXSTAT       at 16#68# range 0 .. 31;
      C2MISCSTAT     at 16#6C# range 0 .. 31;
      C0RXIMAX       at 16#70# range 0 .. 31;
      C0TXIMAX       at 16#74# range 0 .. 31;
      C1RXIMAX       at 16#78# range 0 .. 31;
      C1TXIMAX       at 16#7C# range 0 .. 31;
      C2RXIMAX       at 16#80# range 0 .. 31;
      C2TXIMAX       at 16#84# range 0 .. 31;
   end record;

   --  Common Platform Gigabit ethernet MAC SubSystem RMII
   CPGMAC_Periph : aliased CPGMAC_Peripheral
     with Import, Address => CPGMAC_Base;

end TMS570LC43xx.ECTL;
