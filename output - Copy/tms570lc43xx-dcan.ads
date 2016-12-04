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

   ------------
   -- CTL.DE --
   ------------

   --  CTL_DE array element
   subtype CTL_DE_Element is TMS570LC43xx.Bit;

   --  CTL_DE array
   type CTL_DE_Field_Array is array (1 .. 3) of CTL_DE_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CTL_DE
   type CTL_DE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DE as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  DE as an array
            Arr : CTL_DE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CTL_DE_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

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
      DE     : CTL_DE_Field := (As_Array => False, Val => 16#0#);
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
      DE     at 16#0# range 18 .. 20;
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

   ---------------------
   -- TXRQX.TXRQSTREG --
   ---------------------

   --  TXRQX_TXRQSTREG array element
   subtype TXRQX_TXRQSTREG_Element is TMS570LC43xx.UInt2;

   --  TXRQX_TXRQSTREG array
   type TXRQX_TXRQSTREG_Field_Array is array (1 .. 8)
     of TXRQX_TXRQSTREG_Element
     with Component_Size => 2, Size => 16;

   --  Type definition for TXRQX_TXRQSTREG
   type TXRQX_TXRQSTREG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXRQSTREG as a value
            Val : TMS570LC43xx.Short;
         when True =>
            --  TXRQSTREG as an array
            Arr : TXRQX_TXRQSTREG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for TXRQX_TXRQSTREG_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype TXRQX_Rsv1_Field is TMS570LC43xx.Short;

   --  Transmission Request X
   type TXRQX_Register is record
      --  Not Zero = One or More Bits of TXRQ1 are Set
      TXRQSTREG : TXRQX_TXRQSTREG_Field := (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv1      : TXRQX_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXRQX_Register use record
      TXRQSTREG at 16#0# range 0 .. 15;
      Rsv1      at 16#0# range 16 .. 31;
   end record;

   ---------------------
   -- TXRQ12_Register --
   ---------------------

   --  TXRQ12_TXRQST array element
   subtype TXRQ12_TXRQST_Element is TMS570LC43xx.Bit;

   --  TXRQ12_TXRQST array
   type TXRQ12_TXRQST_Field_Array is array (1 .. 32) of TXRQ12_TXRQST_Element
     with Component_Size => 1, Size => 32;

   --  Transmission Request 12 Register
   type TXRQ12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXRQST as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  TXRQST as an array
            Arr : TXRQ12_TXRQST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TXRQ12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- TXRQ34_Register --
   ---------------------

   --  TXRQ34_TXRQST array element
   subtype TXRQ34_TXRQST_Element is TMS570LC43xx.Bit;

   --  TXRQ34_TXRQST array
   type TXRQ34_TXRQST_Field_Array is array (33 .. 64)
     of TXRQ34_TXRQST_Element
     with Component_Size => 1, Size => 32;

   --  Transmission Request 34 Register
   type TXRQ34_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXRQST as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  TXRQST as an array
            Arr : TXRQ34_TXRQST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TXRQ34_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- TXRQ56_Register --
   ---------------------

   --  TXRQ56_TXRQST array element
   subtype TXRQ56_TXRQST_Element is TMS570LC43xx.Bit;

   --  TXRQ56_TXRQST array
   type TXRQ56_TXRQST_Field_Array is array (65 .. 96)
     of TXRQ56_TXRQST_Element
     with Component_Size => 1, Size => 32;

   --  Transmission Request 56 Register
   type TXRQ56_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXRQST as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  TXRQST as an array
            Arr : TXRQ56_TXRQST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TXRQ56_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- TXRQ78_Register --
   ---------------------

   --  TXRQ78_TXRQST array element
   subtype TXRQ78_TXRQST_Element is TMS570LC43xx.Bit;

   --  TXRQ78_TXRQST array
   type TXRQ78_TXRQST_Field_Array is array (97 .. 128)
     of TXRQ78_TXRQST_Element
     with Component_Size => 1, Size => 32;

   --  Transmission Request 78 Register
   type TXRQ78_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXRQST as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  TXRQST as an array
            Arr : TXRQ78_TXRQST_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for TXRQ78_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- NWDATX_Register --
   ---------------------

   ----------------------
   -- NWDATX.NEWDATREG --
   ----------------------

   --  NWDATX_NEWDATREG array element
   subtype NWDATX_NEWDATREG_Element is TMS570LC43xx.UInt2;

   --  NWDATX_NEWDATREG array
   type NWDATX_NEWDATREG_Field_Array is array (1 .. 8)
     of NWDATX_NEWDATREG_Element
     with Component_Size => 2, Size => 16;

   --  Type definition for NWDATX_NEWDATREG
   type NWDATX_NEWDATREG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NEWDATREG as a value
            Val : TMS570LC43xx.Short;
         when True =>
            --  NEWDATREG as an array
            Arr : NWDATX_NEWDATREG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for NWDATX_NEWDATREG_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype NWDATX_Rsv1_Field is TMS570LC43xx.Short;

   --  New Data X Register
   type NWDATX_Register is record
      --  Not Zero = One or More Bits of NWDAT1 are Set
      NEWDATREG : NWDATX_NEWDATREG_Field := (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv1      : NWDATX_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for NWDATX_Register use record
      NEWDATREG at 16#0# range 0 .. 15;
      Rsv1      at 16#0# range 16 .. 31;
   end record;

   ----------------------
   -- NWDAT12_Register --
   ----------------------

   --  NWDAT12_NewDat array element
   subtype NWDAT12_NewDat_Element is TMS570LC43xx.Bit;

   --  NWDAT12_NewDat array
   type NWDAT12_NewDat_Field_Array is array (1 .. 32)
     of NWDAT12_NewDat_Element
     with Component_Size => 1, Size => 32;

   --  New Data 12 Register
   type NWDAT12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NewDat as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  NewDat as an array
            Arr : NWDAT12_NewDat_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for NWDAT12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ----------------------
   -- NWDAT34_Register --
   ----------------------

   --  NWDAT34_NewDat array element
   subtype NWDAT34_NewDat_Element is TMS570LC43xx.Bit;

   --  NWDAT34_NewDat array
   type NWDAT34_NewDat_Field_Array is array (33 .. 64)
     of NWDAT34_NewDat_Element
     with Component_Size => 1, Size => 32;

   --  New Data 34 Register
   type NWDAT34_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NewDat as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  NewDat as an array
            Arr : NWDAT34_NewDat_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for NWDAT34_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ----------------------
   -- NWDAT56_Register --
   ----------------------

   --  NWDAT56_NewDat array element
   subtype NWDAT56_NewDat_Element is TMS570LC43xx.Bit;

   --  NWDAT56_NewDat array
   type NWDAT56_NewDat_Field_Array is array (65 .. 96)
     of NWDAT56_NewDat_Element
     with Component_Size => 1, Size => 32;

   --  New Data 56 Register
   type NWDAT56_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NewDat as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  NewDat as an array
            Arr : NWDAT56_NewDat_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for NWDAT56_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ----------------------
   -- NWDAT78_Register --
   ----------------------

   --  NWDAT78_NewDat array element
   subtype NWDAT78_NewDat_Element is TMS570LC43xx.Bit;

   --  NWDAT78_NewDat array
   type NWDAT78_NewDat_Field_Array is array (97 .. 128)
     of NWDAT78_NewDat_Element
     with Component_Size => 1, Size => 32;

   --  New Data 78 Register
   type NWDAT78_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NewDat as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  NewDat as an array
            Arr : NWDAT78_NewDat_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for NWDAT78_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ----------------------
   -- INTPNDX_Register --
   ----------------------

   -----------------------
   -- INTPNDX.INTPNDREG --
   -----------------------

   --  INTPNDX_INTPNDREG array element
   subtype INTPNDX_INTPNDREG_Element is TMS570LC43xx.UInt2;

   --  INTPNDX_INTPNDREG array
   type INTPNDX_INTPNDREG_Field_Array is array (1 .. 8)
     of INTPNDX_INTPNDREG_Element
     with Component_Size => 2, Size => 16;

   --  Type definition for INTPNDX_INTPNDREG
   type INTPNDX_INTPNDREG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTPNDREG as a value
            Val : TMS570LC43xx.Short;
         when True =>
            --  INTPNDREG as an array
            Arr : INTPNDX_INTPNDREG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for INTPNDX_INTPNDREG_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype INTPNDX_Rsv1_Field is TMS570LC43xx.Short;

   --  Interrupt Pending X Register
   type INTPNDX_Register is record
      --  Not Zero = One or More Bits of INTPND1 are Set
      INTPNDREG : INTPNDX_INTPNDREG_Field :=
                   (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv1      : INTPNDX_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTPNDX_Register use record
      INTPNDREG at 16#0# range 0 .. 15;
      Rsv1      at 16#0# range 16 .. 31;
   end record;

   -----------------------
   -- INTPND12_Register --
   -----------------------

   --  INTPND12_INTPND array element
   subtype INTPND12_INTPND_Element is TMS570LC43xx.Bit;

   --  INTPND12_INTPND array
   type INTPND12_INTPND_Field_Array is array (1 .. 32)
     of INTPND12_INTPND_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Pending 12 Register
   type INTPND12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTPND as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  INTPND as an array
            Arr : INTPND12_INTPND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INTPND12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- INTPND34_Register --
   -----------------------

   --  INTPND34_INTPND array element
   subtype INTPND34_INTPND_Element is TMS570LC43xx.Bit;

   --  INTPND34_INTPND array
   type INTPND34_INTPND_Field_Array is array (33 .. 64)
     of INTPND34_INTPND_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Pending 34 Register
   type INTPND34_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTPND as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  INTPND as an array
            Arr : INTPND34_INTPND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INTPND34_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- INTPND56_Register --
   -----------------------

   --  INTPND56_INTPND array element
   subtype INTPND56_INTPND_Element is TMS570LC43xx.Bit;

   --  INTPND56_INTPND array
   type INTPND56_INTPND_Field_Array is array (65 .. 96)
     of INTPND56_INTPND_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Pending 56 Register
   type INTPND56_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTPND as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  INTPND as an array
            Arr : INTPND56_INTPND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INTPND56_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- INTPND78_Register --
   -----------------------

   --  INTPND78_INTPND array element
   subtype INTPND78_INTPND_Element is TMS570LC43xx.Bit;

   --  INTPND78_INTPND array
   type INTPND78_INTPND_Field_Array is array (97 .. 128)
     of INTPND78_INTPND_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Pending 78 Register
   type INTPND78_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTPND as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  INTPND as an array
            Arr : INTPND78_INTPND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INTPND78_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ----------------------
   -- MSGVALX_Register --
   ----------------------

   -----------------------
   -- MSGVALX.MSGVALREG --
   -----------------------

   --  MSGVALX_MSGVALREG array element
   subtype MSGVALX_MSGVALREG_Element is TMS570LC43xx.UInt2;

   --  MSGVALX_MSGVALREG array
   type MSGVALX_MSGVALREG_Field_Array is array (1 .. 8)
     of MSGVALX_MSGVALREG_Element
     with Component_Size => 2, Size => 16;

   --  Type definition for MSGVALX_MSGVALREG
   type MSGVALX_MSGVALREG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSGVALREG as a value
            Val : TMS570LC43xx.Short;
         when True =>
            --  MSGVALREG as an array
            Arr : MSGVALX_MSGVALREG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MSGVALX_MSGVALREG_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype MSGVALX_Rsv1_Field is TMS570LC43xx.Short;

   --  Message Valid X Register
   type MSGVALX_Register is record
      --  Not Zero = One or More Bits of MSGVAL1 are Set
      MSGVALREG : MSGVALX_MSGVALREG_Field :=
                   (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv1      : MSGVALX_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MSGVALX_Register use record
      MSGVALREG at 16#0# range 0 .. 15;
      Rsv1      at 16#0# range 16 .. 31;
   end record;

   -----------------------
   -- MSGVAL12_Register --
   -----------------------

   --  MSGVAL12_MSGVAL array element
   subtype MSGVAL12_MSGVAL_Element is TMS570LC43xx.Bit;

   --  MSGVAL12_MSGVAL array
   type MSGVAL12_MSGVAL_Field_Array is array (1 .. 32)
     of MSGVAL12_MSGVAL_Element
     with Component_Size => 1, Size => 32;

   --  Message Valid 12 Register
   type MSGVAL12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSGVAL as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  MSGVAL as an array
            Arr : MSGVAL12_MSGVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MSGVAL12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- MSGVAL34_Register --
   -----------------------

   --  MSGVAL34_MSGVAL array element
   subtype MSGVAL34_MSGVAL_Element is TMS570LC43xx.Bit;

   --  MSGVAL34_MSGVAL array
   type MSGVAL34_MSGVAL_Field_Array is array (33 .. 64)
     of MSGVAL34_MSGVAL_Element
     with Component_Size => 1, Size => 32;

   --  Message Valid 34 Register
   type MSGVAL34_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSGVAL as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  MSGVAL as an array
            Arr : MSGVAL34_MSGVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MSGVAL34_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- MSGVAL56_Register --
   -----------------------

   --  MSGVAL56_MSGVAL array element
   subtype MSGVAL56_MSGVAL_Element is TMS570LC43xx.Bit;

   --  MSGVAL56_MSGVAL array
   type MSGVAL56_MSGVAL_Field_Array is array (65 .. 96)
     of MSGVAL56_MSGVAL_Element
     with Component_Size => 1, Size => 32;

   --  Message Valid 56 Register
   type MSGVAL56_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSGVAL as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  MSGVAL as an array
            Arr : MSGVAL56_MSGVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MSGVAL56_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- MSGVAL78_Register --
   -----------------------

   --  MSGVAL78_MSGVAL array element
   subtype MSGVAL78_MSGVAL_Element is TMS570LC43xx.Bit;

   --  MSGVAL78_MSGVAL array
   type MSGVAL78_MSGVAL_Field_Array is array (97 .. 128)
     of MSGVAL78_MSGVAL_Element
     with Component_Size => 1, Size => 32;

   --  Message Valid 78 Register
   type MSGVAL78_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MSGVAL as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  MSGVAL as an array
            Arr : MSGVAL78_MSGVAL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MSGVAL78_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- INTMUX12_Register --
   -----------------------

   --  INTMUX12_INTMUX array element
   subtype INTMUX12_INTMUX_Element is TMS570LC43xx.Bit;

   --  INTMUX12_INTMUX array
   type INTMUX12_INTMUX_Field_Array is array (1 .. 32)
     of INTMUX12_INTMUX_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Multiplexer 12 Register
   type INTMUX12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTMUX as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  INTMUX as an array
            Arr : INTMUX12_INTMUX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INTMUX12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- INTMUX34_Register --
   -----------------------

   --  INTMUX34_INTMUX array element
   subtype INTMUX34_INTMUX_Element is TMS570LC43xx.Bit;

   --  INTMUX34_INTMUX array
   type INTMUX34_INTMUX_Field_Array is array (33 .. 64)
     of INTMUX34_INTMUX_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Multiplexer 34 Register
   type INTMUX34_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTMUX as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  INTMUX as an array
            Arr : INTMUX34_INTMUX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INTMUX34_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- INTMUX56_Register --
   -----------------------

   --  INTMUX56_INTMUX array element
   subtype INTMUX56_INTMUX_Element is TMS570LC43xx.Bit;

   --  INTMUX56_INTMUX array
   type INTMUX56_INTMUX_Field_Array is array (65 .. 96)
     of INTMUX56_INTMUX_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Multiplexer 56 Register
   type INTMUX56_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTMUX as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  INTMUX as an array
            Arr : INTMUX56_INTMUX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INTMUX56_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- INTMUX78_Register --
   -----------------------

   --  INTMUX78_INTMUX array element
   subtype INTMUX78_INTMUX_Element is TMS570LC43xx.Bit;

   --  INTMUX78_INTMUX array
   type INTMUX78_INTMUX_Field_Array is array (97 .. 128)
     of INTMUX78_INTMUX_Element
     with Component_Size => 1, Size => 32;

   --  Interrupt Multiplexer 78 Register
   type INTMUX78_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INTMUX as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  INTMUX as an array
            Arr : INTMUX78_INTMUX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for INTMUX78_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
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

   --  IF1DATA_DATA array element
   subtype IF1DATA_DATA_Element is TMS570LC43xx.Byte;

   --  IF1DATA_DATA array
   type IF1DATA_DATA_Field_Array is array (0 .. 3) of IF1DATA_DATA_Element
     with Component_Size => 8, Size => 32;

   --  IF1 Data A Register
   type IF1DATA_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  DATA as an array
            Arr : IF1DATA_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF1DATA_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ----------------------
   -- IF1DATB_Register --
   ----------------------

   --  IF1DATB_DATA array element
   subtype IF1DATB_DATA_Element is TMS570LC43xx.Byte;

   --  IF1DATB_DATA array
   type IF1DATB_DATA_Field_Array is array (4 .. 7) of IF1DATB_DATA_Element
     with Component_Size => 8, Size => 32;

   --  IF1 Data B Register
   type IF1DATB_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  DATA as an array
            Arr : IF1DATB_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF1DATB_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
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

   --  IF2DATA_DATA array element
   subtype IF2DATA_DATA_Element is TMS570LC43xx.Byte;

   --  IF2DATA_DATA array
   type IF2DATA_DATA_Field_Array is array (0 .. 3) of IF2DATA_DATA_Element
     with Component_Size => 8, Size => 32;

   --  IF2 Data A Register
   type IF2DATA_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  DATA as an array
            Arr : IF2DATA_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF2DATA_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ----------------------
   -- IF2DATB_Register --
   ----------------------

   --  IF2DATB_DATA array element
   subtype IF2DATB_DATA_Element is TMS570LC43xx.Byte;

   --  IF2DATB_DATA array
   type IF2DATB_DATA_Field_Array is array (4 .. 7) of IF2DATB_DATA_Element
     with Component_Size => 8, Size => 32;

   --  IF2 Data B Register
   type IF2DATB_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  DATA as an array
            Arr : IF2DATB_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF2DATB_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
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

   --  IF3DATA_DATA array element
   subtype IF3DATA_DATA_Element is TMS570LC43xx.Byte;

   --  IF3DATA_DATA array
   type IF3DATA_DATA_Field_Array is array (0 .. 3) of IF3DATA_DATA_Element
     with Component_Size => 8, Size => 32;

   --  IF3 Data A Register
   type IF3DATA_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  DATA as an array
            Arr : IF3DATA_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF3DATA_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ----------------------
   -- IF3DATB_Register --
   ----------------------

   --  IF3DATB_DATA array element
   subtype IF3DATB_DATA_Element is TMS570LC43xx.Byte;

   --  IF3DATB_DATA array
   type IF3DATB_DATA_Field_Array is array (4 .. 7) of IF3DATB_DATA_Element
     with Component_Size => 8, Size => 32;

   --  IF3 Data B Register
   type IF3DATB_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  DATA as an array
            Arr : IF3DATB_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF3DATB_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- IF3UPD12_Register --
   -----------------------

   --  IF3UPD12_IF3UPDEN array element
   subtype IF3UPD12_IF3UPDEN_Element is TMS570LC43xx.Bit;

   --  IF3UPD12_IF3UPDEN array
   type IF3UPD12_IF3UPDEN_Field_Array is array (1 .. 32)
     of IF3UPD12_IF3UPDEN_Element
     with Component_Size => 1, Size => 32;

   --  IF3 Update Enable 12 Register
   type IF3UPD12_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IF3UPDEN as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  IF3UPDEN as an array
            Arr : IF3UPD12_IF3UPDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF3UPD12_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- IF3UPD34_Register --
   -----------------------

   --  IF3UPD34_IF3UPDEN array element
   subtype IF3UPD34_IF3UPDEN_Element is TMS570LC43xx.Bit;

   --  IF3UPD34_IF3UPDEN array
   type IF3UPD34_IF3UPDEN_Field_Array is array (33 .. 64)
     of IF3UPD34_IF3UPDEN_Element
     with Component_Size => 1, Size => 32;

   --  IF3 Update Enable 34 Register
   type IF3UPD34_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IF3UPDEN as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  IF3UPDEN as an array
            Arr : IF3UPD34_IF3UPDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF3UPD34_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- IF3UPD56_Register --
   -----------------------

   --  IF3UPD56_IF3UPDEN array element
   subtype IF3UPD56_IF3UPDEN_Element is TMS570LC43xx.Bit;

   --  IF3UPD56_IF3UPDEN array
   type IF3UPD56_IF3UPDEN_Field_Array is array (65 .. 96)
     of IF3UPD56_IF3UPDEN_Element
     with Component_Size => 1, Size => 32;

   --  IF3 Update Enable 56 Register
   type IF3UPD56_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IF3UPDEN as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  IF3UPDEN as an array
            Arr : IF3UPD56_IF3UPDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF3UPD56_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- IF3UPD78_Register --
   -----------------------

   --  IF3UPD78_IF3UPDEN array element
   subtype IF3UPD78_IF3UPDEN_Element is TMS570LC43xx.Bit;

   --  IF3UPD78_IF3UPDEN array
   type IF3UPD78_IF3UPDEN_Field_Array is array (97 .. 128)
     of IF3UPD78_IF3UPDEN_Element
     with Component_Size => 1, Size => 32;

   --  IF3 Update Enable 78 Register
   type IF3UPD78_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  IF3UPDEN as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  IF3UPDEN as an array
            Arr : IF3UPD78_IF3UPDEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IF3UPD78_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
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
