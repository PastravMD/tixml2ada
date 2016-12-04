--  This spec has been automatically generated from hercules_dcan_spec_1.4.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Dcan is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- CTL_Register --
   ------------------

   subtype CTL_Init_Field is TMS570LC43xx.Bit;
   subtype CTL_IE0_Field is TMS570LC43xx.Bit;
   subtype CTL_SIE_Field is TMS570LC43xx.Bit;
   subtype CTL_EIE_Field is TMS570LC43xx.Bit;
   subtype CTL_Resv4_Field is TMS570LC43xx.Bit;
   subtype CTL_DAR_Field is TMS570LC43xx.Bit;
   subtype CTL_CCE_Field is TMS570LC43xx.Bit;
   subtype CTL_Test_Field is TMS570LC43xx.Bit;
   subtype CTL_IDS_Field is TMS570LC43xx.Bit;
   subtype CTL_ABO_Field is TMS570LC43xx.Bit;
   subtype CTL_PMD_Field is TMS570LC43xx.UInt4;
   subtype CTL_Rsv3_Field is TMS570LC43xx.Bit;
   subtype CTL_SWR_Field is TMS570LC43xx.Bit;
   subtype CTL_IntDbg_Field is TMS570LC43xx.Bit;
   subtype CTL_IE1_Field is TMS570LC43xx.Bit;
   subtype CTL_DE1_Field is TMS570LC43xx.Bit;
   subtype CTL_DE2_Field is TMS570LC43xx.Bit;
   subtype CTL_DE3_Field is TMS570LC43xx.Bit;
   subtype CTL_Rsv2_Field is TMS570LC43xx.UInt3;
   subtype CTL_PDR_Field is TMS570LC43xx.Bit;
   subtype CTL_WUBA_Field is TMS570LC43xx.Bit;
   subtype CTL_Rsv1_Field is TMS570LC43xx.UInt6;

   --  CAN Control Register
   type CTL_Register is record
      --  1 = Initialization Mode Entered
      Init   : CTL_Init_Field := 16#0#;
      --  1 = Interrupt Enable for DCAN0INT
      IE0    : CTL_IE0_Field := 16#0#;
      --  1 = WakeUpPnd, RxOk, and LEC Bits Generate DCAN0INT
      SIE    : CTL_SIE_Field := 16#0#;
      --  1 = PER, BOFF, and EWARN Errors Enabled to generate DCAN0INT
      EIE    : CTL_EIE_Field := 16#0#;
      --  Reserved
      Resv4  : CTL_Resv4_Field := 16#0#;
      --  1 = Disable Automatic Retransmission
      DAR    : CTL_DAR_Field := 16#0#;
      --  1 = Configuration Change Enable (BTR Configuration)
      CCE    : CTL_CCE_Field := 16#0#;
      --  1 = Test Mode Enable
      Test   : CTL_Test_Field := 16#0#;
      --  1 = Interrupt Transmission and Enter Debug Immediately
      IDS    : CTL_IDS_Field := 16#0#;
      --  1 = Auto Bus On Enabled
      ABO    : CTL_ABO_Field := 16#0#;
      --  0xA=SECDED Disabled, Otherwise Enabled
      PMD    : CTL_PMD_Field := 16#0#;
      --  Reserved
      Rsv3   : CTL_Rsv3_Field := 16#0#;
      --  1 = Software Reset Enable
      SWR    : CTL_SWR_Field := 16#0#;
      --  1 = Debug Mode Requested and Entered
      IntDbg : CTL_IntDbg_Field := 16#0#;
      --  1 = Enables DCAN1INT
      IE1    : CTL_IE1_Field := 16#0#;
      --  1 = Enable DMA Request for IF1
      DE1    : CTL_DE1_Field := 16#0#;
      --  1 = Enable DMA Request for IF2
      DE2    : CTL_DE2_Field := 16#0#;
      --  1 = Enable DMA Request for IF3
      DE3    : CTL_DE3_Field := 16#0#;
      --  Reserved
      Rsv2   : CTL_Rsv2_Field := 16#0#;
      --  1 = Requests Local Low Power Down Mode
      PDR    : CTL_PDR_Field := 16#0#;
      --  1 = Enables Auto Wake Up on Bus Activity
      WUBA   : CTL_WUBA_Field := 16#0#;
      --  Reserved
      Rsv1   : CTL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTL_Register use record
      Init   at 16#0# range 0 .. 0;
      IE0    at 16#0# range 1 .. 1;
      SIE    at 16#0# range 2 .. 2;
      EIE    at 16#0# range 3 .. 3;
      Resv4  at 16#0# range 4 .. 4;
      DAR    at 16#0# range 5 .. 5;
      CCE    at 16#0# range 6 .. 6;
      Test   at 16#0# range 7 .. 7;
      IDS    at 16#0# range 8 .. 8;
      ABO    at 16#0# range 9 .. 9;
      PMD    at 16#0# range 10 .. 13;
      Rsv3   at 16#0# range 14 .. 14;
      SWR    at 16#0# range 15 .. 15;
      IntDbg at 16#0# range 16 .. 16;
      IE1    at 16#0# range 17 .. 17;
      DE1    at 16#0# range 18 .. 18;
      DE2    at 16#0# range 19 .. 19;
      DE3    at 16#0# range 20 .. 20;
      Rsv2   at 16#0# range 21 .. 23;
      PDR    at 16#0# range 24 .. 24;
      WUBA   at 16#0# range 25 .. 25;
      Rsv1   at 16#0# range 26 .. 31;
   end record;

   -----------------
   -- ES_Register --
   -----------------

   subtype ES_LEC_Field is TMS570LC43xx.UInt3;
   subtype ES_TXOK_Field is TMS570LC43xx.Bit;
   subtype ES_RXOK_Field is TMS570LC43xx.Bit;
   subtype ES_EPASS_Field is TMS570LC43xx.Bit;
   subtype ES_EWARN_Field is TMS570LC43xx.Bit;
   subtype ES_BOFF_Field is TMS570LC43xx.Bit;
   subtype ES_PER_Field is TMS570LC43xx.Bit;
   subtype ES_WakeUpPnd_Field is TMS570LC43xx.Bit;
   subtype ES_PDA_Field is TMS570LC43xx.Bit;
   subtype ES_Rsv1_Field is TMS570LC43xx.UInt21;

   --  Error and Status register
   type ES_Register is record
      --  1 = Initialization Mode Entered
      LEC       : ES_LEC_Field := 16#0#;
      --  1 = Message Successfully Transmitted
      TXOK      : ES_TXOK_Field := 16#0#;
      --  1 = Message Successfully Received
      RXOK      : ES_RXOK_Field := 16#0#;
      --  1 = Error Passive State
      EPASS     : ES_EPASS_Field := 16#0#;
      --  1 = Error Warning State, 1+ Error Counter >= 96
      EWARN     : ES_EWARN_Field := 16#0#;
      --  1 = BUS Off State
      BOFF      : ES_BOFF_Field := 16#0#;
      --  1 = SECDED Detected Single/Double Bit Error
      PER       : ES_PER_Field := 16#0#;
      --  1 = DCAN Initiated a WakeUp To System
      WakeUpPnd : ES_WakeUpPnd_Field := 16#0#;
      --  1 = DCAN Is Powered Down
      PDA       : ES_PDA_Field := 16#0#;
      --  Reserved
      Rsv1      : ES_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ES_Register use record
      LEC       at 16#0# range 0 .. 2;
      TXOK      at 16#0# range 3 .. 3;
      RXOK      at 16#0# range 4 .. 4;
      EPASS     at 16#0# range 5 .. 5;
      EWARN     at 16#0# range 6 .. 6;
      BOFF      at 16#0# range 7 .. 7;
      PER       at 16#0# range 8 .. 8;
      WakeUpPnd at 16#0# range 9 .. 9;
      PDA       at 16#0# range 10 .. 10;
      Rsv1      at 16#0# range 11 .. 31;
   end record;

   -------------------
   -- ERRC_Register --
   -------------------

   subtype ERRC_TEC_Field is TMS570LC43xx.Byte;
   subtype ERRC_REC_Field is TMS570LC43xx.UInt7;
   subtype ERRC_RP_Field is TMS570LC43xx.Bit;
   subtype ERRC_Rsv1_Field is TMS570LC43xx.Short;

   --  Error Counter Register
   type ERRC_Register is record
      --  Transmit Error Count
      TEC  : ERRC_TEC_Field := 16#0#;
      --  Receive Error Count
      REC  : ERRC_REC_Field := 16#0#;
      --  Receive Error Passive
      RP   : ERRC_RP_Field := 16#0#;
      --  Reserved
      Rsv1 : ERRC_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRC_Register use record
      TEC  at 16#0# range 0 .. 7;
      REC  at 16#0# range 8 .. 14;
      RP   at 16#0# range 15 .. 15;
      Rsv1 at 16#0# range 16 .. 31;
   end record;

   ------------------
   -- BTR_Register --
   ------------------

   subtype BTR_BRP_Field is TMS570LC43xx.UInt6;
   subtype BTR_SJW_Field is TMS570LC43xx.UInt2;
   subtype BTR_TSEG1_Field is TMS570LC43xx.UInt4;
   subtype BTR_TSEG2_Field is TMS570LC43xx.UInt3;
   subtype BTR_Rsv2_Field is TMS570LC43xx.Bit;
   subtype BTR_BRPE_Field is TMS570LC43xx.UInt4;
   subtype BTR_Rsv1_Field is TMS570LC43xx.UInt12;

   --  BIT Timing Register
   type BTR_Register is record
      --  Baud Rate Prescaler
      BRP   : BTR_BRP_Field := 16#0#;
      --  Sync Jump Width
      SJW   : BTR_SJW_Field := 16#0#;
      --  Time Segment Before Sample Point
      TSEG1 : BTR_TSEG1_Field := 16#0#;
      --  Time Segment After Sample Point
      TSEG2 : BTR_TSEG2_Field := 16#0#;
      --  Reserved
      Rsv2  : BTR_Rsv2_Field := 16#0#;
      --  Baud Rate Prescaler Extension
      BRPE  : BTR_BRPE_Field := 16#0#;
      --  Reserved
      Rsv1  : BTR_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BTR_Register use record
      BRP   at 16#0# range 0 .. 5;
      SJW   at 16#0# range 6 .. 7;
      TSEG1 at 16#0# range 8 .. 11;
      TSEG2 at 16#0# range 12 .. 14;
      Rsv2  at 16#0# range 15 .. 15;
      BRPE  at 16#0# range 16 .. 19;
      Rsv1  at 16#0# range 20 .. 31;
   end record;

   ------------------
   -- INT_Register --
   ------------------

   subtype INT_TEC_Field is TMS570LC43xx.Short;
   subtype INT_REC_Field is TMS570LC43xx.Byte;
   subtype INT_Rsv1_Field is TMS570LC43xx.Byte;

   --  Interrupt Register
   type INT_Register is record
      --  Int0ID 0x00 = No Int, 0x01-0x80 = Message Object #, 0x8000 = Error
      --  Interrupt, Others Unused
      TEC  : INT_TEC_Field := 16#0#;
      --  Int1ID 0x00 = No Int, 0x01-0x80 = Message Object #, Others Unused
      REC  : INT_REC_Field := 16#0#;
      --  Reserved
      Rsv1 : INT_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INT_Register use record
      TEC  at 16#0# range 0 .. 15;
      REC  at 16#0# range 16 .. 23;
      Rsv1 at 16#0# range 24 .. 31;
   end record;

   -------------------
   -- TEST_Register --
   -------------------

   subtype TEST_Rsv2_Field is TMS570LC43xx.UInt3;
   subtype TEST_Silent_Field is TMS570LC43xx.Bit;
   subtype TEST_Lback_Field is TMS570LC43xx.Bit;
   subtype TEST_TX_Field is TMS570LC43xx.UInt2;
   subtype TEST_RX_Field is TMS570LC43xx.Bit;
   subtype TEST_EXL_Field is TMS570LC43xx.Bit;
   subtype TEST_RDA_Field is TMS570LC43xx.Bit;
   subtype TEST_Rsv1_Field is TMS570LC43xx.UInt22;

   --  Test Register
   type TEST_Register is record
      --  Reserved
      Rsv2   : TEST_Rsv2_Field := 16#0#;
      --  1 = Silent Mode Enabled
      Silent : TEST_Silent_Field := 16#0#;
      --  1 = Enable Loopback
      Lback  : TEST_Lback_Field := 16#0#;
      --  Control CANTX 0=Normal,1=Sample Pt. Monitor, 2= Drive Dom., 3=Drive
      --  Rec.
      TX     : TEST_TX_Field := 16#0#;
      --  0 = CAN Bus is Dominant, 1=Recessive
      RX     : TEST_RX_Field := 16#0#;
      --  1 = Enable External Loopback
      EXL    : TEST_EXL_Field := 16#0#;
      --  1 = Enable Direct Access to RAM in Test Mode
      RDA    : TEST_RDA_Field := 16#0#;
      --  Reserved
      Rsv1   : TEST_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEST_Register use record
      Rsv2   at 16#0# range 0 .. 2;
      Silent at 16#0# range 3 .. 3;
      Lback  at 16#0# range 4 .. 4;
      TX     at 16#0# range 5 .. 6;
      RX     at 16#0# range 7 .. 7;
      EXL    at 16#0# range 8 .. 8;
      RDA    at 16#0# range 9 .. 9;
      Rsv1   at 16#0# range 10 .. 31;
   end record;

   -------------------
   -- PERR_Register --
   -------------------

   subtype PERR_MessageNumber_Field is TMS570LC43xx.Byte;
   subtype PERR_WordNumber_Field is TMS570LC43xx.UInt3;
   subtype PERR_Rsv1_Field is TMS570LC43xx.UInt21;

   --  Parity Error Code Register
   type PERR_Register is record
      --  0x1-0x80 Message Number where Double Bit Error Detected
      MessageNumber : PERR_MessageNumber_Field := 16#0#;
      --  Reserved - Always Reads 0
      WordNumber    : PERR_WordNumber_Field := 16#0#;
      --  Reserved
      Rsv1          : PERR_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERR_Register use record
      MessageNumber at 16#0# range 0 .. 7;
      WordNumber    at 16#0# range 8 .. 10;
      Rsv1          at 16#0# range 11 .. 31;
   end record;

   ------------------
   -- REL_Register --
   ------------------

   subtype REL_DAY_Field is TMS570LC43xx.Byte;
   subtype REL_MON_Field is TMS570LC43xx.Byte;
   subtype REL_YEAR_Field is TMS570LC43xx.UInt4;
   subtype REL_SUBSTEP_Field is TMS570LC43xx.UInt4;
   subtype REL_STEP_Field is TMS570LC43xx.UInt4;
   subtype REL_REL_Field is TMS570LC43xx.UInt4;

   --  Core Release Register
   type REL_Register is record
      --  Day
      DAY     : REL_DAY_Field := 16#0#;
      --  Month
      MON     : REL_MON_Field := 16#0#;
      --  Year
      YEAR    : REL_YEAR_Field := 16#0#;
      --  Substep of Core Release
      SUBSTEP : REL_SUBSTEP_Field := 16#0#;
      --  Step of Core Release
      STEP    : REL_STEP_Field := 16#0#;
      --  Core Release
      REL     : REL_REL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for REL_Register use record
      DAY     at 16#0# range 0 .. 7;
      MON     at 16#0# range 8 .. 15;
      YEAR    at 16#0# range 16 .. 19;
      SUBSTEP at 16#0# range 20 .. 23;
      STEP    at 16#0# range 24 .. 27;
      REL     at 16#0# range 28 .. 31;
   end record;

   ----------------------
   -- ECCDIAG_Register --
   ----------------------

   subtype ECCDIAG_ECCDIAG_Field is TMS570LC43xx.UInt4;
   subtype ECCDIAG_Rsv1_Field is TMS570LC43xx.UInt28;

   --  ECC Diagnostic Register
   type ECCDIAG_Register is record
      --  Diagnostic Mode 0x5=Enabled, 0xA=Disabled
      ECCDIAG : ECCDIAG_ECCDIAG_Field := 16#0#;
      --  Reserved
      Rsv1    : ECCDIAG_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECCDIAG_Register use record
      ECCDIAG at 16#0# range 0 .. 3;
      Rsv1    at 16#0# range 4 .. 31;
   end record;

   ---------------------------
   -- ECCDIAG_STAT_Register --
   ---------------------------

   subtype ECCDIAG_STAT_SEFLG_DIAG_Field is TMS570LC43xx.Bit;
   subtype ECCDIAG_STAT_Rsv2_Field is TMS570LC43xx.UInt7;
   subtype ECCDIAG_STAT_DEFLG_DIAG_Field is TMS570LC43xx.Bit;
   subtype ECCDIAG_STAT_Rsv1_Field is TMS570LC43xx.UInt23;

   --  ECC Diagnostic Status Register
   type ECCDIAG_STAT_Register is record
      --  1 = Single Bit Error Detected in Diagnostic Mode
      SEFLG_DIAG : ECCDIAG_STAT_SEFLG_DIAG_Field := 16#0#;
      --  Reserved
      Rsv2       : ECCDIAG_STAT_Rsv2_Field := 16#0#;
      --  1 = Double Bit Error Detected in Diagnostic Mode
      DEFLG_DIAG : ECCDIAG_STAT_DEFLG_DIAG_Field := 16#0#;
      --  Reserved
      Rsv1       : ECCDIAG_STAT_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECCDIAG_STAT_Register use record
      SEFLG_DIAG at 16#0# range 0 .. 0;
      Rsv2       at 16#0# range 1 .. 7;
      DEFLG_DIAG at 16#0# range 8 .. 8;
      Rsv1       at 16#0# range 9 .. 31;
   end record;

   ---------------------
   -- ECC_CS_Register --
   ---------------------

   subtype ECC_CS_SEFLG_Field is TMS570LC43xx.Bit;
   subtype ECC_CS_Rsv4_Field is TMS570LC43xx.UInt7;
   subtype ECC_CS_DEFLG_Field is TMS570LC43xx.Bit;
   subtype ECC_CS_Rsv3_Field is TMS570LC43xx.UInt7;
   subtype ECC_CS_ECCMODE_Field is TMS570LC43xx.UInt4;
   subtype ECC_CS_Rsv2_Field is TMS570LC43xx.UInt4;
   subtype ECC_CS_SBE_EVT_EN_Field is TMS570LC43xx.UInt4;
   subtype ECC_CS_Rsv1_Field is TMS570LC43xx.UInt4;

   --  ECC Control and Status Register
   type ECC_CS_Register is record
      --  1 = Single Bit Error Detected
      SEFLG      : ECC_CS_SEFLG_Field := 16#0#;
      --  Reserved
      Rsv4       : ECC_CS_Rsv4_Field := 16#0#;
      --  1 = Double Bit Error Detected
      DEFLG      : ECC_CS_DEFLG_Field := 16#0#;
      --  Reserved
      Rsv3       : ECC_CS_Rsv3_Field := 16#0#;
      --  0x5 SECDED Disabled, Others SECDED Enabled
      ECCMODE    : ECC_CS_ECCMODE_Field := 16#0#;
      --  Reserved
      Rsv2       : ECC_CS_Rsv2_Field := 16#0#;
      --  0x5 SECDED single bit error event disabled, Others Enabled
      SBE_EVT_EN : ECC_CS_SBE_EVT_EN_Field := 16#0#;
      --  Reserved
      Rsv1       : ECC_CS_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_CS_Register use record
      SEFLG      at 16#0# range 0 .. 0;
      Rsv4       at 16#0# range 1 .. 7;
      DEFLG      at 16#0# range 8 .. 8;
      Rsv3       at 16#0# range 9 .. 15;
      ECCMODE    at 16#0# range 16 .. 19;
      Rsv2       at 16#0# range 20 .. 23;
      SBE_EVT_EN at 16#0# range 24 .. 27;
      Rsv1       at 16#0# range 28 .. 31;
   end record;

   -----------------------
   -- ECC_SERR_Register --
   -----------------------

   subtype ECC_SERR_MessageNumber_Field is TMS570LC43xx.Byte;
   subtype ECC_SERR_Rsv1_Field is TMS570LC43xx.UInt24;

   --  ECC Single Bit Error Code Register
   type ECC_SERR_Register is record
      --  0x1-0x80 Message Number where Double Bit Error Detected
      MessageNumber : ECC_SERR_MessageNumber_Field := 16#0#;
      --  Reserved
      Rsv1          : ECC_SERR_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECC_SERR_Register use record
      MessageNumber at 16#0# range 0 .. 7;
      Rsv1          at 16#0# range 8 .. 31;
   end record;

   --------------------
   -- TXRQX_Register --
   --------------------

   subtype TXRQX_TXRQSTREG1_Field is TMS570LC43xx.UInt2;
   subtype TXRQX_TXRQSTREG2_Field is TMS570LC43xx.UInt2;
   subtype TXRQX_TXRQSTREG3_Field is TMS570LC43xx.UInt2;
   subtype TXRQX_TXRQSTREG4_Field is TMS570LC43xx.UInt2;
   subtype TXRQX_TXRQSTREG5_Field is TMS570LC43xx.UInt2;
   subtype TXRQX_TXRQSTREG6_Field is TMS570LC43xx.UInt2;
   subtype TXRQX_TXRQSTREG7_Field is TMS570LC43xx.UInt2;
   subtype TXRQX_TXRQSTREG8_Field is TMS570LC43xx.UInt2;
   subtype TXRQX_Rsv1_Field is TMS570LC43xx.Short;

   --  Transmission Request X
   type TXRQX_Register is record
      --  Not Zero = One or More Bits of TXRQ1 are Set
      TXRQSTREG1 : TXRQX_TXRQSTREG1_Field := 16#0#;
      --  Not Zero = One or More Bits of TXRQ2 are Set
      TXRQSTREG2 : TXRQX_TXRQSTREG2_Field := 16#0#;
      --  Not Zero = One or More Bits of TXRQ3 are Set
      TXRQSTREG3 : TXRQX_TXRQSTREG3_Field := 16#0#;
      --  Not Zero = One or More Bits of TXRQ4 are Set
      TXRQSTREG4 : TXRQX_TXRQSTREG4_Field := 16#0#;
      --  Not Zero = One or More Bits of TXRQ5 are Set
      TXRQSTREG5 : TXRQX_TXRQSTREG5_Field := 16#0#;
      --  Not Zero = One or More Bits of TXRQ6 are Set
      TXRQSTREG6 : TXRQX_TXRQSTREG6_Field := 16#0#;
      --  Not Zero = One or More Bits of TXRQ7 are Set
      TXRQSTREG7 : TXRQX_TXRQSTREG7_Field := 16#0#;
      --  Not Zero = One or More Bits of TXRQ8 are Set
      TXRQSTREG8 : TXRQX_TXRQSTREG8_Field := 16#0#;
      --  Reserved
      Rsv1       : TXRQX_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXRQX_Register use record
      TXRQSTREG1 at 16#0# range 0 .. 1;
      TXRQSTREG2 at 16#0# range 2 .. 3;
      TXRQSTREG3 at 16#0# range 4 .. 5;
      TXRQSTREG4 at 16#0# range 6 .. 7;
      TXRQSTREG5 at 16#0# range 8 .. 9;
      TXRQSTREG6 at 16#0# range 10 .. 11;
      TXRQSTREG7 at 16#0# range 12 .. 13;
      TXRQSTREG8 at 16#0# range 14 .. 15;
      Rsv1       at 16#0# range 16 .. 31;
   end record;

   ---------------------
   -- TXRQ12_Register --
   ---------------------

   subtype TXRQ12_TXRQST1_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST2_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST3_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST4_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST5_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST6_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST7_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST8_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST9_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST10_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST11_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST12_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST13_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST14_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST15_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST16_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST17_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST18_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST19_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST20_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST21_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST22_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST23_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST24_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST25_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST26_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST27_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST28_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST29_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST30_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST31_Field is TMS570LC43xx.Bit;
   subtype TXRQ12_TXRQST32_Field is TMS570LC43xx.Bit;

   --  Transmission Request 12 Register
   type TXRQ12_Register is record
      --  1 = Transmission of Message Object 1 Requested and not yet done
      TXRQST1  : TXRQ12_TXRQST1_Field := 16#0#;
      --  1 = Transmission of Message Object 2 Requested and not yet done
      TXRQST2  : TXRQ12_TXRQST2_Field := 16#0#;
      --  1 = Transmission of Message Object 3 Requested and not yet done
      TXRQST3  : TXRQ12_TXRQST3_Field := 16#0#;
      --  1 = Transmission of Message Object 4 Requested and not yet done
      TXRQST4  : TXRQ12_TXRQST4_Field := 16#0#;
      --  1 = Transmission of Message Object 5 Requested and not yet done
      TXRQST5  : TXRQ12_TXRQST5_Field := 16#0#;
      --  1 = Transmission of Message Object 6 Requested and not yet done
      TXRQST6  : TXRQ12_TXRQST6_Field := 16#0#;
      --  1 = Transmission of Message Object 7 Requested and not yet done
      TXRQST7  : TXRQ12_TXRQST7_Field := 16#0#;
      --  1 = Transmission of Message Object 8 Requested and not yet done
      TXRQST8  : TXRQ12_TXRQST8_Field := 16#0#;
      --  1 = Transmission of Message Object 9 Requested and not yet done
      TXRQST9  : TXRQ12_TXRQST9_Field := 16#0#;
      --  1 = Transmission of Message Object 10 Requested and not yet done
      TXRQST10 : TXRQ12_TXRQST10_Field := 16#0#;
      --  1 = Transmission of Message Object 11 Requested and not yet done
      TXRQST11 : TXRQ12_TXRQST11_Field := 16#0#;
      --  1 = Transmission of Message Object 12 Requested and not yet done
      TXRQST12 : TXRQ12_TXRQST12_Field := 16#0#;
      --  1 = Transmission of Message Object 13 Requested and not yet done
      TXRQST13 : TXRQ12_TXRQST13_Field := 16#0#;
      --  1 = Transmission of Message Object 14 Requested and not yet done
      TXRQST14 : TXRQ12_TXRQST14_Field := 16#0#;
      --  1 = Transmission of Message Object 15 Requested and not yet done
      TXRQST15 : TXRQ12_TXRQST15_Field := 16#0#;
      --  1 = Transmission of Message Object 16 Requested and not yet done
      TXRQST16 : TXRQ12_TXRQST16_Field := 16#0#;
      --  1 = Transmission of Message Object 17 Requested and not yet done
      TXRQST17 : TXRQ12_TXRQST17_Field := 16#0#;
      --  1 = Transmission of Message Object 18 Requested and not yet done
      TXRQST18 : TXRQ12_TXRQST18_Field := 16#0#;
      --  1 = Transmission of Message Object 19 Requested and not yet done
      TXRQST19 : TXRQ12_TXRQST19_Field := 16#0#;
      --  1 = Transmission of Message Object 20 Requested and not yet done
      TXRQST20 : TXRQ12_TXRQST20_Field := 16#0#;
      --  1 = Transmission of Message Object 21 Requested and not yet done
      TXRQST21 : TXRQ12_TXRQST21_Field := 16#0#;
      --  1 = Transmission of Message Object 22 Requested and not yet done
      TXRQST22 : TXRQ12_TXRQST22_Field := 16#0#;
      --  1 = Transmission of Message Object 23 Requested and not yet done
      TXRQST23 : TXRQ12_TXRQST23_Field := 16#0#;
      --  1 = Transmission of Message Object 24 Requested and not yet done
      TXRQST24 : TXRQ12_TXRQST24_Field := 16#0#;
      --  1 = Transmission of Message Object 25 Requested and not yet done
      TXRQST25 : TXRQ12_TXRQST25_Field := 16#0#;
      --  1 = Transmission of Message Object 26 Requested and not yet done
      TXRQST26 : TXRQ12_TXRQST26_Field := 16#0#;
      --  1 = Transmission of Message Object 27 Requested and not yet done
      TXRQST27 : TXRQ12_TXRQST27_Field := 16#0#;
      --  1 = Transmission of Message Object 28 Requested and not yet done
      TXRQST28 : TXRQ12_TXRQST28_Field := 16#0#;
      --  1 = Transmission of Message Object 29 Requested and not yet done
      TXRQST29 : TXRQ12_TXRQST29_Field := 16#0#;
      --  1 = Transmission of Message Object 30 Requested and not yet done
      TXRQST30 : TXRQ12_TXRQST30_Field := 16#0#;
      --  1 = Transmission of Message Object 31 Requested and not yet done
      TXRQST31 : TXRQ12_TXRQST31_Field := 16#0#;
      --  1 = Transmission of Message Object 32 Requested and not yet done
      TXRQST32 : TXRQ12_TXRQST32_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXRQ12_Register use record
      TXRQST1  at 16#0# range 0 .. 0;
      TXRQST2  at 16#0# range 1 .. 1;
      TXRQST3  at 16#0# range 2 .. 2;
      TXRQST4  at 16#0# range 3 .. 3;
      TXRQST5  at 16#0# range 4 .. 4;
      TXRQST6  at 16#0# range 5 .. 5;
      TXRQST7  at 16#0# range 6 .. 6;
      TXRQST8  at 16#0# range 7 .. 7;
      TXRQST9  at 16#0# range 8 .. 8;
      TXRQST10 at 16#0# range 9 .. 9;
      TXRQST11 at 16#0# range 10 .. 10;
      TXRQST12 at 16#0# range 11 .. 11;
      TXRQST13 at 16#0# range 12 .. 12;
      TXRQST14 at 16#0# range 13 .. 13;
      TXRQST15 at 16#0# range 14 .. 14;
      TXRQST16 at 16#0# range 15 .. 15;
      TXRQST17 at 16#0# range 16 .. 16;
      TXRQST18 at 16#0# range 17 .. 17;
      TXRQST19 at 16#0# range 18 .. 18;
      TXRQST20 at 16#0# range 19 .. 19;
      TXRQST21 at 16#0# range 20 .. 20;
      TXRQST22 at 16#0# range 21 .. 21;
      TXRQST23 at 16#0# range 22 .. 22;
      TXRQST24 at 16#0# range 23 .. 23;
      TXRQST25 at 16#0# range 24 .. 24;
      TXRQST26 at 16#0# range 25 .. 25;
      TXRQST27 at 16#0# range 26 .. 26;
      TXRQST28 at 16#0# range 27 .. 27;
      TXRQST29 at 16#0# range 28 .. 28;
      TXRQST30 at 16#0# range 29 .. 29;
      TXRQST31 at 16#0# range 30 .. 30;
      TXRQST32 at 16#0# range 31 .. 31;
   end record;

   ---------------------
   -- TXRQ34_Register --
   ---------------------

   subtype TXRQ34_TXRQST33_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST34_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST35_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST36_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST37_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST38_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST39_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST40_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST41_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST42_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST43_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST44_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST45_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST46_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST47_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST48_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST49_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST50_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST51_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST52_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST53_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST54_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST55_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST56_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST57_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST58_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST59_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST60_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST61_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST62_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST63_Field is TMS570LC43xx.Bit;
   subtype TXRQ34_TXRQST64_Field is TMS570LC43xx.Bit;

   --  Transmission Request 34 Register
   type TXRQ34_Register is record
      --  1 = Transmission of Message Object 33 Requested and not yet done
      TXRQST33 : TXRQ34_TXRQST33_Field := 16#0#;
      --  1 = Transmission of Message Object 34 Requested and not yet done
      TXRQST34 : TXRQ34_TXRQST34_Field := 16#0#;
      --  1 = Transmission of Message Object 35 Requested and not yet done
      TXRQST35 : TXRQ34_TXRQST35_Field := 16#0#;
      --  1 = Transmission of Message Object 36 Requested and not yet done
      TXRQST36 : TXRQ34_TXRQST36_Field := 16#0#;
      --  1 = Transmission of Message Object 37 Requested and not yet done
      TXRQST37 : TXRQ34_TXRQST37_Field := 16#0#;
      --  1 = Transmission of Message Object 38 Requested and not yet done
      TXRQST38 : TXRQ34_TXRQST38_Field := 16#0#;
      --  1 = Transmission of Message Object 39 Requested and not yet done
      TXRQST39 : TXRQ34_TXRQST39_Field := 16#0#;
      --  1 = Transmission of Message Object 40 Requested and not yet done
      TXRQST40 : TXRQ34_TXRQST40_Field := 16#0#;
      --  1 = Transmission of Message Object 41 Requested and not yet done
      TXRQST41 : TXRQ34_TXRQST41_Field := 16#0#;
      --  1 = Transmission of Message Object 42 Requested and not yet done
      TXRQST42 : TXRQ34_TXRQST42_Field := 16#0#;
      --  1 = Transmission of Message Object 43 Requested and not yet done
      TXRQST43 : TXRQ34_TXRQST43_Field := 16#0#;
      --  1 = Transmission of Message Object 44 Requested and not yet done
      TXRQST44 : TXRQ34_TXRQST44_Field := 16#0#;
      --  1 = Transmission of Message Object 45 Requested and not yet done
      TXRQST45 : TXRQ34_TXRQST45_Field := 16#0#;
      --  1 = Transmission of Message Object 46 Requested and not yet done
      TXRQST46 : TXRQ34_TXRQST46_Field := 16#0#;
      --  1 = Transmission of Message Object 47 Requested and not yet done
      TXRQST47 : TXRQ34_TXRQST47_Field := 16#0#;
      --  1 = Transmission of Message Object 48 Requested and not yet done
      TXRQST48 : TXRQ34_TXRQST48_Field := 16#0#;
      --  1 = Transmission of Message Object 49 Requested and not yet done
      TXRQST49 : TXRQ34_TXRQST49_Field := 16#0#;
      --  1 = Transmission of Message Object 50 Requested and not yet done
      TXRQST50 : TXRQ34_TXRQST50_Field := 16#0#;
      --  1 = Transmission of Message Object 51 Requested and not yet done
      TXRQST51 : TXRQ34_TXRQST51_Field := 16#0#;
      --  1 = Transmission of Message Object 52 Requested and not yet done
      TXRQST52 : TXRQ34_TXRQST52_Field := 16#0#;
      --  1 = Transmission of Message Object 53 Requested and not yet done
      TXRQST53 : TXRQ34_TXRQST53_Field := 16#0#;
      --  1 = Transmission of Message Object 54 Requested and not yet done
      TXRQST54 : TXRQ34_TXRQST54_Field := 16#0#;
      --  1 = Transmission of Message Object 55 Requested and not yet done
      TXRQST55 : TXRQ34_TXRQST55_Field := 16#0#;
      --  1 = Transmission of Message Object 56 Requested and not yet done
      TXRQST56 : TXRQ34_TXRQST56_Field := 16#0#;
      --  1 = Transmission of Message Object 57 Requested and not yet done
      TXRQST57 : TXRQ34_TXRQST57_Field := 16#0#;
      --  1 = Transmission of Message Object 58 Requested and not yet done
      TXRQST58 : TXRQ34_TXRQST58_Field := 16#0#;
      --  1 = Transmission of Message Object 59 Requested and not yet done
      TXRQST59 : TXRQ34_TXRQST59_Field := 16#0#;
      --  1 = Transmission of Message Object 60 Requested and not yet done
      TXRQST60 : TXRQ34_TXRQST60_Field := 16#0#;
      --  1 = Transmission of Message Object 61 Requested and not yet done
      TXRQST61 : TXRQ34_TXRQST61_Field := 16#0#;
      --  1 = Transmission of Message Object 62 Requested and not yet done
      TXRQST62 : TXRQ34_TXRQST62_Field := 16#0#;
      --  1 = Transmission of Message Object 63 Requested and not yet done
      TXRQST63 : TXRQ34_TXRQST63_Field := 16#0#;
      --  1 = Transmission of Message Object 64 Requested and not yet done
      TXRQST64 : TXRQ34_TXRQST64_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXRQ34_Register use record
      TXRQST33 at 16#0# range 0 .. 0;
      TXRQST34 at 16#0# range 1 .. 1;
      TXRQST35 at 16#0# range 2 .. 2;
      TXRQST36 at 16#0# range 3 .. 3;
      TXRQST37 at 16#0# range 4 .. 4;
      TXRQST38 at 16#0# range 5 .. 5;
      TXRQST39 at 16#0# range 6 .. 6;
      TXRQST40 at 16#0# range 7 .. 7;
      TXRQST41 at 16#0# range 8 .. 8;
      TXRQST42 at 16#0# range 9 .. 9;
      TXRQST43 at 16#0# range 10 .. 10;
      TXRQST44 at 16#0# range 11 .. 11;
      TXRQST45 at 16#0# range 12 .. 12;
      TXRQST46 at 16#0# range 13 .. 13;
      TXRQST47 at 16#0# range 14 .. 14;
      TXRQST48 at 16#0# range 15 .. 15;
      TXRQST49 at 16#0# range 16 .. 16;
      TXRQST50 at 16#0# range 17 .. 17;
      TXRQST51 at 16#0# range 18 .. 18;
      TXRQST52 at 16#0# range 19 .. 19;
      TXRQST53 at 16#0# range 20 .. 20;
      TXRQST54 at 16#0# range 21 .. 21;
      TXRQST55 at 16#0# range 22 .. 22;
      TXRQST56 at 16#0# range 23 .. 23;
      TXRQST57 at 16#0# range 24 .. 24;
      TXRQST58 at 16#0# range 25 .. 25;
      TXRQST59 at 16#0# range 26 .. 26;
      TXRQST60 at 16#0# range 27 .. 27;
      TXRQST61 at 16#0# range 28 .. 28;
      TXRQST62 at 16#0# range 29 .. 29;
      TXRQST63 at 16#0# range 30 .. 30;
      TXRQST64 at 16#0# range 31 .. 31;
   end record;

   ---------------------
   -- TXRQ56_Register --
   ---------------------

   subtype TXRQ56_TXRQST65_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST66_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST67_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST68_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST69_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST70_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST71_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST72_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST73_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST74_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST75_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST76_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST77_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST78_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST79_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST80_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST81_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST82_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST83_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST84_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST85_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST86_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST87_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST88_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST89_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST90_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST91_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST92_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST93_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST94_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST95_Field is TMS570LC43xx.Bit;
   subtype TXRQ56_TXRQST96_Field is TMS570LC43xx.Bit;

   --  Transmission Request 56 Register
   type TXRQ56_Register is record
      --  1 = Transmission of Message Object 65 Requested and not yet done
      TXRQST65 : TXRQ56_TXRQST65_Field := 16#0#;
      --  1 = Transmission of Message Object 66 Requested and not yet done
      TXRQST66 : TXRQ56_TXRQST66_Field := 16#0#;
      --  1 = Transmission of Message Object 67 Requested and not yet done
      TXRQST67 : TXRQ56_TXRQST67_Field := 16#0#;
      --  1 = Transmission of Message Object 68 Requested and not yet done
      TXRQST68 : TXRQ56_TXRQST68_Field := 16#0#;
      --  1 = Transmission of Message Object 69 Requested and not yet done
      TXRQST69 : TXRQ56_TXRQST69_Field := 16#0#;
      --  1 = Transmission of Message Object 70 Requested and not yet done
      TXRQST70 : TXRQ56_TXRQST70_Field := 16#0#;
      --  1 = Transmission of Message Object 71 Requested and not yet done
      TXRQST71 : TXRQ56_TXRQST71_Field := 16#0#;
      --  1 = Transmission of Message Object 72 Requested and not yet done
      TXRQST72 : TXRQ56_TXRQST72_Field := 16#0#;
      --  1 = Transmission of Message Object 73 Requested and not yet done
      TXRQST73 : TXRQ56_TXRQST73_Field := 16#0#;
      --  1 = Transmission of Message Object 74 Requested and not yet done
      TXRQST74 : TXRQ56_TXRQST74_Field := 16#0#;
      --  1 = Transmission of Message Object 75 Requested and not yet done
      TXRQST75 : TXRQ56_TXRQST75_Field := 16#0#;
      --  1 = Transmission of Message Object 76 Requested and not yet done
      TXRQST76 : TXRQ56_TXRQST76_Field := 16#0#;
      --  1 = Transmission of Message Object 77 Requested and not yet done
      TXRQST77 : TXRQ56_TXRQST77_Field := 16#0#;
      --  1 = Transmission of Message Object 78 Requested and not yet done
      TXRQST78 : TXRQ56_TXRQST78_Field := 16#0#;
      --  1 = Transmission of Message Object 79 Requested and not yet done
      TXRQST79 : TXRQ56_TXRQST79_Field := 16#0#;
      --  1 = Transmission of Message Object 80 Requested and not yet done
      TXRQST80 : TXRQ56_TXRQST80_Field := 16#0#;
      --  1 = Transmission of Message Object 81 Requested and not yet done
      TXRQST81 : TXRQ56_TXRQST81_Field := 16#0#;
      --  1 = Transmission of Message Object 82 Requested and not yet done
      TXRQST82 : TXRQ56_TXRQST82_Field := 16#0#;
      --  1 = Transmission of Message Object 83 Requested and not yet done
      TXRQST83 : TXRQ56_TXRQST83_Field := 16#0#;
      --  1 = Transmission of Message Object 84 Requested and not yet done
      TXRQST84 : TXRQ56_TXRQST84_Field := 16#0#;
      --  1 = Transmission of Message Object 85 Requested and not yet done
      TXRQST85 : TXRQ56_TXRQST85_Field := 16#0#;
      --  1 = Transmission of Message Object 86 Requested and not yet done
      TXRQST86 : TXRQ56_TXRQST86_Field := 16#0#;
      --  1 = Transmission of Message Object 87 Requested and not yet done
      TXRQST87 : TXRQ56_TXRQST87_Field := 16#0#;
      --  1 = Transmission of Message Object 88 Requested and not yet done
      TXRQST88 : TXRQ56_TXRQST88_Field := 16#0#;
      --  1 = Transmission of Message Object 89 Requested and not yet done
      TXRQST89 : TXRQ56_TXRQST89_Field := 16#0#;
      --  1 = Transmission of Message Object 90 Requested and not yet done
      TXRQST90 : TXRQ56_TXRQST90_Field := 16#0#;
      --  1 = Transmission of Message Object 91 Requested and not yet done
      TXRQST91 : TXRQ56_TXRQST91_Field := 16#0#;
      --  1 = Transmission of Message Object 92 Requested and not yet done
      TXRQST92 : TXRQ56_TXRQST92_Field := 16#0#;
      --  1 = Transmission of Message Object 93 Requested and not yet done
      TXRQST93 : TXRQ56_TXRQST93_Field := 16#0#;
      --  1 = Transmission of Message Object 94 Requested and not yet done
      TXRQST94 : TXRQ56_TXRQST94_Field := 16#0#;
      --  1 = Transmission of Message Object 95 Requested and not yet done
      TXRQST95 : TXRQ56_TXRQST95_Field := 16#0#;
      --  1 = Transmission of Message Object 96 Requested and not yet done
      TXRQST96 : TXRQ56_TXRQST96_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXRQ56_Register use record
      TXRQST65 at 16#0# range 0 .. 0;
      TXRQST66 at 16#0# range 1 .. 1;
      TXRQST67 at 16#0# range 2 .. 2;
      TXRQST68 at 16#0# range 3 .. 3;
      TXRQST69 at 16#0# range 4 .. 4;
      TXRQST70 at 16#0# range 5 .. 5;
      TXRQST71 at 16#0# range 6 .. 6;
      TXRQST72 at 16#0# range 7 .. 7;
      TXRQST73 at 16#0# range 8 .. 8;
      TXRQST74 at 16#0# range 9 .. 9;
      TXRQST75 at 16#0# range 10 .. 10;
      TXRQST76 at 16#0# range 11 .. 11;
      TXRQST77 at 16#0# range 12 .. 12;
      TXRQST78 at 16#0# range 13 .. 13;
      TXRQST79 at 16#0# range 14 .. 14;
      TXRQST80 at 16#0# range 15 .. 15;
      TXRQST81 at 16#0# range 16 .. 16;
      TXRQST82 at 16#0# range 17 .. 17;
      TXRQST83 at 16#0# range 18 .. 18;
      TXRQST84 at 16#0# range 19 .. 19;
      TXRQST85 at 16#0# range 20 .. 20;
      TXRQST86 at 16#0# range 21 .. 21;
      TXRQST87 at 16#0# range 22 .. 22;
      TXRQST88 at 16#0# range 23 .. 23;
      TXRQST89 at 16#0# range 24 .. 24;
      TXRQST90 at 16#0# range 25 .. 25;
      TXRQST91 at 16#0# range 26 .. 26;
      TXRQST92 at 16#0# range 27 .. 27;
      TXRQST93 at 16#0# range 28 .. 28;
      TXRQST94 at 16#0# range 29 .. 29;
      TXRQST95 at 16#0# range 30 .. 30;
      TXRQST96 at 16#0# range 31 .. 31;
   end record;

   ---------------------
   -- TXRQ78_Register --
   ---------------------

   subtype TXRQ78_TXRQST97_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST98_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST99_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST100_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST101_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST102_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST103_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST104_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST105_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST106_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST107_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST108_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST109_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST110_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST111_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST112_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST113_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST114_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST115_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST116_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST117_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST118_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST119_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST120_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST121_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST122_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST123_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST124_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST125_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST126_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST127_Field is TMS570LC43xx.Bit;
   subtype TXRQ78_TXRQST128_Field is TMS570LC43xx.Bit;

   --  Transmission Request 78 Register
   type TXRQ78_Register is record
      --  1 = Transmission of Message Object 97 Requested and not yet done
      TXRQST97  : TXRQ78_TXRQST97_Field := 16#0#;
      --  1 = Transmission of Message Object 98 Requested and not yet done
      TXRQST98  : TXRQ78_TXRQST98_Field := 16#0#;
      --  1 = Transmission of Message Object 99 Requested and not yet done
      TXRQST99  : TXRQ78_TXRQST99_Field := 16#0#;
      --  1 = Transmission of Message Object 100 Requested and not yet done
      TXRQST100 : TXRQ78_TXRQST100_Field := 16#0#;
      --  1 = Transmission of Message Object 101 Requested and not yet done
      TXRQST101 : TXRQ78_TXRQST101_Field := 16#0#;
      --  1 = Transmission of Message Object 102 Requested and not yet done
      TXRQST102 : TXRQ78_TXRQST102_Field := 16#0#;
      --  1 = Transmission of Message Object 103 Requested and not yet done
      TXRQST103 : TXRQ78_TXRQST103_Field := 16#0#;
      --  1 = Transmission of Message Object 104 Requested and not yet done
      TXRQST104 : TXRQ78_TXRQST104_Field := 16#0#;
      --  1 = Transmission of Message Object 105 Requested and not yet done
      TXRQST105 : TXRQ78_TXRQST105_Field := 16#0#;
      --  1 = Transmission of Message Object 106 Requested and not yet done
      TXRQST106 : TXRQ78_TXRQST106_Field := 16#0#;
      --  1 = Transmission of Message Object 107 Requested and not yet done
      TXRQST107 : TXRQ78_TXRQST107_Field := 16#0#;
      --  1 = Transmission of Message Object 108 Requested and not yet done
      TXRQST108 : TXRQ78_TXRQST108_Field := 16#0#;
      --  1 = Transmission of Message Object 109 Requested and not yet done
      TXRQST109 : TXRQ78_TXRQST109_Field := 16#0#;
      --  1 = Transmission of Message Object 110 Requested and not yet done
      TXRQST110 : TXRQ78_TXRQST110_Field := 16#0#;
      --  1 = Transmission of Message Object 111 Requested and not yet done
      TXRQST111 : TXRQ78_TXRQST111_Field := 16#0#;
      --  1 = Transmission of Message Object 112 Requested and not yet done
      TXRQST112 : TXRQ78_TXRQST112_Field := 16#0#;
      --  1 = Transmission of Message Object 112 Requested and not yet done
      TXRQST113 : TXRQ78_TXRQST113_Field := 16#0#;
      --  1 = Transmission of Message Object 114 Requested and not yet done
      TXRQST114 : TXRQ78_TXRQST114_Field := 16#0#;
      --  1 = Transmission of Message Object 115 Requested and not yet done
      TXRQST115 : TXRQ78_TXRQST115_Field := 16#0#;
      --  1 = Transmission of Message Object 116 Requested and not yet done
      TXRQST116 : TXRQ78_TXRQST116_Field := 16#0#;
      --  1 = Transmission of Message Object 117 Requested and not yet done
      TXRQST117 : TXRQ78_TXRQST117_Field := 16#0#;
      --  1 = Transmission of Message Object 118 Requested and not yet done
      TXRQST118 : TXRQ78_TXRQST118_Field := 16#0#;
      --  1 = Transmission of Message Object 119 Requested and not yet done
      TXRQST119 : TXRQ78_TXRQST119_Field := 16#0#;
      --  1 = Transmission of Message Object 120 Requested and not yet done
      TXRQST120 : TXRQ78_TXRQST120_Field := 16#0#;
      --  1 = Transmission of Message Object 121 Requested and not yet done
      TXRQST121 : TXRQ78_TXRQST121_Field := 16#0#;
      --  1 = Transmission of Message Object 122 Requested and not yet done
      TXRQST122 : TXRQ78_TXRQST122_Field := 16#0#;
      --  1 = Transmission of Message Object 123 Requested and not yet done
      TXRQST123 : TXRQ78_TXRQST123_Field := 16#0#;
      --  1 = Transmission of Message Object 124 Requested and not yet done
      TXRQST124 : TXRQ78_TXRQST124_Field := 16#0#;
      --  1 = Transmission of Message Object 125 Requested and not yet done
      TXRQST125 : TXRQ78_TXRQST125_Field := 16#0#;
      --  1 = Transmission of Message Object 126 Requested and not yet done
      TXRQST126 : TXRQ78_TXRQST126_Field := 16#0#;
      --  1 = Transmission of Message Object 127 Requested and not yet done
      TXRQST127 : TXRQ78_TXRQST127_Field := 16#0#;
      --  1 = Transmission of Message Object 128 Requested and not yet done
      TXRQST128 : TXRQ78_TXRQST128_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXRQ78_Register use record
      TXRQST97  at 16#0# range 0 .. 0;
      TXRQST98  at 16#0# range 1 .. 1;
      TXRQST99  at 16#0# range 2 .. 2;
      TXRQST100 at 16#0# range 3 .. 3;
      TXRQST101 at 16#0# range 4 .. 4;
      TXRQST102 at 16#0# range 5 .. 5;
      TXRQST103 at 16#0# range 6 .. 6;
      TXRQST104 at 16#0# range 7 .. 7;
      TXRQST105 at 16#0# range 8 .. 8;
      TXRQST106 at 16#0# range 9 .. 9;
      TXRQST107 at 16#0# range 10 .. 10;
      TXRQST108 at 16#0# range 11 .. 11;
      TXRQST109 at 16#0# range 12 .. 12;
      TXRQST110 at 16#0# range 13 .. 13;
      TXRQST111 at 16#0# range 14 .. 14;
      TXRQST112 at 16#0# range 15 .. 15;
      TXRQST113 at 16#0# range 16 .. 16;
      TXRQST114 at 16#0# range 17 .. 17;
      TXRQST115 at 16#0# range 18 .. 18;
      TXRQST116 at 16#0# range 19 .. 19;
      TXRQST117 at 16#0# range 20 .. 20;
      TXRQST118 at 16#0# range 21 .. 21;
      TXRQST119 at 16#0# range 22 .. 22;
      TXRQST120 at 16#0# range 23 .. 23;
      TXRQST121 at 16#0# range 24 .. 24;
      TXRQST122 at 16#0# range 25 .. 25;
      TXRQST123 at 16#0# range 26 .. 26;
      TXRQST124 at 16#0# range 27 .. 27;
      TXRQST125 at 16#0# range 28 .. 28;
      TXRQST126 at 16#0# range 29 .. 29;
      TXRQST127 at 16#0# range 30 .. 30;
      TXRQST128 at 16#0# range 31 .. 31;
   end record;

   ---------------------
   -- NWDATX_Register --
   ---------------------

   subtype NWDATX_NEWDATREG1_Field is TMS570LC43xx.UInt2;
   subtype NWDATX_NEWDATREG2_Field is TMS570LC43xx.UInt2;
   subtype NWDATX_NEWDATREG3_Field is TMS570LC43xx.UInt2;
   subtype NWDATX_NEWDATREG4_Field is TMS570LC43xx.UInt2;
   subtype NWDATX_NEWDATREG5_Field is TMS570LC43xx.UInt2;
   subtype NWDATX_NEWDATREG6_Field is TMS570LC43xx.UInt2;
   subtype NWDATX_NEWDATREG7_Field is TMS570LC43xx.UInt2;
   subtype NWDATX_NEWDATREG8_Field is TMS570LC43xx.UInt2;
   subtype NWDATX_Rsv1_Field is TMS570LC43xx.Short;

   --  New Data X Register
   type NWDATX_Register is record
      --  Not Zero = One or More Bits of NWDAT1 are Set
      NEWDATREG1 : NWDATX_NEWDATREG1_Field := 16#0#;
      --  Not Zero = One or More Bits of NWDAT2 are Set
      NEWDATREG2 : NWDATX_NEWDATREG2_Field := 16#0#;
      --  Not Zero = One or More Bits of NWDAT3 are Set
      NEWDATREG3 : NWDATX_NEWDATREG3_Field := 16#0#;
      --  Not Zero = One or More Bits of NWDAT4 are Set
      NEWDATREG4 : NWDATX_NEWDATREG4_Field := 16#0#;
      --  Not Zero = One or More Bits of NWDAT5 are Set
      NEWDATREG5 : NWDATX_NEWDATREG5_Field := 16#0#;
      --  Not Zero = One or More Bits of NWDAT6 are Set
      NEWDATREG6 : NWDATX_NEWDATREG6_Field := 16#0#;
      --  Not Zero = One or More Bits of NWDAT7 are Set
      NEWDATREG7 : NWDATX_NEWDATREG7_Field := 16#0#;
      --  Not Zero = One or More Bits of NWDAT8 are Set
      NEWDATREG8 : NWDATX_NEWDATREG8_Field := 16#0#;
      --  Reserved
      Rsv1       : NWDATX_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NWDATX_Register use record
      NEWDATREG1 at 16#0# range 0 .. 1;
      NEWDATREG2 at 16#0# range 2 .. 3;
      NEWDATREG3 at 16#0# range 4 .. 5;
      NEWDATREG4 at 16#0# range 6 .. 7;
      NEWDATREG5 at 16#0# range 8 .. 9;
      NEWDATREG6 at 16#0# range 10 .. 11;
      NEWDATREG7 at 16#0# range 12 .. 13;
      NEWDATREG8 at 16#0# range 14 .. 15;
      Rsv1       at 16#0# range 16 .. 31;
   end record;

   ----------------------
   -- NWDAT12_Register --
   ----------------------

   subtype NWDAT12_NewDat1_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat2_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat3_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat4_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat5_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat6_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat7_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat8_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat9_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat10_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat11_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat12_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat13_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat14_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat15_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat16_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat17_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat18_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat19_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat20_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat21_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat22_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat23_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat24_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat25_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat26_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat27_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat28_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat29_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat30_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat31_Field is TMS570LC43xx.Bit;
   subtype NWDAT12_NewDat32_Field is TMS570LC43xx.Bit;

   --  New Data 12 Register
   type NWDAT12_Register is record
      --  Message Handler or CPU has Written New Data To Message Object 1
      NewDat1  : NWDAT12_NewDat1_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 2
      NewDat2  : NWDAT12_NewDat2_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 3
      NewDat3  : NWDAT12_NewDat3_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 4
      NewDat4  : NWDAT12_NewDat4_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 5
      NewDat5  : NWDAT12_NewDat5_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 6
      NewDat6  : NWDAT12_NewDat6_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 7
      NewDat7  : NWDAT12_NewDat7_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 8
      NewDat8  : NWDAT12_NewDat8_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 9
      NewDat9  : NWDAT12_NewDat9_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 10
      NewDat10 : NWDAT12_NewDat10_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 11
      NewDat11 : NWDAT12_NewDat11_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 12
      NewDat12 : NWDAT12_NewDat12_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 13
      NewDat13 : NWDAT12_NewDat13_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 14
      NewDat14 : NWDAT12_NewDat14_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 15
      NewDat15 : NWDAT12_NewDat15_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 16
      NewDat16 : NWDAT12_NewDat16_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 17
      NewDat17 : NWDAT12_NewDat17_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 18
      NewDat18 : NWDAT12_NewDat18_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 19
      NewDat19 : NWDAT12_NewDat19_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 20
      NewDat20 : NWDAT12_NewDat20_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 21
      NewDat21 : NWDAT12_NewDat21_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 22
      NewDat22 : NWDAT12_NewDat22_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 23
      NewDat23 : NWDAT12_NewDat23_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 24
      NewDat24 : NWDAT12_NewDat24_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 25
      NewDat25 : NWDAT12_NewDat25_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 26
      NewDat26 : NWDAT12_NewDat26_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 27
      NewDat27 : NWDAT12_NewDat27_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 28
      NewDat28 : NWDAT12_NewDat28_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 29
      NewDat29 : NWDAT12_NewDat29_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 30
      NewDat30 : NWDAT12_NewDat30_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 31
      NewDat31 : NWDAT12_NewDat31_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 32
      NewDat32 : NWDAT12_NewDat32_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NWDAT12_Register use record
      NewDat1  at 16#0# range 0 .. 0;
      NewDat2  at 16#0# range 1 .. 1;
      NewDat3  at 16#0# range 2 .. 2;
      NewDat4  at 16#0# range 3 .. 3;
      NewDat5  at 16#0# range 4 .. 4;
      NewDat6  at 16#0# range 5 .. 5;
      NewDat7  at 16#0# range 6 .. 6;
      NewDat8  at 16#0# range 7 .. 7;
      NewDat9  at 16#0# range 8 .. 8;
      NewDat10 at 16#0# range 9 .. 9;
      NewDat11 at 16#0# range 10 .. 10;
      NewDat12 at 16#0# range 11 .. 11;
      NewDat13 at 16#0# range 12 .. 12;
      NewDat14 at 16#0# range 13 .. 13;
      NewDat15 at 16#0# range 14 .. 14;
      NewDat16 at 16#0# range 15 .. 15;
      NewDat17 at 16#0# range 16 .. 16;
      NewDat18 at 16#0# range 17 .. 17;
      NewDat19 at 16#0# range 18 .. 18;
      NewDat20 at 16#0# range 19 .. 19;
      NewDat21 at 16#0# range 20 .. 20;
      NewDat22 at 16#0# range 21 .. 21;
      NewDat23 at 16#0# range 22 .. 22;
      NewDat24 at 16#0# range 23 .. 23;
      NewDat25 at 16#0# range 24 .. 24;
      NewDat26 at 16#0# range 25 .. 25;
      NewDat27 at 16#0# range 26 .. 26;
      NewDat28 at 16#0# range 27 .. 27;
      NewDat29 at 16#0# range 28 .. 28;
      NewDat30 at 16#0# range 29 .. 29;
      NewDat31 at 16#0# range 30 .. 30;
      NewDat32 at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- NWDAT34_Register --
   ----------------------

   subtype NWDAT34_NewDat33_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat34_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat35_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat36_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat37_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat38_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat39_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat40_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat41_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat42_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat43_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat44_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat45_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat46_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat47_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat48_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat49_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat50_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat51_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat52_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat53_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat54_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat55_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat56_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat57_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat58_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat59_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat60_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat61_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat62_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat63_Field is TMS570LC43xx.Bit;
   subtype NWDAT34_NewDat64_Field is TMS570LC43xx.Bit;

   --  New Data 34 Register
   type NWDAT34_Register is record
      --  Message Handler or CPU has Written New Data To Message Object 33
      NewDat33 : NWDAT34_NewDat33_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 34
      NewDat34 : NWDAT34_NewDat34_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 35
      NewDat35 : NWDAT34_NewDat35_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 36
      NewDat36 : NWDAT34_NewDat36_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 37
      NewDat37 : NWDAT34_NewDat37_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 38
      NewDat38 : NWDAT34_NewDat38_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 39
      NewDat39 : NWDAT34_NewDat39_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 40
      NewDat40 : NWDAT34_NewDat40_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 41
      NewDat41 : NWDAT34_NewDat41_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 42
      NewDat42 : NWDAT34_NewDat42_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 43
      NewDat43 : NWDAT34_NewDat43_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 44
      NewDat44 : NWDAT34_NewDat44_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 45
      NewDat45 : NWDAT34_NewDat45_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 46
      NewDat46 : NWDAT34_NewDat46_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 47
      NewDat47 : NWDAT34_NewDat47_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 48
      NewDat48 : NWDAT34_NewDat48_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 49
      NewDat49 : NWDAT34_NewDat49_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 50
      NewDat50 : NWDAT34_NewDat50_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 51
      NewDat51 : NWDAT34_NewDat51_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 52
      NewDat52 : NWDAT34_NewDat52_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 53
      NewDat53 : NWDAT34_NewDat53_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 54
      NewDat54 : NWDAT34_NewDat54_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 55
      NewDat55 : NWDAT34_NewDat55_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 56
      NewDat56 : NWDAT34_NewDat56_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 57
      NewDat57 : NWDAT34_NewDat57_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 58
      NewDat58 : NWDAT34_NewDat58_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 59
      NewDat59 : NWDAT34_NewDat59_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 60
      NewDat60 : NWDAT34_NewDat60_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 61
      NewDat61 : NWDAT34_NewDat61_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 62
      NewDat62 : NWDAT34_NewDat62_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 63
      NewDat63 : NWDAT34_NewDat63_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 64
      NewDat64 : NWDAT34_NewDat64_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NWDAT34_Register use record
      NewDat33 at 16#0# range 0 .. 0;
      NewDat34 at 16#0# range 1 .. 1;
      NewDat35 at 16#0# range 2 .. 2;
      NewDat36 at 16#0# range 3 .. 3;
      NewDat37 at 16#0# range 4 .. 4;
      NewDat38 at 16#0# range 5 .. 5;
      NewDat39 at 16#0# range 6 .. 6;
      NewDat40 at 16#0# range 7 .. 7;
      NewDat41 at 16#0# range 8 .. 8;
      NewDat42 at 16#0# range 9 .. 9;
      NewDat43 at 16#0# range 10 .. 10;
      NewDat44 at 16#0# range 11 .. 11;
      NewDat45 at 16#0# range 12 .. 12;
      NewDat46 at 16#0# range 13 .. 13;
      NewDat47 at 16#0# range 14 .. 14;
      NewDat48 at 16#0# range 15 .. 15;
      NewDat49 at 16#0# range 16 .. 16;
      NewDat50 at 16#0# range 17 .. 17;
      NewDat51 at 16#0# range 18 .. 18;
      NewDat52 at 16#0# range 19 .. 19;
      NewDat53 at 16#0# range 20 .. 20;
      NewDat54 at 16#0# range 21 .. 21;
      NewDat55 at 16#0# range 22 .. 22;
      NewDat56 at 16#0# range 23 .. 23;
      NewDat57 at 16#0# range 24 .. 24;
      NewDat58 at 16#0# range 25 .. 25;
      NewDat59 at 16#0# range 26 .. 26;
      NewDat60 at 16#0# range 27 .. 27;
      NewDat61 at 16#0# range 28 .. 28;
      NewDat62 at 16#0# range 29 .. 29;
      NewDat63 at 16#0# range 30 .. 30;
      NewDat64 at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- NWDAT56_Register --
   ----------------------

   subtype NWDAT56_NewDat65_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat66_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat67_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat68_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat69_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat70_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat71_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat72_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat73_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat74_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat75_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat76_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat77_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat78_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat79_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat80_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat81_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat82_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat83_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat84_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat85_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat86_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat87_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat88_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat89_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat90_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat91_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat92_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat93_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat94_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat95_Field is TMS570LC43xx.Bit;
   subtype NWDAT56_NewDat96_Field is TMS570LC43xx.Bit;

   --  New Data 56 Register
   type NWDAT56_Register is record
      --  Message Handler or CPU has Written New Data To Message Object 65
      NewDat65 : NWDAT56_NewDat65_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 66
      NewDat66 : NWDAT56_NewDat66_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 67
      NewDat67 : NWDAT56_NewDat67_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 68
      NewDat68 : NWDAT56_NewDat68_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 69
      NewDat69 : NWDAT56_NewDat69_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 70
      NewDat70 : NWDAT56_NewDat70_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 71
      NewDat71 : NWDAT56_NewDat71_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 72
      NewDat72 : NWDAT56_NewDat72_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 73
      NewDat73 : NWDAT56_NewDat73_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 74
      NewDat74 : NWDAT56_NewDat74_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 75
      NewDat75 : NWDAT56_NewDat75_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 76
      NewDat76 : NWDAT56_NewDat76_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 77
      NewDat77 : NWDAT56_NewDat77_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 78
      NewDat78 : NWDAT56_NewDat78_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 79
      NewDat79 : NWDAT56_NewDat79_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 80
      NewDat80 : NWDAT56_NewDat80_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 81
      NewDat81 : NWDAT56_NewDat81_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 82
      NewDat82 : NWDAT56_NewDat82_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 83
      NewDat83 : NWDAT56_NewDat83_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 84
      NewDat84 : NWDAT56_NewDat84_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 85
      NewDat85 : NWDAT56_NewDat85_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 86
      NewDat86 : NWDAT56_NewDat86_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 87
      NewDat87 : NWDAT56_NewDat87_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 88
      NewDat88 : NWDAT56_NewDat88_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 89
      NewDat89 : NWDAT56_NewDat89_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 90
      NewDat90 : NWDAT56_NewDat90_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 91
      NewDat91 : NWDAT56_NewDat91_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 92
      NewDat92 : NWDAT56_NewDat92_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 93
      NewDat93 : NWDAT56_NewDat93_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 94
      NewDat94 : NWDAT56_NewDat94_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 95
      NewDat95 : NWDAT56_NewDat95_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 96
      NewDat96 : NWDAT56_NewDat96_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NWDAT56_Register use record
      NewDat65 at 16#0# range 0 .. 0;
      NewDat66 at 16#0# range 1 .. 1;
      NewDat67 at 16#0# range 2 .. 2;
      NewDat68 at 16#0# range 3 .. 3;
      NewDat69 at 16#0# range 4 .. 4;
      NewDat70 at 16#0# range 5 .. 5;
      NewDat71 at 16#0# range 6 .. 6;
      NewDat72 at 16#0# range 7 .. 7;
      NewDat73 at 16#0# range 8 .. 8;
      NewDat74 at 16#0# range 9 .. 9;
      NewDat75 at 16#0# range 10 .. 10;
      NewDat76 at 16#0# range 11 .. 11;
      NewDat77 at 16#0# range 12 .. 12;
      NewDat78 at 16#0# range 13 .. 13;
      NewDat79 at 16#0# range 14 .. 14;
      NewDat80 at 16#0# range 15 .. 15;
      NewDat81 at 16#0# range 16 .. 16;
      NewDat82 at 16#0# range 17 .. 17;
      NewDat83 at 16#0# range 18 .. 18;
      NewDat84 at 16#0# range 19 .. 19;
      NewDat85 at 16#0# range 20 .. 20;
      NewDat86 at 16#0# range 21 .. 21;
      NewDat87 at 16#0# range 22 .. 22;
      NewDat88 at 16#0# range 23 .. 23;
      NewDat89 at 16#0# range 24 .. 24;
      NewDat90 at 16#0# range 25 .. 25;
      NewDat91 at 16#0# range 26 .. 26;
      NewDat92 at 16#0# range 27 .. 27;
      NewDat93 at 16#0# range 28 .. 28;
      NewDat94 at 16#0# range 29 .. 29;
      NewDat95 at 16#0# range 30 .. 30;
      NewDat96 at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- NWDAT78_Register --
   ----------------------

   subtype NWDAT78_NewDat97_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat98_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat99_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat100_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat101_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat102_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat103_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat104_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat105_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat106_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat107_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat108_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat109_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat110_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat111_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat112_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat113_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat114_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat115_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat116_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat117_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat118_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat119_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat120_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat121_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat122_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat123_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat124_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat125_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat126_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat127_Field is TMS570LC43xx.Bit;
   subtype NWDAT78_NewDat128_Field is TMS570LC43xx.Bit;

   --  New Data 78 Register
   type NWDAT78_Register is record
      --  Message Handler or CPU has Written New Data To Message Object 97
      NewDat97  : NWDAT78_NewDat97_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 98
      NewDat98  : NWDAT78_NewDat98_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 99
      NewDat99  : NWDAT78_NewDat99_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 100
      NewDat100 : NWDAT78_NewDat100_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 101
      NewDat101 : NWDAT78_NewDat101_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 102
      NewDat102 : NWDAT78_NewDat102_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 103
      NewDat103 : NWDAT78_NewDat103_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 104
      NewDat104 : NWDAT78_NewDat104_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 105
      NewDat105 : NWDAT78_NewDat105_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 106
      NewDat106 : NWDAT78_NewDat106_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 107
      NewDat107 : NWDAT78_NewDat107_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 108
      NewDat108 : NWDAT78_NewDat108_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 109
      NewDat109 : NWDAT78_NewDat109_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 110
      NewDat110 : NWDAT78_NewDat110_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 111
      NewDat111 : NWDAT78_NewDat111_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 112
      NewDat112 : NWDAT78_NewDat112_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 112
      NewDat113 : NWDAT78_NewDat113_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 114
      NewDat114 : NWDAT78_NewDat114_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 115
      NewDat115 : NWDAT78_NewDat115_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 116
      NewDat116 : NWDAT78_NewDat116_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 117
      NewDat117 : NWDAT78_NewDat117_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 118
      NewDat118 : NWDAT78_NewDat118_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 119
      NewDat119 : NWDAT78_NewDat119_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 120
      NewDat120 : NWDAT78_NewDat120_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 121
      NewDat121 : NWDAT78_NewDat121_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 122
      NewDat122 : NWDAT78_NewDat122_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 123
      NewDat123 : NWDAT78_NewDat123_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 124
      NewDat124 : NWDAT78_NewDat124_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 125
      NewDat125 : NWDAT78_NewDat125_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 126
      NewDat126 : NWDAT78_NewDat126_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 127
      NewDat127 : NWDAT78_NewDat127_Field := 16#0#;
      --  Message Handler or CPU has Written New Data To Message Object 128
      NewDat128 : NWDAT78_NewDat128_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NWDAT78_Register use record
      NewDat97  at 16#0# range 0 .. 0;
      NewDat98  at 16#0# range 1 .. 1;
      NewDat99  at 16#0# range 2 .. 2;
      NewDat100 at 16#0# range 3 .. 3;
      NewDat101 at 16#0# range 4 .. 4;
      NewDat102 at 16#0# range 5 .. 5;
      NewDat103 at 16#0# range 6 .. 6;
      NewDat104 at 16#0# range 7 .. 7;
      NewDat105 at 16#0# range 8 .. 8;
      NewDat106 at 16#0# range 9 .. 9;
      NewDat107 at 16#0# range 10 .. 10;
      NewDat108 at 16#0# range 11 .. 11;
      NewDat109 at 16#0# range 12 .. 12;
      NewDat110 at 16#0# range 13 .. 13;
      NewDat111 at 16#0# range 14 .. 14;
      NewDat112 at 16#0# range 15 .. 15;
      NewDat113 at 16#0# range 16 .. 16;
      NewDat114 at 16#0# range 17 .. 17;
      NewDat115 at 16#0# range 18 .. 18;
      NewDat116 at 16#0# range 19 .. 19;
      NewDat117 at 16#0# range 20 .. 20;
      NewDat118 at 16#0# range 21 .. 21;
      NewDat119 at 16#0# range 22 .. 22;
      NewDat120 at 16#0# range 23 .. 23;
      NewDat121 at 16#0# range 24 .. 24;
      NewDat122 at 16#0# range 25 .. 25;
      NewDat123 at 16#0# range 26 .. 26;
      NewDat124 at 16#0# range 27 .. 27;
      NewDat125 at 16#0# range 28 .. 28;
      NewDat126 at 16#0# range 29 .. 29;
      NewDat127 at 16#0# range 30 .. 30;
      NewDat128 at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- INTPNDX_Register --
   ----------------------

   subtype INTPNDX_INTPNDREG1_Field is TMS570LC43xx.UInt2;
   subtype INTPNDX_INTPNDREG2_Field is TMS570LC43xx.UInt2;
   subtype INTPNDX_INTPNDREG3_Field is TMS570LC43xx.UInt2;
   subtype INTPNDX_INTPNDREG4_Field is TMS570LC43xx.UInt2;
   subtype INTPNDX_INTPNDREG5_Field is TMS570LC43xx.UInt2;
   subtype INTPNDX_INTPNDREG6_Field is TMS570LC43xx.UInt2;
   subtype INTPNDX_INTPNDREG7_Field is TMS570LC43xx.UInt2;
   subtype INTPNDX_INTPNDREG8_Field is TMS570LC43xx.UInt2;
   subtype INTPNDX_Rsv1_Field is TMS570LC43xx.Short;

   --  Interrupt Pending X Register
   type INTPNDX_Register is record
      --  Not Zero = One or More Bits of INTPND1 are Set
      INTPNDREG1 : INTPNDX_INTPNDREG1_Field := 16#0#;
      --  Not Zero = One or More Bits of INTPND2 are Set
      INTPNDREG2 : INTPNDX_INTPNDREG2_Field := 16#0#;
      --  Not Zero = One or More Bits of INTPND3 are Set
      INTPNDREG3 : INTPNDX_INTPNDREG3_Field := 16#0#;
      --  Not Zero = One or More Bits of INTPND4 are Set
      INTPNDREG4 : INTPNDX_INTPNDREG4_Field := 16#0#;
      --  Not Zero = One or More Bits of INTPND5 are Set
      INTPNDREG5 : INTPNDX_INTPNDREG5_Field := 16#0#;
      --  Not Zero = One or More Bits of INTPND6 are Set
      INTPNDREG6 : INTPNDX_INTPNDREG6_Field := 16#0#;
      --  Not Zero = One or More Bits of INTPND7 are Set
      INTPNDREG7 : INTPNDX_INTPNDREG7_Field := 16#0#;
      --  Not Zero = One or More Bits of INTPND8 are Set
      INTPNDREG8 : INTPNDX_INTPNDREG8_Field := 16#0#;
      --  Reserved
      Rsv1       : INTPNDX_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTPNDX_Register use record
      INTPNDREG1 at 16#0# range 0 .. 1;
      INTPNDREG2 at 16#0# range 2 .. 3;
      INTPNDREG3 at 16#0# range 4 .. 5;
      INTPNDREG4 at 16#0# range 6 .. 7;
      INTPNDREG5 at 16#0# range 8 .. 9;
      INTPNDREG6 at 16#0# range 10 .. 11;
      INTPNDREG7 at 16#0# range 12 .. 13;
      INTPNDREG8 at 16#0# range 14 .. 15;
      Rsv1       at 16#0# range 16 .. 31;
   end record;

   -----------------------
   -- INTPND12_Register --
   -----------------------

   subtype INTPND12_INTPND1_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND2_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND3_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND4_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND5_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND6_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND7_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND8_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND9_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND10_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND11_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND12_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND13_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND14_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND15_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND16_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND17_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND18_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND19_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND20_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND21_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND22_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND23_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND24_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND25_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND26_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND27_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND28_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND29_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND30_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND31_Field is TMS570LC43xx.Bit;
   subtype INTPND12_INTPND32_Field is TMS570LC43xx.Bit;

   --  Interrupt Pending 12 Register
   type INTPND12_Register is record
      --  Message Object 1 Interrupt Pending
      INTPND1  : INTPND12_INTPND1_Field := 16#0#;
      --  Message Object 2 Interrupt Pending
      INTPND2  : INTPND12_INTPND2_Field := 16#0#;
      --  Message Object 3 Interrupt Pending
      INTPND3  : INTPND12_INTPND3_Field := 16#0#;
      --  Message Object 4 Interrupt Pending
      INTPND4  : INTPND12_INTPND4_Field := 16#0#;
      --  Message Object 5 Interrupt Pending
      INTPND5  : INTPND12_INTPND5_Field := 16#0#;
      --  Message Object 6 Interrupt Pending
      INTPND6  : INTPND12_INTPND6_Field := 16#0#;
      --  Message Object 7 Interrupt Pending
      INTPND7  : INTPND12_INTPND7_Field := 16#0#;
      --  Message Object 8 Interrupt Pending
      INTPND8  : INTPND12_INTPND8_Field := 16#0#;
      --  Message Object 9 Interrupt Pending
      INTPND9  : INTPND12_INTPND9_Field := 16#0#;
      --  Message Object 10 Interrupt Pending
      INTPND10 : INTPND12_INTPND10_Field := 16#0#;
      --  Message Object 11 Interrupt Pending
      INTPND11 : INTPND12_INTPND11_Field := 16#0#;
      --  Message Object 12 Interrupt Pending
      INTPND12 : INTPND12_INTPND12_Field := 16#0#;
      --  Message Object 13 Interrupt Pending
      INTPND13 : INTPND12_INTPND13_Field := 16#0#;
      --  Message Object 14 Interrupt Pending
      INTPND14 : INTPND12_INTPND14_Field := 16#0#;
      --  Message Object 15 Interrupt Pending
      INTPND15 : INTPND12_INTPND15_Field := 16#0#;
      --  Message Object 16 Interrupt Pending
      INTPND16 : INTPND12_INTPND16_Field := 16#0#;
      --  Message Object 17 Interrupt Pending
      INTPND17 : INTPND12_INTPND17_Field := 16#0#;
      --  Message Object 18 Interrupt Pending
      INTPND18 : INTPND12_INTPND18_Field := 16#0#;
      --  Message Object 19 Interrupt Pending
      INTPND19 : INTPND12_INTPND19_Field := 16#0#;
      --  Message Object 20 Interrupt Pending
      INTPND20 : INTPND12_INTPND20_Field := 16#0#;
      --  Message Object 21 Interrupt Pending
      INTPND21 : INTPND12_INTPND21_Field := 16#0#;
      --  Message Object 22 Interrupt Pending
      INTPND22 : INTPND12_INTPND22_Field := 16#0#;
      --  Message Object 23 Interrupt Pending
      INTPND23 : INTPND12_INTPND23_Field := 16#0#;
      --  Message Object 24 Interrupt Pending
      INTPND24 : INTPND12_INTPND24_Field := 16#0#;
      --  Message Object 25 Interrupt Pending
      INTPND25 : INTPND12_INTPND25_Field := 16#0#;
      --  Message Object 26 Interrupt Pending
      INTPND26 : INTPND12_INTPND26_Field := 16#0#;
      --  Message Object 27 Interrupt Pending
      INTPND27 : INTPND12_INTPND27_Field := 16#0#;
      --  Message Object 28 Interrupt Pending
      INTPND28 : INTPND12_INTPND28_Field := 16#0#;
      --  Message Object 29 Interrupt Pending
      INTPND29 : INTPND12_INTPND29_Field := 16#0#;
      --  Message Object 30 Interrupt Pending
      INTPND30 : INTPND12_INTPND30_Field := 16#0#;
      --  Message Object 31 Interrupt Pending
      INTPND31 : INTPND12_INTPND31_Field := 16#0#;
      --  Message Object 32 Interrupt Pending
      INTPND32 : INTPND12_INTPND32_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTPND12_Register use record
      INTPND1  at 16#0# range 0 .. 0;
      INTPND2  at 16#0# range 1 .. 1;
      INTPND3  at 16#0# range 2 .. 2;
      INTPND4  at 16#0# range 3 .. 3;
      INTPND5  at 16#0# range 4 .. 4;
      INTPND6  at 16#0# range 5 .. 5;
      INTPND7  at 16#0# range 6 .. 6;
      INTPND8  at 16#0# range 7 .. 7;
      INTPND9  at 16#0# range 8 .. 8;
      INTPND10 at 16#0# range 9 .. 9;
      INTPND11 at 16#0# range 10 .. 10;
      INTPND12 at 16#0# range 11 .. 11;
      INTPND13 at 16#0# range 12 .. 12;
      INTPND14 at 16#0# range 13 .. 13;
      INTPND15 at 16#0# range 14 .. 14;
      INTPND16 at 16#0# range 15 .. 15;
      INTPND17 at 16#0# range 16 .. 16;
      INTPND18 at 16#0# range 17 .. 17;
      INTPND19 at 16#0# range 18 .. 18;
      INTPND20 at 16#0# range 19 .. 19;
      INTPND21 at 16#0# range 20 .. 20;
      INTPND22 at 16#0# range 21 .. 21;
      INTPND23 at 16#0# range 22 .. 22;
      INTPND24 at 16#0# range 23 .. 23;
      INTPND25 at 16#0# range 24 .. 24;
      INTPND26 at 16#0# range 25 .. 25;
      INTPND27 at 16#0# range 26 .. 26;
      INTPND28 at 16#0# range 27 .. 27;
      INTPND29 at 16#0# range 28 .. 28;
      INTPND30 at 16#0# range 29 .. 29;
      INTPND31 at 16#0# range 30 .. 30;
      INTPND32 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- INTPND34_Register --
   -----------------------

   subtype INTPND34_INTPND33_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND34_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND35_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND36_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND37_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND38_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND39_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND40_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND41_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND42_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND43_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND44_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND45_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND46_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND47_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND48_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND49_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND50_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND51_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND52_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND53_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND54_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND55_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND56_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND57_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND58_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND59_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND60_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND61_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND62_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND63_Field is TMS570LC43xx.Bit;
   subtype INTPND34_INTPND64_Field is TMS570LC43xx.Bit;

   --  Interrupt Pending 34 Register
   type INTPND34_Register is record
      --  Message Object 33 Interrupt Pending
      INTPND33 : INTPND34_INTPND33_Field := 16#0#;
      --  Message Object 34 Interrupt Pending
      INTPND34 : INTPND34_INTPND34_Field := 16#0#;
      --  Message Object 35 Interrupt Pending
      INTPND35 : INTPND34_INTPND35_Field := 16#0#;
      --  Message Object 36 Interrupt Pending
      INTPND36 : INTPND34_INTPND36_Field := 16#0#;
      --  Message Object 37 Interrupt Pending
      INTPND37 : INTPND34_INTPND37_Field := 16#0#;
      --  Message Object 38 Interrupt Pending
      INTPND38 : INTPND34_INTPND38_Field := 16#0#;
      --  Message Object 39 Interrupt Pending
      INTPND39 : INTPND34_INTPND39_Field := 16#0#;
      --  Message Object 40 Interrupt Pending
      INTPND40 : INTPND34_INTPND40_Field := 16#0#;
      --  Message Object 41 Interrupt Pending
      INTPND41 : INTPND34_INTPND41_Field := 16#0#;
      --  Message Object 42 Interrupt Pending
      INTPND42 : INTPND34_INTPND42_Field := 16#0#;
      --  Message Object 43 Interrupt Pending
      INTPND43 : INTPND34_INTPND43_Field := 16#0#;
      --  Message Object 44 Interrupt Pending
      INTPND44 : INTPND34_INTPND44_Field := 16#0#;
      --  Message Object 45 Interrupt Pending
      INTPND45 : INTPND34_INTPND45_Field := 16#0#;
      --  Message Object 46 Interrupt Pending
      INTPND46 : INTPND34_INTPND46_Field := 16#0#;
      --  Message Object 47 Interrupt Pending
      INTPND47 : INTPND34_INTPND47_Field := 16#0#;
      --  Message Object 48 Interrupt Pending
      INTPND48 : INTPND34_INTPND48_Field := 16#0#;
      --  Message Object 49 Interrupt Pending
      INTPND49 : INTPND34_INTPND49_Field := 16#0#;
      --  Message Object 50 Interrupt Pending
      INTPND50 : INTPND34_INTPND50_Field := 16#0#;
      --  Message Object 51 Interrupt Pending
      INTPND51 : INTPND34_INTPND51_Field := 16#0#;
      --  Message Object 52 Interrupt Pending
      INTPND52 : INTPND34_INTPND52_Field := 16#0#;
      --  Message Object 53 Interrupt Pending
      INTPND53 : INTPND34_INTPND53_Field := 16#0#;
      --  Message Object 54 Interrupt Pending
      INTPND54 : INTPND34_INTPND54_Field := 16#0#;
      --  Message Object 55 Interrupt Pending
      INTPND55 : INTPND34_INTPND55_Field := 16#0#;
      --  Message Object 56 Interrupt Pending
      INTPND56 : INTPND34_INTPND56_Field := 16#0#;
      --  Message Object 57 Interrupt Pending
      INTPND57 : INTPND34_INTPND57_Field := 16#0#;
      --  Message Object 58 Interrupt Pending
      INTPND58 : INTPND34_INTPND58_Field := 16#0#;
      --  Message Object 59 Interrupt Pending
      INTPND59 : INTPND34_INTPND59_Field := 16#0#;
      --  Message Object 60 Interrupt Pending
      INTPND60 : INTPND34_INTPND60_Field := 16#0#;
      --  Message Object 61 Interrupt Pending
      INTPND61 : INTPND34_INTPND61_Field := 16#0#;
      --  Message Object 62 Interrupt Pending
      INTPND62 : INTPND34_INTPND62_Field := 16#0#;
      --  Message Object 63 Interrupt Pending
      INTPND63 : INTPND34_INTPND63_Field := 16#0#;
      --  Message Object 64 Interrupt Pending
      INTPND64 : INTPND34_INTPND64_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTPND34_Register use record
      INTPND33 at 16#0# range 0 .. 0;
      INTPND34 at 16#0# range 1 .. 1;
      INTPND35 at 16#0# range 2 .. 2;
      INTPND36 at 16#0# range 3 .. 3;
      INTPND37 at 16#0# range 4 .. 4;
      INTPND38 at 16#0# range 5 .. 5;
      INTPND39 at 16#0# range 6 .. 6;
      INTPND40 at 16#0# range 7 .. 7;
      INTPND41 at 16#0# range 8 .. 8;
      INTPND42 at 16#0# range 9 .. 9;
      INTPND43 at 16#0# range 10 .. 10;
      INTPND44 at 16#0# range 11 .. 11;
      INTPND45 at 16#0# range 12 .. 12;
      INTPND46 at 16#0# range 13 .. 13;
      INTPND47 at 16#0# range 14 .. 14;
      INTPND48 at 16#0# range 15 .. 15;
      INTPND49 at 16#0# range 16 .. 16;
      INTPND50 at 16#0# range 17 .. 17;
      INTPND51 at 16#0# range 18 .. 18;
      INTPND52 at 16#0# range 19 .. 19;
      INTPND53 at 16#0# range 20 .. 20;
      INTPND54 at 16#0# range 21 .. 21;
      INTPND55 at 16#0# range 22 .. 22;
      INTPND56 at 16#0# range 23 .. 23;
      INTPND57 at 16#0# range 24 .. 24;
      INTPND58 at 16#0# range 25 .. 25;
      INTPND59 at 16#0# range 26 .. 26;
      INTPND60 at 16#0# range 27 .. 27;
      INTPND61 at 16#0# range 28 .. 28;
      INTPND62 at 16#0# range 29 .. 29;
      INTPND63 at 16#0# range 30 .. 30;
      INTPND64 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- INTPND56_Register --
   -----------------------

   subtype INTPND56_INTPND65_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND66_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND67_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND68_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND69_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND70_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND71_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND72_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND73_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND74_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND75_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND76_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND77_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND78_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND79_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND80_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND81_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND82_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND83_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND84_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND85_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND86_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND87_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND88_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND89_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND90_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND91_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND92_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND93_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND94_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND95_Field is TMS570LC43xx.Bit;
   subtype INTPND56_INTPND96_Field is TMS570LC43xx.Bit;

   --  Interrupt Pending 56 Register
   type INTPND56_Register is record
      --  Message Object 65 Interrupt Pending
      INTPND65 : INTPND56_INTPND65_Field := 16#0#;
      --  Message Object 66 Interrupt Pending
      INTPND66 : INTPND56_INTPND66_Field := 16#0#;
      --  Message Object 67 Interrupt Pending
      INTPND67 : INTPND56_INTPND67_Field := 16#0#;
      --  Message Object 68 Interrupt Pending
      INTPND68 : INTPND56_INTPND68_Field := 16#0#;
      --  Message Object 69 Interrupt Pending
      INTPND69 : INTPND56_INTPND69_Field := 16#0#;
      --  Message Object 70 Interrupt Pending
      INTPND70 : INTPND56_INTPND70_Field := 16#0#;
      --  Message Object 71 Interrupt Pending
      INTPND71 : INTPND56_INTPND71_Field := 16#0#;
      --  Message Object 72 Interrupt Pending
      INTPND72 : INTPND56_INTPND72_Field := 16#0#;
      --  Message Object 73 Interrupt Pending
      INTPND73 : INTPND56_INTPND73_Field := 16#0#;
      --  Message Object 74 Interrupt Pending
      INTPND74 : INTPND56_INTPND74_Field := 16#0#;
      --  Message Object 75 Interrupt Pending
      INTPND75 : INTPND56_INTPND75_Field := 16#0#;
      --  Message Object 76 Interrupt Pending
      INTPND76 : INTPND56_INTPND76_Field := 16#0#;
      --  Message Object 77 Interrupt Pending
      INTPND77 : INTPND56_INTPND77_Field := 16#0#;
      --  Message Object 78 Interrupt Pending
      INTPND78 : INTPND56_INTPND78_Field := 16#0#;
      --  Message Object 79 Interrupt Pending
      INTPND79 : INTPND56_INTPND79_Field := 16#0#;
      --  Message Object 80 Interrupt Pending
      INTPND80 : INTPND56_INTPND80_Field := 16#0#;
      --  Message Object 81 Interrupt Pending
      INTPND81 : INTPND56_INTPND81_Field := 16#0#;
      --  Message Object 82 Interrupt Pending
      INTPND82 : INTPND56_INTPND82_Field := 16#0#;
      --  Message Object 83 Interrupt Pending
      INTPND83 : INTPND56_INTPND83_Field := 16#0#;
      --  Message Object 84 Interrupt Pending
      INTPND84 : INTPND56_INTPND84_Field := 16#0#;
      --  Message Object 85 Interrupt Pending
      INTPND85 : INTPND56_INTPND85_Field := 16#0#;
      --  Message Object 86 Interrupt Pending
      INTPND86 : INTPND56_INTPND86_Field := 16#0#;
      --  Message Object 87 Interrupt Pending
      INTPND87 : INTPND56_INTPND87_Field := 16#0#;
      --  Message Object 88 Interrupt Pending
      INTPND88 : INTPND56_INTPND88_Field := 16#0#;
      --  Message Object 89 Interrupt Pending
      INTPND89 : INTPND56_INTPND89_Field := 16#0#;
      --  Message Object 90 Interrupt Pending
      INTPND90 : INTPND56_INTPND90_Field := 16#0#;
      --  Message Object 91 Interrupt Pending
      INTPND91 : INTPND56_INTPND91_Field := 16#0#;
      --  Message Object 92 Interrupt Pending
      INTPND92 : INTPND56_INTPND92_Field := 16#0#;
      --  Message Object 93 Interrupt Pending
      INTPND93 : INTPND56_INTPND93_Field := 16#0#;
      --  Message Object 94 Interrupt Pending
      INTPND94 : INTPND56_INTPND94_Field := 16#0#;
      --  Message Object 95 Interrupt Pending
      INTPND95 : INTPND56_INTPND95_Field := 16#0#;
      --  Message Object 96 Interrupt Pending
      INTPND96 : INTPND56_INTPND96_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTPND56_Register use record
      INTPND65 at 16#0# range 0 .. 0;
      INTPND66 at 16#0# range 1 .. 1;
      INTPND67 at 16#0# range 2 .. 2;
      INTPND68 at 16#0# range 3 .. 3;
      INTPND69 at 16#0# range 4 .. 4;
      INTPND70 at 16#0# range 5 .. 5;
      INTPND71 at 16#0# range 6 .. 6;
      INTPND72 at 16#0# range 7 .. 7;
      INTPND73 at 16#0# range 8 .. 8;
      INTPND74 at 16#0# range 9 .. 9;
      INTPND75 at 16#0# range 10 .. 10;
      INTPND76 at 16#0# range 11 .. 11;
      INTPND77 at 16#0# range 12 .. 12;
      INTPND78 at 16#0# range 13 .. 13;
      INTPND79 at 16#0# range 14 .. 14;
      INTPND80 at 16#0# range 15 .. 15;
      INTPND81 at 16#0# range 16 .. 16;
      INTPND82 at 16#0# range 17 .. 17;
      INTPND83 at 16#0# range 18 .. 18;
      INTPND84 at 16#0# range 19 .. 19;
      INTPND85 at 16#0# range 20 .. 20;
      INTPND86 at 16#0# range 21 .. 21;
      INTPND87 at 16#0# range 22 .. 22;
      INTPND88 at 16#0# range 23 .. 23;
      INTPND89 at 16#0# range 24 .. 24;
      INTPND90 at 16#0# range 25 .. 25;
      INTPND91 at 16#0# range 26 .. 26;
      INTPND92 at 16#0# range 27 .. 27;
      INTPND93 at 16#0# range 28 .. 28;
      INTPND94 at 16#0# range 29 .. 29;
      INTPND95 at 16#0# range 30 .. 30;
      INTPND96 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- INTPND78_Register --
   -----------------------

   subtype INTPND78_INTPND97_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND98_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND99_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND100_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND101_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND102_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND103_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND104_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND105_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND106_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND107_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND108_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND109_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND110_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND111_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND112_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND113_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND114_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND115_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND116_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND117_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND118_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND119_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND120_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND121_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND122_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND123_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND124_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND125_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND126_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND127_Field is TMS570LC43xx.Bit;
   subtype INTPND78_INTPND128_Field is TMS570LC43xx.Bit;

   --  Interrupt Pending 78 Register
   type INTPND78_Register is record
      --  Message Object 97 Interrupt Pending
      INTPND97  : INTPND78_INTPND97_Field := 16#0#;
      --  Message Object 98 Interrupt Pending
      INTPND98  : INTPND78_INTPND98_Field := 16#0#;
      --  Message Object 99 Interrupt Pending
      INTPND99  : INTPND78_INTPND99_Field := 16#0#;
      --  Message Object 100 Interrupt Pending
      INTPND100 : INTPND78_INTPND100_Field := 16#0#;
      --  Message Object 101 Interrupt Pending
      INTPND101 : INTPND78_INTPND101_Field := 16#0#;
      --  Message Object 102 Interrupt Pending
      INTPND102 : INTPND78_INTPND102_Field := 16#0#;
      --  Message Object 103 Interrupt Pending
      INTPND103 : INTPND78_INTPND103_Field := 16#0#;
      --  Message Object 104 Interrupt Pending
      INTPND104 : INTPND78_INTPND104_Field := 16#0#;
      --  Message Object 105 Interrupt Pending
      INTPND105 : INTPND78_INTPND105_Field := 16#0#;
      --  Message Object 106 Interrupt Pending
      INTPND106 : INTPND78_INTPND106_Field := 16#0#;
      --  Message Object 107 Interrupt Pending
      INTPND107 : INTPND78_INTPND107_Field := 16#0#;
      --  Message Object 108 Interrupt Pending
      INTPND108 : INTPND78_INTPND108_Field := 16#0#;
      --  Message Object 109 Interrupt Pending
      INTPND109 : INTPND78_INTPND109_Field := 16#0#;
      --  Message Object 110 Interrupt Pending
      INTPND110 : INTPND78_INTPND110_Field := 16#0#;
      --  Message Object 111 Interrupt Pending
      INTPND111 : INTPND78_INTPND111_Field := 16#0#;
      --  Message Object 112 Interrupt Pending
      INTPND112 : INTPND78_INTPND112_Field := 16#0#;
      --  Message Object 112 Interrupt Pending
      INTPND113 : INTPND78_INTPND113_Field := 16#0#;
      --  Message Object 114 Interrupt Pending
      INTPND114 : INTPND78_INTPND114_Field := 16#0#;
      --  Message Object 115 Interrupt Pending
      INTPND115 : INTPND78_INTPND115_Field := 16#0#;
      --  Message Object 116 Interrupt Pending
      INTPND116 : INTPND78_INTPND116_Field := 16#0#;
      --  Message Object 117 Interrupt Pending
      INTPND117 : INTPND78_INTPND117_Field := 16#0#;
      --  Message Object 118 Interrupt Pending
      INTPND118 : INTPND78_INTPND118_Field := 16#0#;
      --  Message Object 119 Interrupt Pending
      INTPND119 : INTPND78_INTPND119_Field := 16#0#;
      --  Message Object 120 Interrupt Pending
      INTPND120 : INTPND78_INTPND120_Field := 16#0#;
      --  Message Object 121 Interrupt Pending
      INTPND121 : INTPND78_INTPND121_Field := 16#0#;
      --  Message Object 122 Interrupt Pending
      INTPND122 : INTPND78_INTPND122_Field := 16#0#;
      --  Message Object 123 Interrupt Pending
      INTPND123 : INTPND78_INTPND123_Field := 16#0#;
      --  Message Object 124 Interrupt Pending
      INTPND124 : INTPND78_INTPND124_Field := 16#0#;
      --  Message Object 125 Interrupt Pending
      INTPND125 : INTPND78_INTPND125_Field := 16#0#;
      --  Message Object 126 Interrupt Pending
      INTPND126 : INTPND78_INTPND126_Field := 16#0#;
      --  Message Object 127 Interrupt Pending
      INTPND127 : INTPND78_INTPND127_Field := 16#0#;
      --  Message Object 128 Interrupt Pending
      INTPND128 : INTPND78_INTPND128_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTPND78_Register use record
      INTPND97  at 16#0# range 0 .. 0;
      INTPND98  at 16#0# range 1 .. 1;
      INTPND99  at 16#0# range 2 .. 2;
      INTPND100 at 16#0# range 3 .. 3;
      INTPND101 at 16#0# range 4 .. 4;
      INTPND102 at 16#0# range 5 .. 5;
      INTPND103 at 16#0# range 6 .. 6;
      INTPND104 at 16#0# range 7 .. 7;
      INTPND105 at 16#0# range 8 .. 8;
      INTPND106 at 16#0# range 9 .. 9;
      INTPND107 at 16#0# range 10 .. 10;
      INTPND108 at 16#0# range 11 .. 11;
      INTPND109 at 16#0# range 12 .. 12;
      INTPND110 at 16#0# range 13 .. 13;
      INTPND111 at 16#0# range 14 .. 14;
      INTPND112 at 16#0# range 15 .. 15;
      INTPND113 at 16#0# range 16 .. 16;
      INTPND114 at 16#0# range 17 .. 17;
      INTPND115 at 16#0# range 18 .. 18;
      INTPND116 at 16#0# range 19 .. 19;
      INTPND117 at 16#0# range 20 .. 20;
      INTPND118 at 16#0# range 21 .. 21;
      INTPND119 at 16#0# range 22 .. 22;
      INTPND120 at 16#0# range 23 .. 23;
      INTPND121 at 16#0# range 24 .. 24;
      INTPND122 at 16#0# range 25 .. 25;
      INTPND123 at 16#0# range 26 .. 26;
      INTPND124 at 16#0# range 27 .. 27;
      INTPND125 at 16#0# range 28 .. 28;
      INTPND126 at 16#0# range 29 .. 29;
      INTPND127 at 16#0# range 30 .. 30;
      INTPND128 at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- MSGVALX_Register --
   ----------------------

   subtype MSGVALX_MSGVALREG1_Field is TMS570LC43xx.UInt2;
   subtype MSGVALX_MSGVALREG2_Field is TMS570LC43xx.UInt2;
   subtype MSGVALX_MSGVALREG3_Field is TMS570LC43xx.UInt2;
   subtype MSGVALX_MSGVALREG4_Field is TMS570LC43xx.UInt2;
   subtype MSGVALX_MSGVALREG5_Field is TMS570LC43xx.UInt2;
   subtype MSGVALX_MSGVALREG6_Field is TMS570LC43xx.UInt2;
   subtype MSGVALX_MSGVALREG7_Field is TMS570LC43xx.UInt2;
   subtype MSGVALX_MSGVALREG8_Field is TMS570LC43xx.UInt2;
   subtype MSGVALX_Rsv1_Field is TMS570LC43xx.Short;

   --  Message Valid X Register
   type MSGVALX_Register is record
      --  Not Zero = One or More Bits of MSGVAL1 are Set
      MSGVALREG1 : MSGVALX_MSGVALREG1_Field := 16#0#;
      --  Not Zero = One or More Bits of MSGVAL2 are Set
      MSGVALREG2 : MSGVALX_MSGVALREG2_Field := 16#0#;
      --  Not Zero = One or More Bits of MSGVAL3 are Set
      MSGVALREG3 : MSGVALX_MSGVALREG3_Field := 16#0#;
      --  Not Zero = One or More Bits of MSGVAL4 are Set
      MSGVALREG4 : MSGVALX_MSGVALREG4_Field := 16#0#;
      --  Not Zero = One or More Bits of MSGVAL5 are Set
      MSGVALREG5 : MSGVALX_MSGVALREG5_Field := 16#0#;
      --  Not Zero = One or More Bits of MSGVAL6 are Set
      MSGVALREG6 : MSGVALX_MSGVALREG6_Field := 16#0#;
      --  Not Zero = One or More Bits of MSGVAL7 are Set
      MSGVALREG7 : MSGVALX_MSGVALREG7_Field := 16#0#;
      --  Not Zero = One or More Bits of MSGVAL8 are Set
      MSGVALREG8 : MSGVALX_MSGVALREG8_Field := 16#0#;
      --  Reserved
      Rsv1       : MSGVALX_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSGVALX_Register use record
      MSGVALREG1 at 16#0# range 0 .. 1;
      MSGVALREG2 at 16#0# range 2 .. 3;
      MSGVALREG3 at 16#0# range 4 .. 5;
      MSGVALREG4 at 16#0# range 6 .. 7;
      MSGVALREG5 at 16#0# range 8 .. 9;
      MSGVALREG6 at 16#0# range 10 .. 11;
      MSGVALREG7 at 16#0# range 12 .. 13;
      MSGVALREG8 at 16#0# range 14 .. 15;
      Rsv1       at 16#0# range 16 .. 31;
   end record;

   -----------------------
   -- MSGVAL12_Register --
   -----------------------

   subtype MSGVAL12_MSGVAL1_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL2_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL3_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL4_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL5_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL6_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL7_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL8_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL9_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL10_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL11_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL12_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL13_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL14_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL15_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL16_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL17_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL18_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL19_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL20_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL21_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL22_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL23_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL24_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL25_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL26_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL27_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL28_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL29_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL30_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL31_Field is TMS570LC43xx.Bit;
   subtype MSGVAL12_MSGVAL32_Field is TMS570LC43xx.Bit;

   --  Message Valid 12 Register
   type MSGVAL12_Register is record
      --  1 = Message Object 1 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL1  : MSGVAL12_MSGVAL1_Field := 16#0#;
      --  1 = Message Object 2 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL2  : MSGVAL12_MSGVAL2_Field := 16#0#;
      --  1 = Message Object 3 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL3  : MSGVAL12_MSGVAL3_Field := 16#0#;
      --  1 = Message Object 4 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL4  : MSGVAL12_MSGVAL4_Field := 16#0#;
      --  1 = Message Object 5 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL5  : MSGVAL12_MSGVAL5_Field := 16#0#;
      --  1 = Message Object 6 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL6  : MSGVAL12_MSGVAL6_Field := 16#0#;
      --  1 = Message Object 7 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL7  : MSGVAL12_MSGVAL7_Field := 16#0#;
      --  1 = Message Object 8 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL8  : MSGVAL12_MSGVAL8_Field := 16#0#;
      --  1 = Message Object 9 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL9  : MSGVAL12_MSGVAL9_Field := 16#0#;
      --  1 = Message Object 10 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL10 : MSGVAL12_MSGVAL10_Field := 16#0#;
      --  1 = Message Object 11 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL11 : MSGVAL12_MSGVAL11_Field := 16#0#;
      --  1 = Message Object 12 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL12 : MSGVAL12_MSGVAL12_Field := 16#0#;
      --  1 = Message Object 13 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL13 : MSGVAL12_MSGVAL13_Field := 16#0#;
      --  1 = Message Object 14 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL14 : MSGVAL12_MSGVAL14_Field := 16#0#;
      --  1 = Message Object 15 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL15 : MSGVAL12_MSGVAL15_Field := 16#0#;
      --  1 = Message Object 16 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL16 : MSGVAL12_MSGVAL16_Field := 16#0#;
      --  1 = Message Object 17 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL17 : MSGVAL12_MSGVAL17_Field := 16#0#;
      --  1 = Message Object 18 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL18 : MSGVAL12_MSGVAL18_Field := 16#0#;
      --  1 = Message Object 19 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL19 : MSGVAL12_MSGVAL19_Field := 16#0#;
      --  1 = Message Object 20 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL20 : MSGVAL12_MSGVAL20_Field := 16#0#;
      --  1 = Message Object 21 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL21 : MSGVAL12_MSGVAL21_Field := 16#0#;
      --  1 = Message Object 22 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL22 : MSGVAL12_MSGVAL22_Field := 16#0#;
      --  1 = Message Object 23 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL23 : MSGVAL12_MSGVAL23_Field := 16#0#;
      --  1 = Message Object 24 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL24 : MSGVAL12_MSGVAL24_Field := 16#0#;
      --  1 = Message Object 25 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL25 : MSGVAL12_MSGVAL25_Field := 16#0#;
      --  1 = Message Object 26 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL26 : MSGVAL12_MSGVAL26_Field := 16#0#;
      --  1 = Message Object 27 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL27 : MSGVAL12_MSGVAL27_Field := 16#0#;
      --  1 = Message Object 28 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL28 : MSGVAL12_MSGVAL28_Field := 16#0#;
      --  1 = Message Object 29 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL29 : MSGVAL12_MSGVAL29_Field := 16#0#;
      --  1 = Message Object 30 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL30 : MSGVAL12_MSGVAL30_Field := 16#0#;
      --  1 = Message Object 31 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL31 : MSGVAL12_MSGVAL31_Field := 16#0#;
      --  1 = Message Object 32 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL32 : MSGVAL12_MSGVAL32_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSGVAL12_Register use record
      MSGVAL1  at 16#0# range 0 .. 0;
      MSGVAL2  at 16#0# range 1 .. 1;
      MSGVAL3  at 16#0# range 2 .. 2;
      MSGVAL4  at 16#0# range 3 .. 3;
      MSGVAL5  at 16#0# range 4 .. 4;
      MSGVAL6  at 16#0# range 5 .. 5;
      MSGVAL7  at 16#0# range 6 .. 6;
      MSGVAL8  at 16#0# range 7 .. 7;
      MSGVAL9  at 16#0# range 8 .. 8;
      MSGVAL10 at 16#0# range 9 .. 9;
      MSGVAL11 at 16#0# range 10 .. 10;
      MSGVAL12 at 16#0# range 11 .. 11;
      MSGVAL13 at 16#0# range 12 .. 12;
      MSGVAL14 at 16#0# range 13 .. 13;
      MSGVAL15 at 16#0# range 14 .. 14;
      MSGVAL16 at 16#0# range 15 .. 15;
      MSGVAL17 at 16#0# range 16 .. 16;
      MSGVAL18 at 16#0# range 17 .. 17;
      MSGVAL19 at 16#0# range 18 .. 18;
      MSGVAL20 at 16#0# range 19 .. 19;
      MSGVAL21 at 16#0# range 20 .. 20;
      MSGVAL22 at 16#0# range 21 .. 21;
      MSGVAL23 at 16#0# range 22 .. 22;
      MSGVAL24 at 16#0# range 23 .. 23;
      MSGVAL25 at 16#0# range 24 .. 24;
      MSGVAL26 at 16#0# range 25 .. 25;
      MSGVAL27 at 16#0# range 26 .. 26;
      MSGVAL28 at 16#0# range 27 .. 27;
      MSGVAL29 at 16#0# range 28 .. 28;
      MSGVAL30 at 16#0# range 29 .. 29;
      MSGVAL31 at 16#0# range 30 .. 30;
      MSGVAL32 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- MSGVAL34_Register --
   -----------------------

   subtype MSGVAL34_MSGVAL33_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL34_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL35_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL36_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL37_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL38_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL39_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL40_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL41_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL42_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL43_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL44_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL45_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL46_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL47_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL48_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL49_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL50_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL51_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL52_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL53_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL54_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL55_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL56_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL57_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL58_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL59_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL60_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL61_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL62_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL63_Field is TMS570LC43xx.Bit;
   subtype MSGVAL34_MSGVAL64_Field is TMS570LC43xx.Bit;

   --  Message Valid 34 Register
   type MSGVAL34_Register is record
      --  1 = Message Object 33 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL33 : MSGVAL34_MSGVAL33_Field := 16#0#;
      --  1 = Message Object 34 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL34 : MSGVAL34_MSGVAL34_Field := 16#0#;
      --  1 = Message Object 35 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL35 : MSGVAL34_MSGVAL35_Field := 16#0#;
      --  1 = Message Object 36 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL36 : MSGVAL34_MSGVAL36_Field := 16#0#;
      --  1 = Message Object 37 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL37 : MSGVAL34_MSGVAL37_Field := 16#0#;
      --  1 = Message Object 38 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL38 : MSGVAL34_MSGVAL38_Field := 16#0#;
      --  1 = Message Object 39 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL39 : MSGVAL34_MSGVAL39_Field := 16#0#;
      --  1 = Message Object 40 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL40 : MSGVAL34_MSGVAL40_Field := 16#0#;
      --  1 = Message Object 41 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL41 : MSGVAL34_MSGVAL41_Field := 16#0#;
      --  1 = Message Object 42 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL42 : MSGVAL34_MSGVAL42_Field := 16#0#;
      --  1 = Message Object 43 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL43 : MSGVAL34_MSGVAL43_Field := 16#0#;
      --  1 = Message Object 44 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL44 : MSGVAL34_MSGVAL44_Field := 16#0#;
      --  1 = Message Object 45 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL45 : MSGVAL34_MSGVAL45_Field := 16#0#;
      --  1 = Message Object 46 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL46 : MSGVAL34_MSGVAL46_Field := 16#0#;
      --  1 = Message Object 47 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL47 : MSGVAL34_MSGVAL47_Field := 16#0#;
      --  1 = Message Object 48 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL48 : MSGVAL34_MSGVAL48_Field := 16#0#;
      --  1 = Message Object 49 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL49 : MSGVAL34_MSGVAL49_Field := 16#0#;
      --  1 = Message Object 50 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL50 : MSGVAL34_MSGVAL50_Field := 16#0#;
      --  1 = Message Object 51 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL51 : MSGVAL34_MSGVAL51_Field := 16#0#;
      --  1 = Message Object 52 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL52 : MSGVAL34_MSGVAL52_Field := 16#0#;
      --  1 = Message Object 53 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL53 : MSGVAL34_MSGVAL53_Field := 16#0#;
      --  1 = Message Object 54 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL54 : MSGVAL34_MSGVAL54_Field := 16#0#;
      --  1 = Message Object 55 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL55 : MSGVAL34_MSGVAL55_Field := 16#0#;
      --  1 = Message Object 56 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL56 : MSGVAL34_MSGVAL56_Field := 16#0#;
      --  1 = Message Object 57 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL57 : MSGVAL34_MSGVAL57_Field := 16#0#;
      --  1 = Message Object 58 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL58 : MSGVAL34_MSGVAL58_Field := 16#0#;
      --  1 = Message Object 59 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL59 : MSGVAL34_MSGVAL59_Field := 16#0#;
      --  1 = Message Object 60 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL60 : MSGVAL34_MSGVAL60_Field := 16#0#;
      --  1 = Message Object 61 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL61 : MSGVAL34_MSGVAL61_Field := 16#0#;
      --  1 = Message Object 62 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL62 : MSGVAL34_MSGVAL62_Field := 16#0#;
      --  1 = Message Object 63 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL63 : MSGVAL34_MSGVAL63_Field := 16#0#;
      --  1 = Message Object 64 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL64 : MSGVAL34_MSGVAL64_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSGVAL34_Register use record
      MSGVAL33 at 16#0# range 0 .. 0;
      MSGVAL34 at 16#0# range 1 .. 1;
      MSGVAL35 at 16#0# range 2 .. 2;
      MSGVAL36 at 16#0# range 3 .. 3;
      MSGVAL37 at 16#0# range 4 .. 4;
      MSGVAL38 at 16#0# range 5 .. 5;
      MSGVAL39 at 16#0# range 6 .. 6;
      MSGVAL40 at 16#0# range 7 .. 7;
      MSGVAL41 at 16#0# range 8 .. 8;
      MSGVAL42 at 16#0# range 9 .. 9;
      MSGVAL43 at 16#0# range 10 .. 10;
      MSGVAL44 at 16#0# range 11 .. 11;
      MSGVAL45 at 16#0# range 12 .. 12;
      MSGVAL46 at 16#0# range 13 .. 13;
      MSGVAL47 at 16#0# range 14 .. 14;
      MSGVAL48 at 16#0# range 15 .. 15;
      MSGVAL49 at 16#0# range 16 .. 16;
      MSGVAL50 at 16#0# range 17 .. 17;
      MSGVAL51 at 16#0# range 18 .. 18;
      MSGVAL52 at 16#0# range 19 .. 19;
      MSGVAL53 at 16#0# range 20 .. 20;
      MSGVAL54 at 16#0# range 21 .. 21;
      MSGVAL55 at 16#0# range 22 .. 22;
      MSGVAL56 at 16#0# range 23 .. 23;
      MSGVAL57 at 16#0# range 24 .. 24;
      MSGVAL58 at 16#0# range 25 .. 25;
      MSGVAL59 at 16#0# range 26 .. 26;
      MSGVAL60 at 16#0# range 27 .. 27;
      MSGVAL61 at 16#0# range 28 .. 28;
      MSGVAL62 at 16#0# range 29 .. 29;
      MSGVAL63 at 16#0# range 30 .. 30;
      MSGVAL64 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- MSGVAL56_Register --
   -----------------------

   subtype MSGVAL56_MSGVAL65_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL66_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL67_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL68_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL69_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL70_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL71_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL72_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL73_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL74_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL75_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL76_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL77_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL78_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL79_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL80_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL81_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL82_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL83_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL84_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL85_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL86_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL87_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL88_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL89_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL90_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL91_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL92_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL93_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL94_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL95_Field is TMS570LC43xx.Bit;
   subtype MSGVAL56_MSGVAL96_Field is TMS570LC43xx.Bit;

   --  Message Valid 56 Register
   type MSGVAL56_Register is record
      --  1 = Message Object 65 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL65 : MSGVAL56_MSGVAL65_Field := 16#0#;
      --  1 = Message Object 66 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL66 : MSGVAL56_MSGVAL66_Field := 16#0#;
      --  1 = Message Object 67 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL67 : MSGVAL56_MSGVAL67_Field := 16#0#;
      --  1 = Message Object 68 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL68 : MSGVAL56_MSGVAL68_Field := 16#0#;
      --  1 = Message Object 69 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL69 : MSGVAL56_MSGVAL69_Field := 16#0#;
      --  1 = Message Object 70 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL70 : MSGVAL56_MSGVAL70_Field := 16#0#;
      --  1 = Message Object 71 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL71 : MSGVAL56_MSGVAL71_Field := 16#0#;
      --  1 = Message Object 72 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL72 : MSGVAL56_MSGVAL72_Field := 16#0#;
      --  1 = Message Object 73 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL73 : MSGVAL56_MSGVAL73_Field := 16#0#;
      --  1 = Message Object 74 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL74 : MSGVAL56_MSGVAL74_Field := 16#0#;
      --  1 = Message Object 75 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL75 : MSGVAL56_MSGVAL75_Field := 16#0#;
      --  1 = Message Object 76 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL76 : MSGVAL56_MSGVAL76_Field := 16#0#;
      --  1 = Message Object 77 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL77 : MSGVAL56_MSGVAL77_Field := 16#0#;
      --  1 = Message Object 78 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL78 : MSGVAL56_MSGVAL78_Field := 16#0#;
      --  1 = Message Object 79 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL79 : MSGVAL56_MSGVAL79_Field := 16#0#;
      --  1 = Message Object 80 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL80 : MSGVAL56_MSGVAL80_Field := 16#0#;
      --  1 = Message Object 81 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL81 : MSGVAL56_MSGVAL81_Field := 16#0#;
      --  1 = Message Object 82 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL82 : MSGVAL56_MSGVAL82_Field := 16#0#;
      --  1 = Message Object 83 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL83 : MSGVAL56_MSGVAL83_Field := 16#0#;
      --  1 = Message Object 84 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL84 : MSGVAL56_MSGVAL84_Field := 16#0#;
      --  1 = Message Object 85 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL85 : MSGVAL56_MSGVAL85_Field := 16#0#;
      --  1 = Message Object 86 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL86 : MSGVAL56_MSGVAL86_Field := 16#0#;
      --  1 = Message Object 87 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL87 : MSGVAL56_MSGVAL87_Field := 16#0#;
      --  1 = Message Object 88 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL88 : MSGVAL56_MSGVAL88_Field := 16#0#;
      --  1 = Message Object 89 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL89 : MSGVAL56_MSGVAL89_Field := 16#0#;
      --  1 = Message Object 90 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL90 : MSGVAL56_MSGVAL90_Field := 16#0#;
      --  1 = Message Object 91 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL91 : MSGVAL56_MSGVAL91_Field := 16#0#;
      --  1 = Message Object 92 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL92 : MSGVAL56_MSGVAL92_Field := 16#0#;
      --  1 = Message Object 93 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL93 : MSGVAL56_MSGVAL93_Field := 16#0#;
      --  1 = Message Object 94 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL94 : MSGVAL56_MSGVAL94_Field := 16#0#;
      --  1 = Message Object 95 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL95 : MSGVAL56_MSGVAL95_Field := 16#0#;
      --  1 = Message Object 96 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL96 : MSGVAL56_MSGVAL96_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSGVAL56_Register use record
      MSGVAL65 at 16#0# range 0 .. 0;
      MSGVAL66 at 16#0# range 1 .. 1;
      MSGVAL67 at 16#0# range 2 .. 2;
      MSGVAL68 at 16#0# range 3 .. 3;
      MSGVAL69 at 16#0# range 4 .. 4;
      MSGVAL70 at 16#0# range 5 .. 5;
      MSGVAL71 at 16#0# range 6 .. 6;
      MSGVAL72 at 16#0# range 7 .. 7;
      MSGVAL73 at 16#0# range 8 .. 8;
      MSGVAL74 at 16#0# range 9 .. 9;
      MSGVAL75 at 16#0# range 10 .. 10;
      MSGVAL76 at 16#0# range 11 .. 11;
      MSGVAL77 at 16#0# range 12 .. 12;
      MSGVAL78 at 16#0# range 13 .. 13;
      MSGVAL79 at 16#0# range 14 .. 14;
      MSGVAL80 at 16#0# range 15 .. 15;
      MSGVAL81 at 16#0# range 16 .. 16;
      MSGVAL82 at 16#0# range 17 .. 17;
      MSGVAL83 at 16#0# range 18 .. 18;
      MSGVAL84 at 16#0# range 19 .. 19;
      MSGVAL85 at 16#0# range 20 .. 20;
      MSGVAL86 at 16#0# range 21 .. 21;
      MSGVAL87 at 16#0# range 22 .. 22;
      MSGVAL88 at 16#0# range 23 .. 23;
      MSGVAL89 at 16#0# range 24 .. 24;
      MSGVAL90 at 16#0# range 25 .. 25;
      MSGVAL91 at 16#0# range 26 .. 26;
      MSGVAL92 at 16#0# range 27 .. 27;
      MSGVAL93 at 16#0# range 28 .. 28;
      MSGVAL94 at 16#0# range 29 .. 29;
      MSGVAL95 at 16#0# range 30 .. 30;
      MSGVAL96 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- MSGVAL78_Register --
   -----------------------

   subtype MSGVAL78_MSGVAL97_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL98_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL99_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL100_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL101_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL102_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL103_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL104_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL105_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL106_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL107_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL108_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL109_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL110_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL111_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL112_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL113_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL114_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL115_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL116_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL117_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL118_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL119_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL120_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL121_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL122_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL123_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL124_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL125_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL126_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL127_Field is TMS570LC43xx.Bit;
   subtype MSGVAL78_MSGVAL128_Field is TMS570LC43xx.Bit;

   --  Message Valid 78 Register
   type MSGVAL78_Register is record
      --  1 = Message Object 97 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL97  : MSGVAL78_MSGVAL97_Field := 16#0#;
      --  1 = Message Object 98 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL98  : MSGVAL78_MSGVAL98_Field := 16#0#;
      --  1 = Message Object 99 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL99  : MSGVAL78_MSGVAL99_Field := 16#0#;
      --  1 = Message Object 100 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL100 : MSGVAL78_MSGVAL100_Field := 16#0#;
      --  1 = Message Object 101 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL101 : MSGVAL78_MSGVAL101_Field := 16#0#;
      --  1 = Message Object 102 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL102 : MSGVAL78_MSGVAL102_Field := 16#0#;
      --  1 = Message Object 103 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL103 : MSGVAL78_MSGVAL103_Field := 16#0#;
      --  1 = Message Object 104 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL104 : MSGVAL78_MSGVAL104_Field := 16#0#;
      --  1 = Message Object 105 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL105 : MSGVAL78_MSGVAL105_Field := 16#0#;
      --  1 = Message Object 106 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL106 : MSGVAL78_MSGVAL106_Field := 16#0#;
      --  1 = Message Object 107 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL107 : MSGVAL78_MSGVAL107_Field := 16#0#;
      --  1 = Message Object 108 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL108 : MSGVAL78_MSGVAL108_Field := 16#0#;
      --  1 = Message Object 109 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL109 : MSGVAL78_MSGVAL109_Field := 16#0#;
      --  1 = Message Object 110 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL110 : MSGVAL78_MSGVAL110_Field := 16#0#;
      --  1 = Message Object 111 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL111 : MSGVAL78_MSGVAL111_Field := 16#0#;
      --  1 = Message Object 112 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL112 : MSGVAL78_MSGVAL112_Field := 16#0#;
      --  1 = Message Object 112 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL113 : MSGVAL78_MSGVAL113_Field := 16#0#;
      --  1 = Message Object 114 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL114 : MSGVAL78_MSGVAL114_Field := 16#0#;
      --  1 = Message Object 115 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL115 : MSGVAL78_MSGVAL115_Field := 16#0#;
      --  1 = Message Object 116 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL116 : MSGVAL78_MSGVAL116_Field := 16#0#;
      --  1 = Message Object 117 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL117 : MSGVAL78_MSGVAL117_Field := 16#0#;
      --  1 = Message Object 118 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL118 : MSGVAL78_MSGVAL118_Field := 16#0#;
      --  1 = Message Object 119 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL119 : MSGVAL78_MSGVAL119_Field := 16#0#;
      --  1 = Message Object 120 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL120 : MSGVAL78_MSGVAL120_Field := 16#0#;
      --  1 = Message Object 121 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL121 : MSGVAL78_MSGVAL121_Field := 16#0#;
      --  1 = Message Object 122 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL122 : MSGVAL78_MSGVAL122_Field := 16#0#;
      --  1 = Message Object 123 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL123 : MSGVAL78_MSGVAL123_Field := 16#0#;
      --  1 = Message Object 124 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL124 : MSGVAL78_MSGVAL124_Field := 16#0#;
      --  1 = Message Object 125 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL125 : MSGVAL78_MSGVAL125_Field := 16#0#;
      --  1 = Message Object 126 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL126 : MSGVAL78_MSGVAL126_Field := 16#0#;
      --  1 = Message Object 127 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL127 : MSGVAL78_MSGVAL127_Field := 16#0#;
      --  1 = Message Object 128 Is Configured and Will Be Considered by The
      --  Message Handler
      MSGVAL128 : MSGVAL78_MSGVAL128_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSGVAL78_Register use record
      MSGVAL97  at 16#0# range 0 .. 0;
      MSGVAL98  at 16#0# range 1 .. 1;
      MSGVAL99  at 16#0# range 2 .. 2;
      MSGVAL100 at 16#0# range 3 .. 3;
      MSGVAL101 at 16#0# range 4 .. 4;
      MSGVAL102 at 16#0# range 5 .. 5;
      MSGVAL103 at 16#0# range 6 .. 6;
      MSGVAL104 at 16#0# range 7 .. 7;
      MSGVAL105 at 16#0# range 8 .. 8;
      MSGVAL106 at 16#0# range 9 .. 9;
      MSGVAL107 at 16#0# range 10 .. 10;
      MSGVAL108 at 16#0# range 11 .. 11;
      MSGVAL109 at 16#0# range 12 .. 12;
      MSGVAL110 at 16#0# range 13 .. 13;
      MSGVAL111 at 16#0# range 14 .. 14;
      MSGVAL112 at 16#0# range 15 .. 15;
      MSGVAL113 at 16#0# range 16 .. 16;
      MSGVAL114 at 16#0# range 17 .. 17;
      MSGVAL115 at 16#0# range 18 .. 18;
      MSGVAL116 at 16#0# range 19 .. 19;
      MSGVAL117 at 16#0# range 20 .. 20;
      MSGVAL118 at 16#0# range 21 .. 21;
      MSGVAL119 at 16#0# range 22 .. 22;
      MSGVAL120 at 16#0# range 23 .. 23;
      MSGVAL121 at 16#0# range 24 .. 24;
      MSGVAL122 at 16#0# range 25 .. 25;
      MSGVAL123 at 16#0# range 26 .. 26;
      MSGVAL124 at 16#0# range 27 .. 27;
      MSGVAL125 at 16#0# range 28 .. 28;
      MSGVAL126 at 16#0# range 29 .. 29;
      MSGVAL127 at 16#0# range 30 .. 30;
      MSGVAL128 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- INTMUX12_Register --
   -----------------------

   subtype INTMUX12_INTMUX1_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX2_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX3_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX4_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX5_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX6_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX7_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX8_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX9_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX10_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX11_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX12_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX13_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX14_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX15_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX16_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX17_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX18_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX19_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX20_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX21_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX22_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX23_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX24_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX25_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX26_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX27_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX28_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX29_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX30_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX31_Field is TMS570LC43xx.Bit;
   subtype INTMUX12_INTMUX32_Field is TMS570LC43xx.Bit;

   --  Interrupt Multiplexer 12 Register
   type INTMUX12_Register is record
      --  Message Object 1 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX1  : INTMUX12_INTMUX1_Field := 16#0#;
      --  Message Object 2 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX2  : INTMUX12_INTMUX2_Field := 16#0#;
      --  Message Object 3 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX3  : INTMUX12_INTMUX3_Field := 16#0#;
      --  Message Object 4 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX4  : INTMUX12_INTMUX4_Field := 16#0#;
      --  Message Object 5 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX5  : INTMUX12_INTMUX5_Field := 16#0#;
      --  Message Object 6 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX6  : INTMUX12_INTMUX6_Field := 16#0#;
      --  Message Object 7 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX7  : INTMUX12_INTMUX7_Field := 16#0#;
      --  Message Object 8 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX8  : INTMUX12_INTMUX8_Field := 16#0#;
      --  Message Object 9 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX9  : INTMUX12_INTMUX9_Field := 16#0#;
      --  Message Object 10 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX10 : INTMUX12_INTMUX10_Field := 16#0#;
      --  Message Object 11 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX11 : INTMUX12_INTMUX11_Field := 16#0#;
      --  Message Object 12 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX12 : INTMUX12_INTMUX12_Field := 16#0#;
      --  Message Object 13 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX13 : INTMUX12_INTMUX13_Field := 16#0#;
      --  Message Object 14 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX14 : INTMUX12_INTMUX14_Field := 16#0#;
      --  Message Object 15 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX15 : INTMUX12_INTMUX15_Field := 16#0#;
      --  Message Object 16 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX16 : INTMUX12_INTMUX16_Field := 16#0#;
      --  Message Object 17 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX17 : INTMUX12_INTMUX17_Field := 16#0#;
      --  Message Object 18 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX18 : INTMUX12_INTMUX18_Field := 16#0#;
      --  Message Object 19 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX19 : INTMUX12_INTMUX19_Field := 16#0#;
      --  Message Object 20 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX20 : INTMUX12_INTMUX20_Field := 16#0#;
      --  Message Object 21 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX21 : INTMUX12_INTMUX21_Field := 16#0#;
      --  Message Object 22 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX22 : INTMUX12_INTMUX22_Field := 16#0#;
      --  Message Object 23 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX23 : INTMUX12_INTMUX23_Field := 16#0#;
      --  Message Object 24 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX24 : INTMUX12_INTMUX24_Field := 16#0#;
      --  Message Object 25 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX25 : INTMUX12_INTMUX25_Field := 16#0#;
      --  Message Object 26 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX26 : INTMUX12_INTMUX26_Field := 16#0#;
      --  Message Object 27 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX27 : INTMUX12_INTMUX27_Field := 16#0#;
      --  Message Object 28 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX28 : INTMUX12_INTMUX28_Field := 16#0#;
      --  Message Object 29 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX29 : INTMUX12_INTMUX29_Field := 16#0#;
      --  Message Object 30 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX30 : INTMUX12_INTMUX30_Field := 16#0#;
      --  Message Object 31 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX31 : INTMUX12_INTMUX31_Field := 16#0#;
      --  Message Object 32 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX32 : INTMUX12_INTMUX32_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTMUX12_Register use record
      INTMUX1  at 16#0# range 0 .. 0;
      INTMUX2  at 16#0# range 1 .. 1;
      INTMUX3  at 16#0# range 2 .. 2;
      INTMUX4  at 16#0# range 3 .. 3;
      INTMUX5  at 16#0# range 4 .. 4;
      INTMUX6  at 16#0# range 5 .. 5;
      INTMUX7  at 16#0# range 6 .. 6;
      INTMUX8  at 16#0# range 7 .. 7;
      INTMUX9  at 16#0# range 8 .. 8;
      INTMUX10 at 16#0# range 9 .. 9;
      INTMUX11 at 16#0# range 10 .. 10;
      INTMUX12 at 16#0# range 11 .. 11;
      INTMUX13 at 16#0# range 12 .. 12;
      INTMUX14 at 16#0# range 13 .. 13;
      INTMUX15 at 16#0# range 14 .. 14;
      INTMUX16 at 16#0# range 15 .. 15;
      INTMUX17 at 16#0# range 16 .. 16;
      INTMUX18 at 16#0# range 17 .. 17;
      INTMUX19 at 16#0# range 18 .. 18;
      INTMUX20 at 16#0# range 19 .. 19;
      INTMUX21 at 16#0# range 20 .. 20;
      INTMUX22 at 16#0# range 21 .. 21;
      INTMUX23 at 16#0# range 22 .. 22;
      INTMUX24 at 16#0# range 23 .. 23;
      INTMUX25 at 16#0# range 24 .. 24;
      INTMUX26 at 16#0# range 25 .. 25;
      INTMUX27 at 16#0# range 26 .. 26;
      INTMUX28 at 16#0# range 27 .. 27;
      INTMUX29 at 16#0# range 28 .. 28;
      INTMUX30 at 16#0# range 29 .. 29;
      INTMUX31 at 16#0# range 30 .. 30;
      INTMUX32 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- INTMUX34_Register --
   -----------------------

   subtype INTMUX34_INTMUX33_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX34_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX35_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX36_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX37_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX38_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX39_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX40_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX41_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX42_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX43_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX44_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX45_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX46_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX47_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX48_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX49_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX50_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX51_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX52_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX53_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX54_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX55_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX56_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX57_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX58_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX59_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX60_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX61_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX62_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX63_Field is TMS570LC43xx.Bit;
   subtype INTMUX34_INTMUX64_Field is TMS570LC43xx.Bit;

   --  Interrupt Multiplexer 34 Register
   type INTMUX34_Register is record
      --  Message Object 33 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX33 : INTMUX34_INTMUX33_Field := 16#0#;
      --  Message Object 34 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX34 : INTMUX34_INTMUX34_Field := 16#0#;
      --  Message Object 35 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX35 : INTMUX34_INTMUX35_Field := 16#0#;
      --  Message Object 36 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX36 : INTMUX34_INTMUX36_Field := 16#0#;
      --  Message Object 37 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX37 : INTMUX34_INTMUX37_Field := 16#0#;
      --  Message Object 38 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX38 : INTMUX34_INTMUX38_Field := 16#0#;
      --  Message Object 39 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX39 : INTMUX34_INTMUX39_Field := 16#0#;
      --  Message Object 40 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX40 : INTMUX34_INTMUX40_Field := 16#0#;
      --  Message Object 41 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX41 : INTMUX34_INTMUX41_Field := 16#0#;
      --  Message Object 42 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX42 : INTMUX34_INTMUX42_Field := 16#0#;
      --  Message Object 43 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX43 : INTMUX34_INTMUX43_Field := 16#0#;
      --  Message Object 44 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX44 : INTMUX34_INTMUX44_Field := 16#0#;
      --  Message Object 45 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX45 : INTMUX34_INTMUX45_Field := 16#0#;
      --  Message Object 46 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX46 : INTMUX34_INTMUX46_Field := 16#0#;
      --  Message Object 47 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX47 : INTMUX34_INTMUX47_Field := 16#0#;
      --  Message Object 48 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX48 : INTMUX34_INTMUX48_Field := 16#0#;
      --  Message Object 49 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX49 : INTMUX34_INTMUX49_Field := 16#0#;
      --  Message Object 50 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX50 : INTMUX34_INTMUX50_Field := 16#0#;
      --  Message Object 51 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX51 : INTMUX34_INTMUX51_Field := 16#0#;
      --  Message Object 52 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX52 : INTMUX34_INTMUX52_Field := 16#0#;
      --  Message Object 53 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX53 : INTMUX34_INTMUX53_Field := 16#0#;
      --  Message Object 54 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX54 : INTMUX34_INTMUX54_Field := 16#0#;
      --  Message Object 55 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX55 : INTMUX34_INTMUX55_Field := 16#0#;
      --  Message Object 56 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX56 : INTMUX34_INTMUX56_Field := 16#0#;
      --  Message Object 57 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX57 : INTMUX34_INTMUX57_Field := 16#0#;
      --  Message Object 58 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX58 : INTMUX34_INTMUX58_Field := 16#0#;
      --  Message Object 59 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX59 : INTMUX34_INTMUX59_Field := 16#0#;
      --  Message Object 60 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX60 : INTMUX34_INTMUX60_Field := 16#0#;
      --  Message Object 61 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX61 : INTMUX34_INTMUX61_Field := 16#0#;
      --  Message Object 62 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX62 : INTMUX34_INTMUX62_Field := 16#0#;
      --  Message Object 63 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX63 : INTMUX34_INTMUX63_Field := 16#0#;
      --  Message Object 64 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX64 : INTMUX34_INTMUX64_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTMUX34_Register use record
      INTMUX33 at 16#0# range 0 .. 0;
      INTMUX34 at 16#0# range 1 .. 1;
      INTMUX35 at 16#0# range 2 .. 2;
      INTMUX36 at 16#0# range 3 .. 3;
      INTMUX37 at 16#0# range 4 .. 4;
      INTMUX38 at 16#0# range 5 .. 5;
      INTMUX39 at 16#0# range 6 .. 6;
      INTMUX40 at 16#0# range 7 .. 7;
      INTMUX41 at 16#0# range 8 .. 8;
      INTMUX42 at 16#0# range 9 .. 9;
      INTMUX43 at 16#0# range 10 .. 10;
      INTMUX44 at 16#0# range 11 .. 11;
      INTMUX45 at 16#0# range 12 .. 12;
      INTMUX46 at 16#0# range 13 .. 13;
      INTMUX47 at 16#0# range 14 .. 14;
      INTMUX48 at 16#0# range 15 .. 15;
      INTMUX49 at 16#0# range 16 .. 16;
      INTMUX50 at 16#0# range 17 .. 17;
      INTMUX51 at 16#0# range 18 .. 18;
      INTMUX52 at 16#0# range 19 .. 19;
      INTMUX53 at 16#0# range 20 .. 20;
      INTMUX54 at 16#0# range 21 .. 21;
      INTMUX55 at 16#0# range 22 .. 22;
      INTMUX56 at 16#0# range 23 .. 23;
      INTMUX57 at 16#0# range 24 .. 24;
      INTMUX58 at 16#0# range 25 .. 25;
      INTMUX59 at 16#0# range 26 .. 26;
      INTMUX60 at 16#0# range 27 .. 27;
      INTMUX61 at 16#0# range 28 .. 28;
      INTMUX62 at 16#0# range 29 .. 29;
      INTMUX63 at 16#0# range 30 .. 30;
      INTMUX64 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- INTMUX56_Register --
   -----------------------

   subtype INTMUX56_INTMUX65_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX66_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX67_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX68_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX69_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX70_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX71_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX72_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX73_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX74_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX75_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX76_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX77_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX78_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX79_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX80_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX81_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX82_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX83_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX84_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX85_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX86_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX87_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX88_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX89_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX90_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX91_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX92_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX93_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX94_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX95_Field is TMS570LC43xx.Bit;
   subtype INTMUX56_INTMUX96_Field is TMS570LC43xx.Bit;

   --  Interrupt Multiplexer 56 Register
   type INTMUX56_Register is record
      --  Message Object 65 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX65 : INTMUX56_INTMUX65_Field := 16#0#;
      --  Message Object 66 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX66 : INTMUX56_INTMUX66_Field := 16#0#;
      --  Message Object 67 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX67 : INTMUX56_INTMUX67_Field := 16#0#;
      --  Message Object 68 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX68 : INTMUX56_INTMUX68_Field := 16#0#;
      --  Message Object 69 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX69 : INTMUX56_INTMUX69_Field := 16#0#;
      --  Message Object 70 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX70 : INTMUX56_INTMUX70_Field := 16#0#;
      --  Message Object 71 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX71 : INTMUX56_INTMUX71_Field := 16#0#;
      --  Message Object 72 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX72 : INTMUX56_INTMUX72_Field := 16#0#;
      --  Message Object 73 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX73 : INTMUX56_INTMUX73_Field := 16#0#;
      --  Message Object 74 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX74 : INTMUX56_INTMUX74_Field := 16#0#;
      --  Message Object 75 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX75 : INTMUX56_INTMUX75_Field := 16#0#;
      --  Message Object 76 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX76 : INTMUX56_INTMUX76_Field := 16#0#;
      --  Message Object 77 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX77 : INTMUX56_INTMUX77_Field := 16#0#;
      --  Message Object 78 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX78 : INTMUX56_INTMUX78_Field := 16#0#;
      --  Message Object 79 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX79 : INTMUX56_INTMUX79_Field := 16#0#;
      --  Message Object 80 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX80 : INTMUX56_INTMUX80_Field := 16#0#;
      --  Message Object 81 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX81 : INTMUX56_INTMUX81_Field := 16#0#;
      --  Message Object 82 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX82 : INTMUX56_INTMUX82_Field := 16#0#;
      --  Message Object 83 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX83 : INTMUX56_INTMUX83_Field := 16#0#;
      --  Message Object 84 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX84 : INTMUX56_INTMUX84_Field := 16#0#;
      --  Message Object 85 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX85 : INTMUX56_INTMUX85_Field := 16#0#;
      --  Message Object 86 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX86 : INTMUX56_INTMUX86_Field := 16#0#;
      --  Message Object 87 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX87 : INTMUX56_INTMUX87_Field := 16#0#;
      --  Message Object 88 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX88 : INTMUX56_INTMUX88_Field := 16#0#;
      --  Message Object 89 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX89 : INTMUX56_INTMUX89_Field := 16#0#;
      --  Message Object 90 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX90 : INTMUX56_INTMUX90_Field := 16#0#;
      --  Message Object 91 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX91 : INTMUX56_INTMUX91_Field := 16#0#;
      --  Message Object 92 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX92 : INTMUX56_INTMUX92_Field := 16#0#;
      --  Message Object 93 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX93 : INTMUX56_INTMUX93_Field := 16#0#;
      --  Message Object 94 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX94 : INTMUX56_INTMUX94_Field := 16#0#;
      --  Message Object 95 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX95 : INTMUX56_INTMUX95_Field := 16#0#;
      --  Message Object 96 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX96 : INTMUX56_INTMUX96_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTMUX56_Register use record
      INTMUX65 at 16#0# range 0 .. 0;
      INTMUX66 at 16#0# range 1 .. 1;
      INTMUX67 at 16#0# range 2 .. 2;
      INTMUX68 at 16#0# range 3 .. 3;
      INTMUX69 at 16#0# range 4 .. 4;
      INTMUX70 at 16#0# range 5 .. 5;
      INTMUX71 at 16#0# range 6 .. 6;
      INTMUX72 at 16#0# range 7 .. 7;
      INTMUX73 at 16#0# range 8 .. 8;
      INTMUX74 at 16#0# range 9 .. 9;
      INTMUX75 at 16#0# range 10 .. 10;
      INTMUX76 at 16#0# range 11 .. 11;
      INTMUX77 at 16#0# range 12 .. 12;
      INTMUX78 at 16#0# range 13 .. 13;
      INTMUX79 at 16#0# range 14 .. 14;
      INTMUX80 at 16#0# range 15 .. 15;
      INTMUX81 at 16#0# range 16 .. 16;
      INTMUX82 at 16#0# range 17 .. 17;
      INTMUX83 at 16#0# range 18 .. 18;
      INTMUX84 at 16#0# range 19 .. 19;
      INTMUX85 at 16#0# range 20 .. 20;
      INTMUX86 at 16#0# range 21 .. 21;
      INTMUX87 at 16#0# range 22 .. 22;
      INTMUX88 at 16#0# range 23 .. 23;
      INTMUX89 at 16#0# range 24 .. 24;
      INTMUX90 at 16#0# range 25 .. 25;
      INTMUX91 at 16#0# range 26 .. 26;
      INTMUX92 at 16#0# range 27 .. 27;
      INTMUX93 at 16#0# range 28 .. 28;
      INTMUX94 at 16#0# range 29 .. 29;
      INTMUX95 at 16#0# range 30 .. 30;
      INTMUX96 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- INTMUX78_Register --
   -----------------------

   subtype INTMUX78_INTMUX97_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX98_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX99_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX100_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX101_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX102_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX103_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX104_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX105_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX106_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX107_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX108_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX109_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX110_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX111_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX112_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX113_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX114_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX115_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX116_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX117_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX118_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX119_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX120_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX121_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX122_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX123_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX124_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX125_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX126_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX127_Field is TMS570LC43xx.Bit;
   subtype INTMUX78_INTMUX128_Field is TMS570LC43xx.Bit;

   --  Interrupt Multiplexer 78 Register
   type INTMUX78_Register is record
      --  Message Object 97 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX97  : INTMUX78_INTMUX97_Field := 16#0#;
      --  Message Object 98 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX98  : INTMUX78_INTMUX98_Field := 16#0#;
      --  Message Object 99 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX99  : INTMUX78_INTMUX99_Field := 16#0#;
      --  Message Object 100 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX100 : INTMUX78_INTMUX100_Field := 16#0#;
      --  Message Object 101 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX101 : INTMUX78_INTMUX101_Field := 16#0#;
      --  Message Object 102 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX102 : INTMUX78_INTMUX102_Field := 16#0#;
      --  Message Object 103 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX103 : INTMUX78_INTMUX103_Field := 16#0#;
      --  Message Object 104 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX104 : INTMUX78_INTMUX104_Field := 16#0#;
      --  Message Object 105 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX105 : INTMUX78_INTMUX105_Field := 16#0#;
      --  Message Object 106 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX106 : INTMUX78_INTMUX106_Field := 16#0#;
      --  Message Object 107 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX107 : INTMUX78_INTMUX107_Field := 16#0#;
      --  Message Object 108 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX108 : INTMUX78_INTMUX108_Field := 16#0#;
      --  Message Object 109 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX109 : INTMUX78_INTMUX109_Field := 16#0#;
      --  Message Object 110 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX110 : INTMUX78_INTMUX110_Field := 16#0#;
      --  Message Object 111 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX111 : INTMUX78_INTMUX111_Field := 16#0#;
      --  Message Object 112 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX112 : INTMUX78_INTMUX112_Field := 16#0#;
      --  Message Object 112 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX113 : INTMUX78_INTMUX113_Field := 16#0#;
      --  Message Object 114 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX114 : INTMUX78_INTMUX114_Field := 16#0#;
      --  Message Object 115 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX115 : INTMUX78_INTMUX115_Field := 16#0#;
      --  Message Object 116 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX116 : INTMUX78_INTMUX116_Field := 16#0#;
      --  Message Object 117 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX117 : INTMUX78_INTMUX117_Field := 16#0#;
      --  Message Object 118 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX118 : INTMUX78_INTMUX118_Field := 16#0#;
      --  Message Object 119 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX119 : INTMUX78_INTMUX119_Field := 16#0#;
      --  Message Object 120 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX120 : INTMUX78_INTMUX120_Field := 16#0#;
      --  Message Object 121 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX121 : INTMUX78_INTMUX121_Field := 16#0#;
      --  Message Object 122 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX122 : INTMUX78_INTMUX122_Field := 16#0#;
      --  Message Object 123 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX123 : INTMUX78_INTMUX123_Field := 16#0#;
      --  Message Object 124 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX124 : INTMUX78_INTMUX124_Field := 16#0#;
      --  Message Object 125 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX125 : INTMUX78_INTMUX125_Field := 16#0#;
      --  Message Object 126 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX126 : INTMUX78_INTMUX126_Field := 16#0#;
      --  Message Object 127 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX127 : INTMUX78_INTMUX127_Field := 16#0#;
      --  Message Object 128 Interrupt Mux: 1=DCAN1INT, 0=DCAN0INT
      INTMUX128 : INTMUX78_INTMUX128_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTMUX78_Register use record
      INTMUX97  at 16#0# range 0 .. 0;
      INTMUX98  at 16#0# range 1 .. 1;
      INTMUX99  at 16#0# range 2 .. 2;
      INTMUX100 at 16#0# range 3 .. 3;
      INTMUX101 at 16#0# range 4 .. 4;
      INTMUX102 at 16#0# range 5 .. 5;
      INTMUX103 at 16#0# range 6 .. 6;
      INTMUX104 at 16#0# range 7 .. 7;
      INTMUX105 at 16#0# range 8 .. 8;
      INTMUX106 at 16#0# range 9 .. 9;
      INTMUX107 at 16#0# range 10 .. 10;
      INTMUX108 at 16#0# range 11 .. 11;
      INTMUX109 at 16#0# range 12 .. 12;
      INTMUX110 at 16#0# range 13 .. 13;
      INTMUX111 at 16#0# range 14 .. 14;
      INTMUX112 at 16#0# range 15 .. 15;
      INTMUX113 at 16#0# range 16 .. 16;
      INTMUX114 at 16#0# range 17 .. 17;
      INTMUX115 at 16#0# range 18 .. 18;
      INTMUX116 at 16#0# range 19 .. 19;
      INTMUX117 at 16#0# range 20 .. 20;
      INTMUX118 at 16#0# range 21 .. 21;
      INTMUX119 at 16#0# range 22 .. 22;
      INTMUX120 at 16#0# range 23 .. 23;
      INTMUX121 at 16#0# range 24 .. 24;
      INTMUX122 at 16#0# range 25 .. 25;
      INTMUX123 at 16#0# range 26 .. 26;
      INTMUX124 at 16#0# range 27 .. 27;
      INTMUX125 at 16#0# range 28 .. 28;
      INTMUX126 at 16#0# range 29 .. 29;
      INTMUX127 at 16#0# range 30 .. 30;
      INTMUX128 at 16#0# range 31 .. 31;
   end record;

   ---------------------
   -- IF1CMD_Register --
   ---------------------

   subtype IF1CMD_MESSAGE_NUMBER_Field is TMS570LC43xx.Byte;
   subtype IF1CMD_Rsv2_Field is TMS570LC43xx.UInt6;
   subtype IF1CMD_DMA_ACTIVE_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_BUSY_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_DATA_B_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_DATA_A_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_TXRQST_NEWDAT_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_CLRINTPND_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_CONTROL_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_ARB_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_MASK_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_WR_RD_Field is TMS570LC43xx.Bit;
   subtype IF1CMD_Rsv1_Field is TMS570LC43xx.Byte;

   --  IF1 Command Register
   type IF1CMD_Register is record
      --  Message Object Number for Transfer 0x1-0x80 Valid
      MESSAGE_NUMBER : IF1CMD_MESSAGE_NUMBER_Field := 16#0#;
      --  Reserved
      Rsv2           : IF1CMD_Rsv2_Field := 16#0#;
      --  1 = DMA Request after Transfer
      DMA_ACTIVE     : IF1CMD_DMA_ACTIVE_Field := 16#0#;
      --  1 = Transfer In Progress
      BUSY           : IF1CMD_BUSY_Field := 16#0#;
      --  Data Bytes 4-7: 0=Unchanged, 1=Transferred
      DATA_B         : IF1CMD_DATA_B_Field := 16#0#;
      --  Data Bytes 0-3: 0=Unchanged, 1=Transferred
      DATA_A         : IF1CMD_DATA_A_Field := 16#0#;
      --  Reads: Newdat Unchanged on 0, Clear on 1. Writes: TxRqst/NewDat:
      --  0=Control Determines Set, 1=Set
      TXRQST_NEWDAT  : IF1CMD_TXRQST_NEWDAT_Field := 16#0#;
      --  0=Interrupt Pending Unchanged, 1= Clear on Reads
      CLRINTPND      : IF1CMD_CLRINTPND_Field := 16#0#;
      --  0=Control Bits Unchanged, 1=Control Bits Transferred
      CONTROL        : IF1CMD_CONTROL_Field := 16#0#;
      --  0=Arb Bits Unchanged, 1=Arb Bits Transferred
      ARB            : IF1CMD_ARB_Field := 16#0#;
      --  0=Mask Bits Unchanged, 1=Mask Bits Transferred
      MASK           : IF1CMD_MASK_Field := 16#0#;
      --  0=Read: Message Object->IF, 1=Write: IF->Message Object
      WR_RD          : IF1CMD_WR_RD_Field := 16#0#;
      --  Reserved
      Rsv1           : IF1CMD_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1CMD_Register use record
      MESSAGE_NUMBER at 16#0# range 0 .. 7;
      Rsv2           at 16#0# range 8 .. 13;
      DMA_ACTIVE     at 16#0# range 14 .. 14;
      BUSY           at 16#0# range 15 .. 15;
      DATA_B         at 16#0# range 16 .. 16;
      DATA_A         at 16#0# range 17 .. 17;
      TXRQST_NEWDAT  at 16#0# range 18 .. 18;
      CLRINTPND      at 16#0# range 19 .. 19;
      CONTROL        at 16#0# range 20 .. 20;
      ARB            at 16#0# range 21 .. 21;
      MASK           at 16#0# range 22 .. 22;
      WR_RD          at 16#0# range 23 .. 23;
      Rsv1           at 16#0# range 24 .. 31;
   end record;

   ---------------------
   -- IF1MSK_Register --
   ---------------------

   subtype IF1MSK_MSK_Field is TMS570LC43xx.UInt29;
   subtype IF1MSK_Rsv1_Field is TMS570LC43xx.Bit;
   subtype IF1MSK_MDIR_Field is TMS570LC43xx.Bit;
   subtype IF1MSK_MXTD_Field is TMS570LC43xx.Bit;

   --  IF1 Mask Register
   type IF1MSK_Register is record
      --  Identifier Mask 0=Not Used, 1=Used for Acceptance Filtering
      MSK  : IF1MSK_MSK_Field := 16#0#;
      --  Reserved
      Rsv1 : IF1MSK_Rsv1_Field := 16#0#;
      --  Message Direction Bit (DIR) Used For Filtering 0=No, 1=Yes
      MDIR : IF1MSK_MDIR_Field := 16#0#;
      --  Extended Identifer (IDE) Used For Filtering 0=No, 1=Yes
      MXTD : IF1MSK_MXTD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1MSK_Register use record
      MSK  at 16#0# range 0 .. 28;
      Rsv1 at 16#0# range 29 .. 29;
      MDIR at 16#0# range 30 .. 30;
      MXTD at 16#0# range 31 .. 31;
   end record;

   ---------------------
   -- IF1ARB_Register --
   ---------------------

   subtype IF1ARB_ID_Field is TMS570LC43xx.UInt29;
   subtype IF1ARB_DIR_Field is TMS570LC43xx.Bit;
   subtype IF1ARB_XTD_Field is TMS570LC43xx.Bit;
   subtype IF1ARB_MSGGVAL_Field is TMS570LC43xx.Bit;

   --  IF1 Arbitation Register
   type IF1ARB_Register is record
      --  Message Identifier
      ID      : IF1ARB_ID_Field := 16#0#;
      --  Message Direction 0=Receive, 1=Transmit
      DIR     : IF1ARB_DIR_Field := 16#0#;
      --  Extended Identifier 0=11 bit, 1=29 Bit
      XTD     : IF1ARB_XTD_Field := 16#0#;
      --  Message Valid 0=No, 1=Yes
      MSGGVAL : IF1ARB_MSGGVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1ARB_Register use record
      ID      at 16#0# range 0 .. 28;
      DIR     at 16#0# range 29 .. 29;
      XTD     at 16#0# range 30 .. 30;
      MSGGVAL at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- IF1MCTL_Register --
   ----------------------

   subtype IF1MCTL_DLC_Field is TMS570LC43xx.UInt4;
   subtype IF1MCTL_Rsv2_Field is TMS570LC43xx.UInt3;
   subtype IF1MCTL_EOB_Field is TMS570LC43xx.Bit;
   subtype IF1MCTL_TXRQST_Field is TMS570LC43xx.Bit;
   subtype IF1MCTL_RMTEN_Field is TMS570LC43xx.Bit;
   subtype IF1MCTL_RXIE_Field is TMS570LC43xx.Bit;
   subtype IF1MCTL_TXIE_Field is TMS570LC43xx.Bit;
   subtype IF1MCTL_UMASK_Field is TMS570LC43xx.Bit;
   subtype IF1MCTL_INTPND_Field is TMS570LC43xx.Bit;
   subtype IF1MCTL_MSGLST_Field is TMS570LC43xx.Bit;
   subtype IF1MCTL_NEWDAT_Field is TMS570LC43xx.Bit;
   subtype IF1MCTL_Rsv1_Field is TMS570LC43xx.Short;

   --  IF1 Message Control Register
   type IF1MCTL_Register is record
      --  Data Length Code 0-8 Data Frame has 0-8 bits, 9-F Data Frame has 8
      --  Bytes
      DLC    : IF1MCTL_DLC_Field := 16#0#;
      --  Reserved
      Rsv2   : IF1MCTL_Rsv2_Field := 16#0#;
      --  1 = Concatenates multiple messages to build a FIFO buffer
      EOB    : IF1MCTL_EOB_Field := 16#0#;
      --  1 = Tranmission of Message Object Requested And Not Yet Done
      TXRQST : IF1MCTL_TXRQST_Field := 16#0#;
      --  1 = At the reception of a remote frame TXRQST is set
      RMTEN  : IF1MCTL_RMTEN_Field := 16#0#;
      --  1 = IntPnd will be triggered after successful reception of frame
      RXIE   : IF1MCTL_RXIE_Field := 16#0#;
      --  1 = IntPnd will be triggered after successful transmission of frame
      TXIE   : IF1MCTL_TXIE_Field := 16#0#;
      --  1 = Use Mask MSK[28:0],MXTD,MDIR for Filtering, 0=Mask Ignored
      UMASK  : IF1MCTL_UMASK_Field := 16#0#;
      --  1 = Interrupt Pending
      INTPND : IF1MCTL_INTPND_Field := 16#0#;
      --  1 = Previous Message Overwritten
      MSGLST : IF1MCTL_MSGLST_Field := 16#0#;
      --  1 = New Data Written to Data Portion of Message
      NEWDAT : IF1MCTL_NEWDAT_Field := 16#0#;
      --  Reserved
      Rsv1   : IF1MCTL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1MCTL_Register use record
      DLC    at 16#0# range 0 .. 3;
      Rsv2   at 16#0# range 4 .. 6;
      EOB    at 16#0# range 7 .. 7;
      TXRQST at 16#0# range 8 .. 8;
      RMTEN  at 16#0# range 9 .. 9;
      RXIE   at 16#0# range 10 .. 10;
      TXIE   at 16#0# range 11 .. 11;
      UMASK  at 16#0# range 12 .. 12;
      INTPND at 16#0# range 13 .. 13;
      MSGLST at 16#0# range 14 .. 14;
      NEWDAT at 16#0# range 15 .. 15;
      Rsv1   at 16#0# range 16 .. 31;
   end record;

   ----------------------
   -- IF1DATA_Register --
   ----------------------

   subtype IF1DATA_DATA0_Field is TMS570LC43xx.Byte;
   subtype IF1DATA_DATA1_Field is TMS570LC43xx.Byte;
   subtype IF1DATA_DATA2_Field is TMS570LC43xx.Byte;
   subtype IF1DATA_DATA3_Field is TMS570LC43xx.Byte;

   --  IF1 Data A Register
   type IF1DATA_Register is record
      --  Message Data Byte 0
      DATA0 : IF1DATA_DATA0_Field := 16#0#;
      --  Message Data Byte 1
      DATA1 : IF1DATA_DATA1_Field := 16#0#;
      --  Message Data Byte 2
      DATA2 : IF1DATA_DATA2_Field := 16#0#;
      --  Message Data Byte 3
      DATA3 : IF1DATA_DATA3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1DATA_Register use record
      DATA0 at 16#0# range 0 .. 7;
      DATA1 at 16#0# range 8 .. 15;
      DATA2 at 16#0# range 16 .. 23;
      DATA3 at 16#0# range 24 .. 31;
   end record;

   ----------------------
   -- IF1DATB_Register --
   ----------------------

   subtype IF1DATB_DATA4_Field is TMS570LC43xx.Byte;
   subtype IF1DATB_DATA5_Field is TMS570LC43xx.Byte;
   subtype IF1DATB_DATA6_Field is TMS570LC43xx.Byte;
   subtype IF1DATB_DATA7_Field is TMS570LC43xx.Byte;

   --  IF1 Data B Register
   type IF1DATB_Register is record
      --  Message Data Byte 0
      DATA4 : IF1DATB_DATA4_Field := 16#0#;
      --  Message Data Byte 1
      DATA5 : IF1DATB_DATA5_Field := 16#0#;
      --  Message Data Byte 2
      DATA6 : IF1DATB_DATA6_Field := 16#0#;
      --  Message Data Byte 3
      DATA7 : IF1DATB_DATA7_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1DATB_Register use record
      DATA4 at 16#0# range 0 .. 7;
      DATA5 at 16#0# range 8 .. 15;
      DATA6 at 16#0# range 16 .. 23;
      DATA7 at 16#0# range 24 .. 31;
   end record;

   ---------------------
   -- IF2CMD_Register --
   ---------------------

   subtype IF2CMD_MESSAGE_NUMBER_Field is TMS570LC43xx.Byte;
   subtype IF2CMD_Rsv2_Field is TMS570LC43xx.UInt6;
   subtype IF2CMD_DMA_ACTIVE_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_BUSY_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_DATA_B_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_DATA_A_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_TXRQST_NEWDAT_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_CLRINTPND_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_CONTROL_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_ARB_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_MASK_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_WR_RD_Field is TMS570LC43xx.Bit;
   subtype IF2CMD_Rsv1_Field is TMS570LC43xx.Byte;

   --  IF2 Command Register
   type IF2CMD_Register is record
      --  Message Object Number for Transfer 0x1-0x80 Valid
      MESSAGE_NUMBER : IF2CMD_MESSAGE_NUMBER_Field := 16#0#;
      --  Reserved
      Rsv2           : IF2CMD_Rsv2_Field := 16#0#;
      --  1 = DMA Request after Transfer
      DMA_ACTIVE     : IF2CMD_DMA_ACTIVE_Field := 16#0#;
      --  1 = Transfer In Progress
      BUSY           : IF2CMD_BUSY_Field := 16#0#;
      --  Data Bytes 4-7: 0=Unchanged, 1=Transferred
      DATA_B         : IF2CMD_DATA_B_Field := 16#0#;
      --  Data Bytes 0-3: 0=Unchanged, 1=Transferred
      DATA_A         : IF2CMD_DATA_A_Field := 16#0#;
      --  Reads: Newdat Unchanged on 0, Clear on 1. Writes: TxRqst/NewDat:
      --  0=Control Determines Set, 1=Set
      TXRQST_NEWDAT  : IF2CMD_TXRQST_NEWDAT_Field := 16#0#;
      --  0=Interrupt Pending Unchanged, 1= Clear on Reads
      CLRINTPND      : IF2CMD_CLRINTPND_Field := 16#0#;
      --  0=Control Bits Unchanged, 1=Control Bits Transferred
      CONTROL        : IF2CMD_CONTROL_Field := 16#0#;
      --  0=Arb Bits Unchanged, 1=Arb Bits Transferred
      ARB            : IF2CMD_ARB_Field := 16#0#;
      --  0=Mask Bits Unchanged, 1=Mask Bits Transferred
      MASK           : IF2CMD_MASK_Field := 16#0#;
      --  0=Read: Message Object->IF, 1=Write: IF->Message Object
      WR_RD          : IF2CMD_WR_RD_Field := 16#0#;
      --  Reserved
      Rsv1           : IF2CMD_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF2CMD_Register use record
      MESSAGE_NUMBER at 16#0# range 0 .. 7;
      Rsv2           at 16#0# range 8 .. 13;
      DMA_ACTIVE     at 16#0# range 14 .. 14;
      BUSY           at 16#0# range 15 .. 15;
      DATA_B         at 16#0# range 16 .. 16;
      DATA_A         at 16#0# range 17 .. 17;
      TXRQST_NEWDAT  at 16#0# range 18 .. 18;
      CLRINTPND      at 16#0# range 19 .. 19;
      CONTROL        at 16#0# range 20 .. 20;
      ARB            at 16#0# range 21 .. 21;
      MASK           at 16#0# range 22 .. 22;
      WR_RD          at 16#0# range 23 .. 23;
      Rsv1           at 16#0# range 24 .. 31;
   end record;

   ---------------------
   -- IF2MSK_Register --
   ---------------------

   subtype IF2MSK_MSK_Field is TMS570LC43xx.UInt29;
   subtype IF2MSK_Rsv1_Field is TMS570LC43xx.Bit;
   subtype IF2MSK_MDIR_Field is TMS570LC43xx.Bit;
   subtype IF2MSK_MXTD_Field is TMS570LC43xx.Bit;

   --  IF2 Mask Register
   type IF2MSK_Register is record
      --  Identifier Mask 0=Not Used, 1=Used for Acceptance Filtering
      MSK  : IF2MSK_MSK_Field := 16#0#;
      --  Reserved
      Rsv1 : IF2MSK_Rsv1_Field := 16#0#;
      --  Message Direction Bit (DIR) Used For Filtering 0=No, 1=Yes
      MDIR : IF2MSK_MDIR_Field := 16#0#;
      --  Extended Identifer (IDE) Used For Filtering 0=No, 1=Yes
      MXTD : IF2MSK_MXTD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF2MSK_Register use record
      MSK  at 16#0# range 0 .. 28;
      Rsv1 at 16#0# range 29 .. 29;
      MDIR at 16#0# range 30 .. 30;
      MXTD at 16#0# range 31 .. 31;
   end record;

   ---------------------
   -- IF2ARB_Register --
   ---------------------

   subtype IF2ARB_ID_Field is TMS570LC43xx.UInt29;
   subtype IF2ARB_DIR_Field is TMS570LC43xx.Bit;
   subtype IF2ARB_XTD_Field is TMS570LC43xx.Bit;
   subtype IF2ARB_MSGGVAL_Field is TMS570LC43xx.Bit;

   --  IF2 Arbitation Register
   type IF2ARB_Register is record
      --  Message Identifier
      ID      : IF2ARB_ID_Field := 16#0#;
      --  Message Direction 0=Receive, 1=Transmit
      DIR     : IF2ARB_DIR_Field := 16#0#;
      --  Extended Identifier 0=11 bit, 1=29 Bit
      XTD     : IF2ARB_XTD_Field := 16#0#;
      --  Message Valid 0=No, 1=Yes
      MSGGVAL : IF2ARB_MSGGVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF2ARB_Register use record
      ID      at 16#0# range 0 .. 28;
      DIR     at 16#0# range 29 .. 29;
      XTD     at 16#0# range 30 .. 30;
      MSGGVAL at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- IF2MCTL_Register --
   ----------------------

   subtype IF2MCTL_DLC_Field is TMS570LC43xx.UInt4;
   subtype IF2MCTL_Rsv2_Field is TMS570LC43xx.UInt3;
   subtype IF2MCTL_EOB_Field is TMS570LC43xx.Bit;
   subtype IF2MCTL_TXRQST_Field is TMS570LC43xx.Bit;
   subtype IF2MCTL_RMTEN_Field is TMS570LC43xx.Bit;
   subtype IF2MCTL_RXIE_Field is TMS570LC43xx.Bit;
   subtype IF2MCTL_TXIE_Field is TMS570LC43xx.Bit;
   subtype IF2MCTL_UMASK_Field is TMS570LC43xx.Bit;
   subtype IF2MCTL_INTPND_Field is TMS570LC43xx.Bit;
   subtype IF2MCTL_MSGLST_Field is TMS570LC43xx.Bit;
   subtype IF2MCTL_NEWDAT_Field is TMS570LC43xx.Bit;
   subtype IF2MCTL_Rsv1_Field is TMS570LC43xx.Short;

   --  IF2 Message Control Register
   type IF2MCTL_Register is record
      --  Data Length Code 0-8 Data Frame has 0-8 bits, 9-F Data Frame has 8
      --  Bytes
      DLC    : IF2MCTL_DLC_Field := 16#0#;
      --  Reserved
      Rsv2   : IF2MCTL_Rsv2_Field := 16#0#;
      --  1 = Concatenates multiple messages to build a FIFO buffer
      EOB    : IF2MCTL_EOB_Field := 16#0#;
      --  1 = Tranmission of Message Object Requested And Not Yet Done
      TXRQST : IF2MCTL_TXRQST_Field := 16#0#;
      --  1 = At the reception of a remote frame TXRQST is set
      RMTEN  : IF2MCTL_RMTEN_Field := 16#0#;
      --  1 = IntPnd will be triggered after successful reception of frame
      RXIE   : IF2MCTL_RXIE_Field := 16#0#;
      --  1 = IntPnd will be triggered after successful transmission of frame
      TXIE   : IF2MCTL_TXIE_Field := 16#0#;
      --  1 = Use Mask MSK[28:0],MXTD,MDIR for Filtering, 0=Mask Ignored
      UMASK  : IF2MCTL_UMASK_Field := 16#0#;
      --  1 = Interrupt Pending
      INTPND : IF2MCTL_INTPND_Field := 16#0#;
      --  1 = Previous Message Overwritten
      MSGLST : IF2MCTL_MSGLST_Field := 16#0#;
      --  1 = New Data Written to Data Portion of Message
      NEWDAT : IF2MCTL_NEWDAT_Field := 16#0#;
      --  Reserved
      Rsv1   : IF2MCTL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF2MCTL_Register use record
      DLC    at 16#0# range 0 .. 3;
      Rsv2   at 16#0# range 4 .. 6;
      EOB    at 16#0# range 7 .. 7;
      TXRQST at 16#0# range 8 .. 8;
      RMTEN  at 16#0# range 9 .. 9;
      RXIE   at 16#0# range 10 .. 10;
      TXIE   at 16#0# range 11 .. 11;
      UMASK  at 16#0# range 12 .. 12;
      INTPND at 16#0# range 13 .. 13;
      MSGLST at 16#0# range 14 .. 14;
      NEWDAT at 16#0# range 15 .. 15;
      Rsv1   at 16#0# range 16 .. 31;
   end record;

   ----------------------
   -- IF2DATA_Register --
   ----------------------

   subtype IF2DATA_DATA0_Field is TMS570LC43xx.Byte;
   subtype IF2DATA_DATA1_Field is TMS570LC43xx.Byte;
   subtype IF2DATA_DATA2_Field is TMS570LC43xx.Byte;
   subtype IF2DATA_DATA3_Field is TMS570LC43xx.Byte;

   --  IF2 Data A Register
   type IF2DATA_Register is record
      --  Message Data Byte 0
      DATA0 : IF2DATA_DATA0_Field := 16#0#;
      --  Message Data Byte 1
      DATA1 : IF2DATA_DATA1_Field := 16#0#;
      --  Message Data Byte 2
      DATA2 : IF2DATA_DATA2_Field := 16#0#;
      --  Message Data Byte 3
      DATA3 : IF2DATA_DATA3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF2DATA_Register use record
      DATA0 at 16#0# range 0 .. 7;
      DATA1 at 16#0# range 8 .. 15;
      DATA2 at 16#0# range 16 .. 23;
      DATA3 at 16#0# range 24 .. 31;
   end record;

   ----------------------
   -- IF2DATB_Register --
   ----------------------

   subtype IF2DATB_DATA4_Field is TMS570LC43xx.Byte;
   subtype IF2DATB_DATA5_Field is TMS570LC43xx.Byte;
   subtype IF2DATB_DATA6_Field is TMS570LC43xx.Byte;
   subtype IF2DATB_DATA7_Field is TMS570LC43xx.Byte;

   --  IF2 Data B Register
   type IF2DATB_Register is record
      --  Message Data Byte 4
      DATA4 : IF2DATB_DATA4_Field := 16#0#;
      --  Message Data Byte 5
      DATA5 : IF2DATB_DATA5_Field := 16#0#;
      --  Message Data Byte 6
      DATA6 : IF2DATB_DATA6_Field := 16#0#;
      --  Message Data Byte 7
      DATA7 : IF2DATB_DATA7_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF2DATB_Register use record
      DATA4 at 16#0# range 0 .. 7;
      DATA5 at 16#0# range 8 .. 15;
      DATA6 at 16#0# range 16 .. 23;
      DATA7 at 16#0# range 24 .. 31;
   end record;

   ---------------------
   -- IF3OBS_Register --
   ---------------------

   subtype IF3OBS_MASK_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_ARB_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_CTRL_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_DATA_B_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_DATA_A_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_Rsv3_Field is TMS570LC43xx.UInt3;
   subtype IF3OBS_IF3SM_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_IF3SA_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_IF3SC_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_IF3SDA_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_IF3SDB_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_Rsv2_Field is TMS570LC43xx.UInt2;
   subtype IF3OBS_IF3UPD_Field is TMS570LC43xx.Bit;
   subtype IF3OBS_Rsv1_Field is TMS570LC43xx.Short;

   --  IF3 Observation Register
   type IF3OBS_Register is record
      --  1 = Mask Must Be Read to Enable Next IF3 Update
      MASK   : IF3OBS_MASK_Field := 16#0#;
      --  1 = Arb Must Be Read to Enable Next IF3 Update
      ARB    : IF3OBS_ARB_Field := 16#0#;
      --  1 = Control Must Be Read to Enable Next IF3 Update
      CTRL   : IF3OBS_CTRL_Field := 16#0#;
      --  1 = Data B Must Be Read to Enable Next IF3 Update
      DATA_B : IF3OBS_DATA_B_Field := 16#0#;
      --  1 = Data A Must Be Read to Enable Next IF3 Update
      DATA_A : IF3OBS_DATA_A_Field := 16#0#;
      --  Reserved
      Rsv3   : IF3OBS_Rsv3_Field := 16#0#;
      --  1 = Mask Section Still Has Data To Read
      IF3SM  : IF3OBS_IF3SM_Field := 16#0#;
      --  1 = Arb Still Has Data To Read
      IF3SA  : IF3OBS_IF3SA_Field := 16#0#;
      --  1 = Control Still Has Data To Read
      IF3SC  : IF3OBS_IF3SC_Field := 16#0#;
      --  1 = Data A Still has Data to Read
      IF3SDA : IF3OBS_IF3SDA_Field := 16#0#;
      --  1 = Data B Still has Data to Read
      IF3SDB : IF3OBS_IF3SDB_Field := 16#0#;
      --  Reserved
      Rsv2   : IF3OBS_Rsv2_Field := 16#0#;
      --  1 = New Data Loaded Since IF3 Last Read
      IF3UPD : IF3OBS_IF3UPD_Field := 16#0#;
      --  Reserved
      Rsv1   : IF3OBS_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3OBS_Register use record
      MASK   at 16#0# range 0 .. 0;
      ARB    at 16#0# range 1 .. 1;
      CTRL   at 16#0# range 2 .. 2;
      DATA_B at 16#0# range 3 .. 3;
      DATA_A at 16#0# range 4 .. 4;
      Rsv3   at 16#0# range 5 .. 7;
      IF3SM  at 16#0# range 8 .. 8;
      IF3SA  at 16#0# range 9 .. 9;
      IF3SC  at 16#0# range 10 .. 10;
      IF3SDA at 16#0# range 11 .. 11;
      IF3SDB at 16#0# range 12 .. 12;
      Rsv2   at 16#0# range 13 .. 14;
      IF3UPD at 16#0# range 15 .. 15;
      Rsv1   at 16#0# range 16 .. 31;
   end record;

   ---------------------
   -- IF3MSK_Register --
   ---------------------

   subtype IF3MSK_MSK_Field is TMS570LC43xx.UInt29;
   subtype IF3MSK_Rsv1_Field is TMS570LC43xx.Bit;
   subtype IF3MSK_MDIR_Field is TMS570LC43xx.Bit;
   subtype IF3MSK_MXTD_Field is TMS570LC43xx.Bit;

   --  IF3 Mask Register
   type IF3MSK_Register is record
      --  Identifier Mask 0=Not Used, 1=Used for Acceptance Filtering
      MSK  : IF3MSK_MSK_Field := 16#0#;
      --  Reserved
      Rsv1 : IF3MSK_Rsv1_Field := 16#0#;
      --  Message Direction Bit (DIR) Used For Filtering 0=No, 1=Yes
      MDIR : IF3MSK_MDIR_Field := 16#0#;
      --  Extended Identifer (IDE) Used For Filtering 0=No, 1=Yes
      MXTD : IF3MSK_MXTD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3MSK_Register use record
      MSK  at 16#0# range 0 .. 28;
      Rsv1 at 16#0# range 29 .. 29;
      MDIR at 16#0# range 30 .. 30;
      MXTD at 16#0# range 31 .. 31;
   end record;

   ---------------------
   -- IF3ARB_Register --
   ---------------------

   subtype IF3ARB_ID_Field is TMS570LC43xx.UInt29;
   subtype IF3ARB_DIR_Field is TMS570LC43xx.Bit;
   subtype IF3ARB_XTD_Field is TMS570LC43xx.Bit;
   subtype IF3ARB_MSGGVAL_Field is TMS570LC43xx.Bit;

   --  IF3 Arbitation Register
   type IF3ARB_Register is record
      --  Message Identifier
      ID      : IF3ARB_ID_Field := 16#0#;
      --  Message Direction 0=Receive, 1=Transmit
      DIR     : IF3ARB_DIR_Field := 16#0#;
      --  Extended Identifier 0=11 bit, 1=29 Bit
      XTD     : IF3ARB_XTD_Field := 16#0#;
      --  Message Valid 0=No, 1=Yes
      MSGGVAL : IF3ARB_MSGGVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3ARB_Register use record
      ID      at 16#0# range 0 .. 28;
      DIR     at 16#0# range 29 .. 29;
      XTD     at 16#0# range 30 .. 30;
      MSGGVAL at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- IF3MCTL_Register --
   ----------------------

   subtype IF3MCTL_DLC_Field is TMS570LC43xx.UInt4;
   subtype IF3MCTL_Rsv2_Field is TMS570LC43xx.UInt3;
   subtype IF3MCTL_EOB_Field is TMS570LC43xx.Bit;
   subtype IF3MCTL_TXRQST_Field is TMS570LC43xx.Bit;
   subtype IF3MCTL_RMTEN_Field is TMS570LC43xx.Bit;
   subtype IF3MCTL_RXIE_Field is TMS570LC43xx.Bit;
   subtype IF3MCTL_TXIE_Field is TMS570LC43xx.Bit;
   subtype IF3MCTL_UMASK_Field is TMS570LC43xx.Bit;
   subtype IF3MCTL_INTPND_Field is TMS570LC43xx.Bit;
   subtype IF3MCTL_MSGLST_Field is TMS570LC43xx.Bit;
   subtype IF3MCTL_NEWDAT_Field is TMS570LC43xx.Bit;
   subtype IF3MCTL_Rsv1_Field is TMS570LC43xx.Short;

   --  IF3 Message Control Register
   type IF3MCTL_Register is record
      --  Data Length Code 0-8 Data Frame has 0-8 bits, 9-F Data Frame has 8
      --  Bytes
      DLC    : IF3MCTL_DLC_Field := 16#0#;
      --  Reserved
      Rsv2   : IF3MCTL_Rsv2_Field := 16#0#;
      --  1 = Concatenates multiple messages to build a FIFO buffer
      EOB    : IF3MCTL_EOB_Field := 16#0#;
      --  1 = Tranmission of Message Object Requested And Not Yet Done
      TXRQST : IF3MCTL_TXRQST_Field := 16#0#;
      --  1 = At the reception of a remote frame TXRQST is set
      RMTEN  : IF3MCTL_RMTEN_Field := 16#0#;
      --  1 = IntPnd will be triggered after successful reception of frame
      RXIE   : IF3MCTL_RXIE_Field := 16#0#;
      --  1 = IntPnd will be triggered after successful transmission of frame
      TXIE   : IF3MCTL_TXIE_Field := 16#0#;
      --  1 = Use Mask MSK[28:0],MXTD,MDIR for Filtering, 0=Mask Ignored
      UMASK  : IF3MCTL_UMASK_Field := 16#0#;
      --  1 = Interrupt Pending
      INTPND : IF3MCTL_INTPND_Field := 16#0#;
      --  1 = Previous Message Overwritten
      MSGLST : IF3MCTL_MSGLST_Field := 16#0#;
      --  1 = New Data Written to Data Portion of Message
      NEWDAT : IF3MCTL_NEWDAT_Field := 16#0#;
      --  Reserved
      Rsv1   : IF3MCTL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3MCTL_Register use record
      DLC    at 16#0# range 0 .. 3;
      Rsv2   at 16#0# range 4 .. 6;
      EOB    at 16#0# range 7 .. 7;
      TXRQST at 16#0# range 8 .. 8;
      RMTEN  at 16#0# range 9 .. 9;
      RXIE   at 16#0# range 10 .. 10;
      TXIE   at 16#0# range 11 .. 11;
      UMASK  at 16#0# range 12 .. 12;
      INTPND at 16#0# range 13 .. 13;
      MSGLST at 16#0# range 14 .. 14;
      NEWDAT at 16#0# range 15 .. 15;
      Rsv1   at 16#0# range 16 .. 31;
   end record;

   ----------------------
   -- IF3DATA_Register --
   ----------------------

   subtype IF3DATA_DATA0_Field is TMS570LC43xx.Byte;
   subtype IF3DATA_DATA1_Field is TMS570LC43xx.Byte;
   subtype IF3DATA_DATA2_Field is TMS570LC43xx.Byte;
   subtype IF3DATA_DATA3_Field is TMS570LC43xx.Byte;

   --  IF3 Data A Register
   type IF3DATA_Register is record
      --  Message Data Byte 0
      DATA0 : IF3DATA_DATA0_Field := 16#0#;
      --  Message Data Byte 1
      DATA1 : IF3DATA_DATA1_Field := 16#0#;
      --  Message Data Byte 2
      DATA2 : IF3DATA_DATA2_Field := 16#0#;
      --  Message Data Byte 3
      DATA3 : IF3DATA_DATA3_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3DATA_Register use record
      DATA0 at 16#0# range 0 .. 7;
      DATA1 at 16#0# range 8 .. 15;
      DATA2 at 16#0# range 16 .. 23;
      DATA3 at 16#0# range 24 .. 31;
   end record;

   ----------------------
   -- IF3DATB_Register --
   ----------------------

   subtype IF3DATB_DATA4_Field is TMS570LC43xx.Byte;
   subtype IF3DATB_DATA5_Field is TMS570LC43xx.Byte;
   subtype IF3DATB_DATA6_Field is TMS570LC43xx.Byte;
   subtype IF3DATB_DATA7_Field is TMS570LC43xx.Byte;

   --  IF3 Data B Register
   type IF3DATB_Register is record
      --  Message Data Byte 4
      DATA4 : IF3DATB_DATA4_Field := 16#0#;
      --  Message Data Byte 5
      DATA5 : IF3DATB_DATA5_Field := 16#0#;
      --  Message Data Byte 6
      DATA6 : IF3DATB_DATA6_Field := 16#0#;
      --  Message Data Byte 7
      DATA7 : IF3DATB_DATA7_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3DATB_Register use record
      DATA4 at 16#0# range 0 .. 7;
      DATA5 at 16#0# range 8 .. 15;
      DATA6 at 16#0# range 16 .. 23;
      DATA7 at 16#0# range 24 .. 31;
   end record;

   -----------------------
   -- IF3UPD12_Register --
   -----------------------

   subtype IF3UPD12_IF3UPDEN1_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN2_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN3_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN4_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN5_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN6_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN7_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN8_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN9_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN10_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN11_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN12_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN13_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN14_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN15_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN16_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN17_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN18_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN19_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN20_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN21_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN22_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN23_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN24_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN25_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN26_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN27_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN28_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN29_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN30_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN31_Field is TMS570LC43xx.Bit;
   subtype IF3UPD12_IF3UPDEN32_Field is TMS570LC43xx.Bit;

   --  IF3 Update Enable 12 Register
   type IF3UPD12_Register is record
      --  Automatic IF3 Update Enabled for Message Object 1
      IF3UPDEN1  : IF3UPD12_IF3UPDEN1_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 2
      IF3UPDEN2  : IF3UPD12_IF3UPDEN2_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 3
      IF3UPDEN3  : IF3UPD12_IF3UPDEN3_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 4
      IF3UPDEN4  : IF3UPD12_IF3UPDEN4_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 5
      IF3UPDEN5  : IF3UPD12_IF3UPDEN5_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 6
      IF3UPDEN6  : IF3UPD12_IF3UPDEN6_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 7
      IF3UPDEN7  : IF3UPD12_IF3UPDEN7_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 8
      IF3UPDEN8  : IF3UPD12_IF3UPDEN8_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 9
      IF3UPDEN9  : IF3UPD12_IF3UPDEN9_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 10
      IF3UPDEN10 : IF3UPD12_IF3UPDEN10_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 11
      IF3UPDEN11 : IF3UPD12_IF3UPDEN11_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 12
      IF3UPDEN12 : IF3UPD12_IF3UPDEN12_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 13
      IF3UPDEN13 : IF3UPD12_IF3UPDEN13_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 14
      IF3UPDEN14 : IF3UPD12_IF3UPDEN14_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 15
      IF3UPDEN15 : IF3UPD12_IF3UPDEN15_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 16
      IF3UPDEN16 : IF3UPD12_IF3UPDEN16_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 17
      IF3UPDEN17 : IF3UPD12_IF3UPDEN17_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 18
      IF3UPDEN18 : IF3UPD12_IF3UPDEN18_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 19
      IF3UPDEN19 : IF3UPD12_IF3UPDEN19_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 20
      IF3UPDEN20 : IF3UPD12_IF3UPDEN20_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 21
      IF3UPDEN21 : IF3UPD12_IF3UPDEN21_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 22
      IF3UPDEN22 : IF3UPD12_IF3UPDEN22_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 23
      IF3UPDEN23 : IF3UPD12_IF3UPDEN23_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 24
      IF3UPDEN24 : IF3UPD12_IF3UPDEN24_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 25
      IF3UPDEN25 : IF3UPD12_IF3UPDEN25_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 26
      IF3UPDEN26 : IF3UPD12_IF3UPDEN26_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 27
      IF3UPDEN27 : IF3UPD12_IF3UPDEN27_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 28
      IF3UPDEN28 : IF3UPD12_IF3UPDEN28_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 29
      IF3UPDEN29 : IF3UPD12_IF3UPDEN29_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 30
      IF3UPDEN30 : IF3UPD12_IF3UPDEN30_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 31
      IF3UPDEN31 : IF3UPD12_IF3UPDEN31_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 32
      IF3UPDEN32 : IF3UPD12_IF3UPDEN32_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3UPD12_Register use record
      IF3UPDEN1  at 16#0# range 0 .. 0;
      IF3UPDEN2  at 16#0# range 1 .. 1;
      IF3UPDEN3  at 16#0# range 2 .. 2;
      IF3UPDEN4  at 16#0# range 3 .. 3;
      IF3UPDEN5  at 16#0# range 4 .. 4;
      IF3UPDEN6  at 16#0# range 5 .. 5;
      IF3UPDEN7  at 16#0# range 6 .. 6;
      IF3UPDEN8  at 16#0# range 7 .. 7;
      IF3UPDEN9  at 16#0# range 8 .. 8;
      IF3UPDEN10 at 16#0# range 9 .. 9;
      IF3UPDEN11 at 16#0# range 10 .. 10;
      IF3UPDEN12 at 16#0# range 11 .. 11;
      IF3UPDEN13 at 16#0# range 12 .. 12;
      IF3UPDEN14 at 16#0# range 13 .. 13;
      IF3UPDEN15 at 16#0# range 14 .. 14;
      IF3UPDEN16 at 16#0# range 15 .. 15;
      IF3UPDEN17 at 16#0# range 16 .. 16;
      IF3UPDEN18 at 16#0# range 17 .. 17;
      IF3UPDEN19 at 16#0# range 18 .. 18;
      IF3UPDEN20 at 16#0# range 19 .. 19;
      IF3UPDEN21 at 16#0# range 20 .. 20;
      IF3UPDEN22 at 16#0# range 21 .. 21;
      IF3UPDEN23 at 16#0# range 22 .. 22;
      IF3UPDEN24 at 16#0# range 23 .. 23;
      IF3UPDEN25 at 16#0# range 24 .. 24;
      IF3UPDEN26 at 16#0# range 25 .. 25;
      IF3UPDEN27 at 16#0# range 26 .. 26;
      IF3UPDEN28 at 16#0# range 27 .. 27;
      IF3UPDEN29 at 16#0# range 28 .. 28;
      IF3UPDEN30 at 16#0# range 29 .. 29;
      IF3UPDEN31 at 16#0# range 30 .. 30;
      IF3UPDEN32 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- IF3UPD34_Register --
   -----------------------

   subtype IF3UPD34_IF3UPDEN33_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN34_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN35_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN36_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN37_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN38_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN39_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN40_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN41_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN42_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN43_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN44_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN45_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN46_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN47_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN48_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN49_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN50_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN51_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN52_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN53_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN54_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN55_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN56_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN57_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN58_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN59_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN60_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN61_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN62_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN63_Field is TMS570LC43xx.Bit;
   subtype IF3UPD34_IF3UPDEN64_Field is TMS570LC43xx.Bit;

   --  IF3 Update Enable 34 Register
   type IF3UPD34_Register is record
      --  Automatic IF3 Update Enabled for Message Object 33
      IF3UPDEN33 : IF3UPD34_IF3UPDEN33_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 34
      IF3UPDEN34 : IF3UPD34_IF3UPDEN34_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 35
      IF3UPDEN35 : IF3UPD34_IF3UPDEN35_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 36
      IF3UPDEN36 : IF3UPD34_IF3UPDEN36_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 37
      IF3UPDEN37 : IF3UPD34_IF3UPDEN37_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 38
      IF3UPDEN38 : IF3UPD34_IF3UPDEN38_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 39
      IF3UPDEN39 : IF3UPD34_IF3UPDEN39_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 40
      IF3UPDEN40 : IF3UPD34_IF3UPDEN40_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 41
      IF3UPDEN41 : IF3UPD34_IF3UPDEN41_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 42
      IF3UPDEN42 : IF3UPD34_IF3UPDEN42_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 43
      IF3UPDEN43 : IF3UPD34_IF3UPDEN43_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 44
      IF3UPDEN44 : IF3UPD34_IF3UPDEN44_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 45
      IF3UPDEN45 : IF3UPD34_IF3UPDEN45_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 46
      IF3UPDEN46 : IF3UPD34_IF3UPDEN46_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 47
      IF3UPDEN47 : IF3UPD34_IF3UPDEN47_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 48
      IF3UPDEN48 : IF3UPD34_IF3UPDEN48_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 49
      IF3UPDEN49 : IF3UPD34_IF3UPDEN49_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 50
      IF3UPDEN50 : IF3UPD34_IF3UPDEN50_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 51
      IF3UPDEN51 : IF3UPD34_IF3UPDEN51_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 52
      IF3UPDEN52 : IF3UPD34_IF3UPDEN52_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 53
      IF3UPDEN53 : IF3UPD34_IF3UPDEN53_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 54
      IF3UPDEN54 : IF3UPD34_IF3UPDEN54_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 55
      IF3UPDEN55 : IF3UPD34_IF3UPDEN55_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 56
      IF3UPDEN56 : IF3UPD34_IF3UPDEN56_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 57
      IF3UPDEN57 : IF3UPD34_IF3UPDEN57_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 58
      IF3UPDEN58 : IF3UPD34_IF3UPDEN58_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 59
      IF3UPDEN59 : IF3UPD34_IF3UPDEN59_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 60
      IF3UPDEN60 : IF3UPD34_IF3UPDEN60_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 61
      IF3UPDEN61 : IF3UPD34_IF3UPDEN61_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 62
      IF3UPDEN62 : IF3UPD34_IF3UPDEN62_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 63
      IF3UPDEN63 : IF3UPD34_IF3UPDEN63_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 64
      IF3UPDEN64 : IF3UPD34_IF3UPDEN64_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3UPD34_Register use record
      IF3UPDEN33 at 16#0# range 0 .. 0;
      IF3UPDEN34 at 16#0# range 1 .. 1;
      IF3UPDEN35 at 16#0# range 2 .. 2;
      IF3UPDEN36 at 16#0# range 3 .. 3;
      IF3UPDEN37 at 16#0# range 4 .. 4;
      IF3UPDEN38 at 16#0# range 5 .. 5;
      IF3UPDEN39 at 16#0# range 6 .. 6;
      IF3UPDEN40 at 16#0# range 7 .. 7;
      IF3UPDEN41 at 16#0# range 8 .. 8;
      IF3UPDEN42 at 16#0# range 9 .. 9;
      IF3UPDEN43 at 16#0# range 10 .. 10;
      IF3UPDEN44 at 16#0# range 11 .. 11;
      IF3UPDEN45 at 16#0# range 12 .. 12;
      IF3UPDEN46 at 16#0# range 13 .. 13;
      IF3UPDEN47 at 16#0# range 14 .. 14;
      IF3UPDEN48 at 16#0# range 15 .. 15;
      IF3UPDEN49 at 16#0# range 16 .. 16;
      IF3UPDEN50 at 16#0# range 17 .. 17;
      IF3UPDEN51 at 16#0# range 18 .. 18;
      IF3UPDEN52 at 16#0# range 19 .. 19;
      IF3UPDEN53 at 16#0# range 20 .. 20;
      IF3UPDEN54 at 16#0# range 21 .. 21;
      IF3UPDEN55 at 16#0# range 22 .. 22;
      IF3UPDEN56 at 16#0# range 23 .. 23;
      IF3UPDEN57 at 16#0# range 24 .. 24;
      IF3UPDEN58 at 16#0# range 25 .. 25;
      IF3UPDEN59 at 16#0# range 26 .. 26;
      IF3UPDEN60 at 16#0# range 27 .. 27;
      IF3UPDEN61 at 16#0# range 28 .. 28;
      IF3UPDEN62 at 16#0# range 29 .. 29;
      IF3UPDEN63 at 16#0# range 30 .. 30;
      IF3UPDEN64 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- IF3UPD56_Register --
   -----------------------

   subtype IF3UPD56_IF3UPDEN65_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN66_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN67_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN68_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN69_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN70_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN71_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN72_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN73_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN74_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN75_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN76_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN77_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN78_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN79_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN80_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN81_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN82_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN83_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN84_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN85_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN86_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN87_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN88_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN89_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN90_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN91_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN92_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN93_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN94_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN95_Field is TMS570LC43xx.Bit;
   subtype IF3UPD56_IF3UPDEN96_Field is TMS570LC43xx.Bit;

   --  IF3 Update Enable 56 Register
   type IF3UPD56_Register is record
      --  Automatic IF3 Update Enabled for Message Object 65
      IF3UPDEN65 : IF3UPD56_IF3UPDEN65_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 66
      IF3UPDEN66 : IF3UPD56_IF3UPDEN66_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 67
      IF3UPDEN67 : IF3UPD56_IF3UPDEN67_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 68
      IF3UPDEN68 : IF3UPD56_IF3UPDEN68_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 69
      IF3UPDEN69 : IF3UPD56_IF3UPDEN69_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 70
      IF3UPDEN70 : IF3UPD56_IF3UPDEN70_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 71
      IF3UPDEN71 : IF3UPD56_IF3UPDEN71_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 72
      IF3UPDEN72 : IF3UPD56_IF3UPDEN72_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 73
      IF3UPDEN73 : IF3UPD56_IF3UPDEN73_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 74
      IF3UPDEN74 : IF3UPD56_IF3UPDEN74_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 75
      IF3UPDEN75 : IF3UPD56_IF3UPDEN75_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 76
      IF3UPDEN76 : IF3UPD56_IF3UPDEN76_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 77
      IF3UPDEN77 : IF3UPD56_IF3UPDEN77_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 78
      IF3UPDEN78 : IF3UPD56_IF3UPDEN78_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 79
      IF3UPDEN79 : IF3UPD56_IF3UPDEN79_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 80
      IF3UPDEN80 : IF3UPD56_IF3UPDEN80_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 81
      IF3UPDEN81 : IF3UPD56_IF3UPDEN81_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 82
      IF3UPDEN82 : IF3UPD56_IF3UPDEN82_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 83
      IF3UPDEN83 : IF3UPD56_IF3UPDEN83_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 84
      IF3UPDEN84 : IF3UPD56_IF3UPDEN84_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 85
      IF3UPDEN85 : IF3UPD56_IF3UPDEN85_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 86
      IF3UPDEN86 : IF3UPD56_IF3UPDEN86_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 87
      IF3UPDEN87 : IF3UPD56_IF3UPDEN87_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 88
      IF3UPDEN88 : IF3UPD56_IF3UPDEN88_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 89
      IF3UPDEN89 : IF3UPD56_IF3UPDEN89_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 90
      IF3UPDEN90 : IF3UPD56_IF3UPDEN90_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 91
      IF3UPDEN91 : IF3UPD56_IF3UPDEN91_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 92
      IF3UPDEN92 : IF3UPD56_IF3UPDEN92_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 93
      IF3UPDEN93 : IF3UPD56_IF3UPDEN93_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 94
      IF3UPDEN94 : IF3UPD56_IF3UPDEN94_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 95
      IF3UPDEN95 : IF3UPD56_IF3UPDEN95_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 96
      IF3UPDEN96 : IF3UPD56_IF3UPDEN96_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3UPD56_Register use record
      IF3UPDEN65 at 16#0# range 0 .. 0;
      IF3UPDEN66 at 16#0# range 1 .. 1;
      IF3UPDEN67 at 16#0# range 2 .. 2;
      IF3UPDEN68 at 16#0# range 3 .. 3;
      IF3UPDEN69 at 16#0# range 4 .. 4;
      IF3UPDEN70 at 16#0# range 5 .. 5;
      IF3UPDEN71 at 16#0# range 6 .. 6;
      IF3UPDEN72 at 16#0# range 7 .. 7;
      IF3UPDEN73 at 16#0# range 8 .. 8;
      IF3UPDEN74 at 16#0# range 9 .. 9;
      IF3UPDEN75 at 16#0# range 10 .. 10;
      IF3UPDEN76 at 16#0# range 11 .. 11;
      IF3UPDEN77 at 16#0# range 12 .. 12;
      IF3UPDEN78 at 16#0# range 13 .. 13;
      IF3UPDEN79 at 16#0# range 14 .. 14;
      IF3UPDEN80 at 16#0# range 15 .. 15;
      IF3UPDEN81 at 16#0# range 16 .. 16;
      IF3UPDEN82 at 16#0# range 17 .. 17;
      IF3UPDEN83 at 16#0# range 18 .. 18;
      IF3UPDEN84 at 16#0# range 19 .. 19;
      IF3UPDEN85 at 16#0# range 20 .. 20;
      IF3UPDEN86 at 16#0# range 21 .. 21;
      IF3UPDEN87 at 16#0# range 22 .. 22;
      IF3UPDEN88 at 16#0# range 23 .. 23;
      IF3UPDEN89 at 16#0# range 24 .. 24;
      IF3UPDEN90 at 16#0# range 25 .. 25;
      IF3UPDEN91 at 16#0# range 26 .. 26;
      IF3UPDEN92 at 16#0# range 27 .. 27;
      IF3UPDEN93 at 16#0# range 28 .. 28;
      IF3UPDEN94 at 16#0# range 29 .. 29;
      IF3UPDEN95 at 16#0# range 30 .. 30;
      IF3UPDEN96 at 16#0# range 31 .. 31;
   end record;

   -----------------------
   -- IF3UPD78_Register --
   -----------------------

   subtype IF3UPD78_IF3UPDEN97_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN98_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN99_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN100_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN101_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN102_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN103_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN104_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN105_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN106_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN107_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN108_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN109_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN110_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN111_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN112_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN113_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN114_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN115_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN116_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN117_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN118_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN119_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN120_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN121_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN122_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN123_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN124_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN125_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN126_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN127_Field is TMS570LC43xx.Bit;
   subtype IF3UPD78_IF3UPDEN128_Field is TMS570LC43xx.Bit;

   --  IF3 Update Enable 78 Register
   type IF3UPD78_Register is record
      --  Automatic IF3 Update Enabled for Message Object 97
      IF3UPDEN97  : IF3UPD78_IF3UPDEN97_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 98
      IF3UPDEN98  : IF3UPD78_IF3UPDEN98_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 99
      IF3UPDEN99  : IF3UPD78_IF3UPDEN99_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 100
      IF3UPDEN100 : IF3UPD78_IF3UPDEN100_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 101
      IF3UPDEN101 : IF3UPD78_IF3UPDEN101_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 102
      IF3UPDEN102 : IF3UPD78_IF3UPDEN102_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 103
      IF3UPDEN103 : IF3UPD78_IF3UPDEN103_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 104
      IF3UPDEN104 : IF3UPD78_IF3UPDEN104_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 105
      IF3UPDEN105 : IF3UPD78_IF3UPDEN105_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 106
      IF3UPDEN106 : IF3UPD78_IF3UPDEN106_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 107
      IF3UPDEN107 : IF3UPD78_IF3UPDEN107_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 108
      IF3UPDEN108 : IF3UPD78_IF3UPDEN108_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 109
      IF3UPDEN109 : IF3UPD78_IF3UPDEN109_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 110
      IF3UPDEN110 : IF3UPD78_IF3UPDEN110_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 111
      IF3UPDEN111 : IF3UPD78_IF3UPDEN111_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 112
      IF3UPDEN112 : IF3UPD78_IF3UPDEN112_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 112
      IF3UPDEN113 : IF3UPD78_IF3UPDEN113_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 114
      IF3UPDEN114 : IF3UPD78_IF3UPDEN114_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 115
      IF3UPDEN115 : IF3UPD78_IF3UPDEN115_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 116
      IF3UPDEN116 : IF3UPD78_IF3UPDEN116_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 117
      IF3UPDEN117 : IF3UPD78_IF3UPDEN117_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 118
      IF3UPDEN118 : IF3UPD78_IF3UPDEN118_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 119
      IF3UPDEN119 : IF3UPD78_IF3UPDEN119_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 120
      IF3UPDEN120 : IF3UPD78_IF3UPDEN120_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 121
      IF3UPDEN121 : IF3UPD78_IF3UPDEN121_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 122
      IF3UPDEN122 : IF3UPD78_IF3UPDEN122_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 123
      IF3UPDEN123 : IF3UPD78_IF3UPDEN123_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 124
      IF3UPDEN124 : IF3UPD78_IF3UPDEN124_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 125
      IF3UPDEN125 : IF3UPD78_IF3UPDEN125_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 126
      IF3UPDEN126 : IF3UPD78_IF3UPDEN126_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 127
      IF3UPDEN127 : IF3UPD78_IF3UPDEN127_Field := 16#0#;
      --  Automatic IF3 Update Enabled for Message Object 128
      IF3UPDEN128 : IF3UPD78_IF3UPDEN128_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF3UPD78_Register use record
      IF3UPDEN97  at 16#0# range 0 .. 0;
      IF3UPDEN98  at 16#0# range 1 .. 1;
      IF3UPDEN99  at 16#0# range 2 .. 2;
      IF3UPDEN100 at 16#0# range 3 .. 3;
      IF3UPDEN101 at 16#0# range 4 .. 4;
      IF3UPDEN102 at 16#0# range 5 .. 5;
      IF3UPDEN103 at 16#0# range 6 .. 6;
      IF3UPDEN104 at 16#0# range 7 .. 7;
      IF3UPDEN105 at 16#0# range 8 .. 8;
      IF3UPDEN106 at 16#0# range 9 .. 9;
      IF3UPDEN107 at 16#0# range 10 .. 10;
      IF3UPDEN108 at 16#0# range 11 .. 11;
      IF3UPDEN109 at 16#0# range 12 .. 12;
      IF3UPDEN110 at 16#0# range 13 .. 13;
      IF3UPDEN111 at 16#0# range 14 .. 14;
      IF3UPDEN112 at 16#0# range 15 .. 15;
      IF3UPDEN113 at 16#0# range 16 .. 16;
      IF3UPDEN114 at 16#0# range 17 .. 17;
      IF3UPDEN115 at 16#0# range 18 .. 18;
      IF3UPDEN116 at 16#0# range 19 .. 19;
      IF3UPDEN117 at 16#0# range 20 .. 20;
      IF3UPDEN118 at 16#0# range 21 .. 21;
      IF3UPDEN119 at 16#0# range 22 .. 22;
      IF3UPDEN120 at 16#0# range 23 .. 23;
      IF3UPDEN121 at 16#0# range 24 .. 24;
      IF3UPDEN122 at 16#0# range 25 .. 25;
      IF3UPDEN123 at 16#0# range 26 .. 26;
      IF3UPDEN124 at 16#0# range 27 .. 27;
      IF3UPDEN125 at 16#0# range 28 .. 28;
      IF3UPDEN126 at 16#0# range 29 .. 29;
      IF3UPDEN127 at 16#0# range 30 .. 30;
      IF3UPDEN128 at 16#0# range 31 .. 31;
   end record;

   -------------------
   -- TIOC_Register --
   -------------------

   subtype TIOC_DIN_Field is TMS570LC43xx.Bit;
   subtype TIOC_DOUT_Field is TMS570LC43xx.Bit;
   subtype TIOC_DIR_Field is TMS570LC43xx.Bit;
   subtype TIOC_FUNC_Field is TMS570LC43xx.Bit;
   subtype TIOC_Rsv2_Field is TMS570LC43xx.UInt12;
   subtype TIOC_OD_Field is TMS570LC43xx.Bit;
   subtype TIOC_PD_Field is TMS570LC43xx.Bit;
   subtype TIOC_PU_Field is TMS570LC43xx.Bit;
   subtype TIOC_Rsv1_Field is TMS570LC43xx.UInt13;

   --  TX IO Control Register
   type TIOC_Register is record
      --  CANTX GIO Data In
      DIN  : TIOC_DIN_Field := 16#0#;
      --  CANTX GIO Data Out
      DOUT : TIOC_DOUT_Field := 16#0#;
      --  CANTX GIO Direction 0=Input, 1=Output
      DIR  : TIOC_DIR_Field := 16#0#;
      --  CANTX Pin Function 0=GIO, 1=CAN
      FUNC : TIOC_FUNC_Field := 16#0#;
      --  Reserved
      Rsv2 : TIOC_Rsv2_Field := 16#0#;
      --  CANTX Open-Drain Enable 0 = Push/Pull, 1 = Open-Drain
      OD   : TIOC_OD_Field := 16#0#;
      --  CANTX Pull Enable 0 = Pull Up/Down Active, 1 = Pull Up/Down Disabled
      PD   : TIOC_PD_Field := 16#0#;
      --  CANTX Pullup/Down Select 0=PullDown, 1=PullUp
      PU   : TIOC_PU_Field := 16#0#;
      --  Reserved
      Rsv1 : TIOC_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIOC_Register use record
      DIN  at 16#0# range 0 .. 0;
      DOUT at 16#0# range 1 .. 1;
      DIR  at 16#0# range 2 .. 2;
      FUNC at 16#0# range 3 .. 3;
      Rsv2 at 16#0# range 4 .. 15;
      OD   at 16#0# range 16 .. 16;
      PD   at 16#0# range 17 .. 17;
      PU   at 16#0# range 18 .. 18;
      Rsv1 at 16#0# range 19 .. 31;
   end record;

   -------------------
   -- RIOC_Register --
   -------------------

   subtype RIOC_DIN_Field is TMS570LC43xx.Bit;
   subtype RIOC_DOUT_Field is TMS570LC43xx.Bit;
   subtype RIOC_DIR_Field is TMS570LC43xx.Bit;
   subtype RIOC_FUNC_Field is TMS570LC43xx.Bit;
   subtype RIOC_Rsv2_Field is TMS570LC43xx.UInt12;
   subtype RIOC_OD_Field is TMS570LC43xx.Bit;
   subtype RIOC_PD_Field is TMS570LC43xx.Bit;
   subtype RIOC_PU_Field is TMS570LC43xx.Bit;
   subtype RIOC_Rsv1_Field is TMS570LC43xx.UInt13;

   --  RX IO Control Register
   type RIOC_Register is record
      --  CANRX GIO Data In
      DIN  : RIOC_DIN_Field := 16#0#;
      --  CANRX GIO Data Out
      DOUT : RIOC_DOUT_Field := 16#0#;
      --  CANRX GIO Direction 0=Input, 1=Output
      DIR  : RIOC_DIR_Field := 16#0#;
      --  CANRX Pin Function 0=GIO, 1=CAN
      FUNC : RIOC_FUNC_Field := 16#0#;
      --  Reserved
      Rsv2 : RIOC_Rsv2_Field := 16#0#;
      --  CANRX Open-Drain Enable 0 = Push/Pull, 1 = Open-Drain
      OD   : RIOC_OD_Field := 16#0#;
      --  CANRX Pull Enable 0 = Pull Up/Down Active, 1 = Pull Up/Down Disabled
      PD   : RIOC_PD_Field := 16#0#;
      --  CANRX Pullup/Down Select 0=PullDown, 1=PullUp
      PU   : RIOC_PU_Field := 16#0#;
      --  Reserved
      Rsv1 : RIOC_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RIOC_Register use record
      DIN  at 16#0# range 0 .. 0;
      DOUT at 16#0# range 1 .. 1;
      DIR  at 16#0# range 2 .. 2;
      FUNC at 16#0# range 3 .. 3;
      Rsv2 at 16#0# range 4 .. 15;
      OD   at 16#0# range 16 .. 16;
      PD   at 16#0# range 17 .. 17;
      PU   at 16#0# range 18 .. 18;
      Rsv1 at 16#0# range 19 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  DCAN
   type Dcan_Peripheral is record
      --  CAN Control Register
      CTL          : CTL_Register;
      --  Error and Status register
      ES           : ES_Register;
      --  Error Counter Register
      ERRC         : ERRC_Register;
      --  BIT Timing Register
      BTR          : BTR_Register;
      --  Interrupt Register
      INT          : INT_Register;
      --  Test Register
      TEST         : TEST_Register;
      --  Parity Error Code Register
      PERR         : PERR_Register;
      --  Core Release Register
      REL          : REL_Register;
      --  ECC Diagnostic Register
      ECCDIAG      : ECCDIAG_Register;
      --  ECC Diagnostic Status Register
      ECCDIAG_STAT : ECCDIAG_STAT_Register;
      --  ECC Control and Status Register
      ECC_CS       : ECC_CS_Register;
      --  ECC Single Bit Error Code Register
      ECC_SERR     : ECC_SERR_Register;
      --  Auto-Bus-On Time Register
      ABOTR        : TMS570LC43xx.Word;
      --  Transmission Request X
      TXRQX        : TXRQX_Register;
      --  Transmission Request 12 Register
      TXRQ12       : TXRQ12_Register;
      --  Transmission Request 34 Register
      TXRQ34       : TXRQ34_Register;
      --  Transmission Request 56 Register
      TXRQ56       : TXRQ56_Register;
      --  Transmission Request 78 Register
      TXRQ78       : TXRQ78_Register;
      --  New Data X Register
      NWDATX       : NWDATX_Register;
      --  New Data 12 Register
      NWDAT12      : NWDAT12_Register;
      --  New Data 34 Register
      NWDAT34      : NWDAT34_Register;
      --  New Data 56 Register
      NWDAT56      : NWDAT56_Register;
      --  New Data 78 Register
      NWDAT78      : NWDAT78_Register;
      --  Interrupt Pending X Register
      INTPNDX      : INTPNDX_Register;
      --  Interrupt Pending 12 Register
      INTPND12     : INTPND12_Register;
      --  Interrupt Pending 34 Register
      INTPND34     : INTPND34_Register;
      --  Interrupt Pending 56 Register
      INTPND56     : INTPND56_Register;
      --  Interrupt Pending 78 Register
      INTPND78     : INTPND78_Register;
      --  Message Valid X Register
      MSGVALX      : MSGVALX_Register;
      --  Message Valid 12 Register
      MSGVAL12     : MSGVAL12_Register;
      --  Message Valid 34 Register
      MSGVAL34     : MSGVAL34_Register;
      --  Message Valid 56 Register
      MSGVAL56     : MSGVAL56_Register;
      --  Message Valid 78 Register
      MSGVAL78     : MSGVAL78_Register;
      --  Interrupt Multiplexer 12 Register
      INTMUX12     : INTMUX12_Register;
      --  Interrupt Multiplexer 34 Register
      INTMUX34     : INTMUX34_Register;
      --  Interrupt Multiplexer 56 Register
      INTMUX56     : INTMUX56_Register;
      --  Interrupt Multiplexer 78 Register
      INTMUX78     : INTMUX78_Register;
      --  IF1 Command Register
      IF1CMD       : IF1CMD_Register;
      --  IF1 Mask Register
      IF1MSK       : IF1MSK_Register;
      --  IF1 Arbitation Register
      IF1ARB       : IF1ARB_Register;
      --  IF1 Message Control Register
      IF1MCTL      : IF1MCTL_Register;
      --  IF1 Data A Register
      IF1DATA      : IF1DATA_Register;
      --  IF1 Data B Register
      IF1DATB      : IF1DATB_Register;
      --  IF2 Command Register
      IF2CMD       : IF2CMD_Register;
      --  IF2 Mask Register
      IF2MSK       : IF2MSK_Register;
      --  IF2 Arbitation Register
      IF2ARB       : IF2ARB_Register;
      --  IF2 Message Control Register
      IF2MCTL      : IF2MCTL_Register;
      --  IF2 Data A Register
      IF2DATA      : IF2DATA_Register;
      --  IF2 Data B Register
      IF2DATB      : IF2DATB_Register;
      --  IF3 Observation Register
      IF3OBS       : IF3OBS_Register;
      --  IF3 Mask Register
      IF3MSK       : IF3MSK_Register;
      --  IF3 Arbitation Register
      IF3ARB       : IF3ARB_Register;
      --  IF3 Message Control Register
      IF3MCTL      : IF3MCTL_Register;
      --  IF3 Data A Register
      IF3DATA      : IF3DATA_Register;
      --  IF3 Data B Register
      IF3DATB      : IF3DATB_Register;
      --  IF3 Update Enable 12 Register
      IF3UPD12     : IF3UPD12_Register;
      --  IF3 Update Enable 34 Register
      IF3UPD34     : IF3UPD34_Register;
      --  IF3 Update Enable 56 Register
      IF3UPD56     : IF3UPD56_Register;
      --  IF3 Update Enable 78 Register
      IF3UPD78     : IF3UPD78_Register;
      --  TX IO Control Register
      TIOC         : TIOC_Register;
      --  RX IO Control Register
      RIOC         : RIOC_Register;
   end record
     with Volatile;

   for Dcan_Peripheral use record
      CTL          at 16#0# range 0 .. 31;
      ES           at 16#4# range 0 .. 31;
      ERRC         at 16#8# range 0 .. 31;
      BTR          at 16#C# range 0 .. 31;
      INT          at 16#10# range 0 .. 31;
      TEST         at 16#14# range 0 .. 31;
      PERR         at 16#1C# range 0 .. 31;
      REL          at 16#20# range 0 .. 31;
      ECCDIAG      at 16#24# range 0 .. 31;
      ECCDIAG_STAT at 16#28# range 0 .. 31;
      ECC_CS       at 16#2C# range 0 .. 31;
      ECC_SERR     at 16#30# range 0 .. 31;
      ABOTR        at 16#80# range 0 .. 31;
      TXRQX        at 16#84# range 0 .. 31;
      TXRQ12       at 16#88# range 0 .. 31;
      TXRQ34       at 16#8C# range 0 .. 31;
      TXRQ56       at 16#90# range 0 .. 31;
      TXRQ78       at 16#94# range 0 .. 31;
      NWDATX       at 16#98# range 0 .. 31;
      NWDAT12      at 16#9C# range 0 .. 31;
      NWDAT34      at 16#A0# range 0 .. 31;
      NWDAT56      at 16#A4# range 0 .. 31;
      NWDAT78      at 16#A8# range 0 .. 31;
      INTPNDX      at 16#AC# range 0 .. 31;
      INTPND12     at 16#B0# range 0 .. 31;
      INTPND34     at 16#B4# range 0 .. 31;
      INTPND56     at 16#B8# range 0 .. 31;
      INTPND78     at 16#BC# range 0 .. 31;
      MSGVALX      at 16#C0# range 0 .. 31;
      MSGVAL12     at 16#C4# range 0 .. 31;
      MSGVAL34     at 16#C8# range 0 .. 31;
      MSGVAL56     at 16#CC# range 0 .. 31;
      MSGVAL78     at 16#D0# range 0 .. 31;
      INTMUX12     at 16#D8# range 0 .. 31;
      INTMUX34     at 16#DC# range 0 .. 31;
      INTMUX56     at 16#E0# range 0 .. 31;
      INTMUX78     at 16#E4# range 0 .. 31;
      IF1CMD       at 16#100# range 0 .. 31;
      IF1MSK       at 16#104# range 0 .. 31;
      IF1ARB       at 16#108# range 0 .. 31;
      IF1MCTL      at 16#10C# range 0 .. 31;
      IF1DATA      at 16#110# range 0 .. 31;
      IF1DATB      at 16#114# range 0 .. 31;
      IF2CMD       at 16#120# range 0 .. 31;
      IF2MSK       at 16#124# range 0 .. 31;
      IF2ARB       at 16#128# range 0 .. 31;
      IF2MCTL      at 16#12C# range 0 .. 31;
      IF2DATA      at 16#130# range 0 .. 31;
      IF2DATB      at 16#134# range 0 .. 31;
      IF3OBS       at 16#140# range 0 .. 31;
      IF3MSK       at 16#144# range 0 .. 31;
      IF3ARB       at 16#148# range 0 .. 31;
      IF3MCTL      at 16#14C# range 0 .. 31;
      IF3DATA      at 16#150# range 0 .. 31;
      IF3DATB      at 16#154# range 0 .. 31;
      IF3UPD12     at 16#160# range 0 .. 31;
      IF3UPD34     at 16#164# range 0 .. 31;
      IF3UPD56     at 16#168# range 0 .. 31;
      IF3UPD78     at 16#16C# range 0 .. 31;
      TIOC         at 16#1E0# range 0 .. 31;
      RIOC         at 16#1E4# range 0 .. 31;
   end record;

   --  DCAN
   Dcan1_Periph : aliased Dcan_Peripheral
     with Import, Address => Dcan1_Base;

   --  DCAN
   Dcan2_Periph : aliased Dcan_Peripheral
     with Import, Address => Dcan2_Base;

   --  DCAN
   Dcan3_Periph : aliased Dcan_Peripheral
     with Import, Address => Dcan3_Base;

   --  DCAN
   Dcan4_Periph : aliased Dcan_Peripheral
     with Import, Address => Dcan4_Base;

end TMS570LC43xx.Dcan;
