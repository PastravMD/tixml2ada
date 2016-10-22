--  This spec has been automatically generated from hercules_rti_spec_3.2.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Rti is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------------
   -- RTIGCTRL_Register --
   -----------------------

   subtype RTIGCTRL_CNT0EN_Field is TMS570LC43xx.Bit;
   subtype RTIGCTRL_CNT1EN_Field is TMS570LC43xx.Bit;
   subtype RTIGCTRL_Rsv2_Field is TMS570LC43xx.UInt13;
   subtype RTIGCTRL_COS_Field is TMS570LC43xx.Bit;
   subtype RTIGCTRL_NTUSEL_Field is TMS570LC43xx.UInt4;
   subtype RTIGCTRL_Rsv1_Field is TMS570LC43xx.UInt12;

   --  RTI Global Control Register
   type RTIGCTRL_Register is record
      --  1 = Counter Block 0 is Running
      CNT0EN : RTIGCTRL_CNT0EN_Field := 16#0#;
      --  1 = Counter Block 1 is Running
      CNT1EN : RTIGCTRL_CNT1EN_Field := 16#0#;
      --  Reserved
      Rsv2   : RTIGCTRL_Rsv2_Field := 16#0#;
      --  1 = Counters Run while CPU Is Halted in Debug Mode
      COS    : RTIGCTRL_COS_Field := 16#0#;
      --  Select NTU Timebase: 0x0=NTU0, 0x5=NTU1, 0xA=NTU2, 0xF=NTU3,
      --  Others=Disabled
      NTUSEL : RTIGCTRL_NTUSEL_Field := 16#0#;
      --  Reserved
      Rsv1   : RTIGCTRL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTIGCTRL_Register use record
      CNT0EN at 16#0# range 0 .. 0;
      CNT1EN at 16#0# range 1 .. 1;
      Rsv2   at 16#0# range 2 .. 14;
      COS    at 16#0# range 15 .. 15;
      NTUSEL at 16#0# range 16 .. 19;
      Rsv1   at 16#0# range 20 .. 31;
   end record;

   ------------------------
   -- RTITBCTRL_Register --
   ------------------------

   subtype RTITBCTRL_TBEXT_Field is TMS570LC43xx.Bit;
   subtype RTITBCTRL_INC_Field is TMS570LC43xx.Bit;
   subtype RTITBCTRL_Rsv1_Field is TMS570LC43xx.UInt30;

   --  RTI Timebase Control Register
   type RTITBCTRL_Register is record
      --  Select Clock for RTIFRC0, 0=RTIUC0, 1=NTU
      TBEXT : RTITBCTRL_TBEXT_Field := 16#0#;
      --  1 = RTIFRC0 will be incremented on a failing external clock.
      INC   : RTITBCTRL_INC_Field := 16#0#;
      --  Reserved
      Rsv1  : RTITBCTRL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTITBCTRL_Register use record
      TBEXT at 16#0# range 0 .. 0;
      INC   at 16#0# range 1 .. 1;
      Rsv1  at 16#0# range 2 .. 31;
   end record;

   -------------------------
   -- RTICAPCTRL_Register --
   -------------------------

   ------------------------
   -- RTICAPCTRL.CAPCNTR --
   ------------------------

   --  RTICAPCTRL_CAPCNTR array element
   subtype RTICAPCTRL_CAPCNTR_Element is TMS570LC43xx.Bit;

   --  RTICAPCTRL_CAPCNTR array
   type RTICAPCTRL_CAPCNTR_Field_Array is array (0 .. 1)
     of RTICAPCTRL_CAPCNTR_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for RTICAPCTRL_CAPCNTR
   type RTICAPCTRL_CAPCNTR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CAPCNTR as a value
            Val : TMS570LC43xx.UInt2;
         when True =>
            --  CAPCNTR as an array
            Arr : RTICAPCTRL_CAPCNTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for RTICAPCTRL_CAPCNTR_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype RTICAPCTRL_Rsv1_Field is TMS570LC43xx.UInt30;

   --  RTI Capture Control Register
   type RTICAPCTRL_Register is record
      --  Capture of RTIUC0/ RTIFRC0 is triggered by capture event 0=source 0,
      --  1=source 1
      CAPCNTR : RTICAPCTRL_CAPCNTR_Field := (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv1    : RTICAPCTRL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTICAPCTRL_Register use record
      CAPCNTR at 16#0# range 0 .. 1;
      Rsv1    at 16#0# range 2 .. 31;
   end record;

   --------------------------
   -- RTICOMPCTRL_Register --
   --------------------------

   subtype RTICOMPCTRL_COMPSEL0_Field is TMS570LC43xx.Bit;
   subtype RTICOMPCTRL_Rsv4_Field is TMS570LC43xx.UInt3;
   subtype RTICOMPCTRL_COMPSEL1_Field is TMS570LC43xx.Bit;
   subtype RTICOMPCTRL_Rsv3_Field is TMS570LC43xx.UInt3;
   subtype RTICOMPCTRL_COMPSEL2_Field is TMS570LC43xx.Bit;
   subtype RTICOMPCTRL_Rsv2_Field is TMS570LC43xx.UInt3;
   subtype RTICOMPCTRL_COMPSEL3_Field is TMS570LC43xx.Bit;
   subtype RTICOMPCTRL_Rsv1_Field is TMS570LC43xx.UInt19;

   --  RTI Compare Control Register
   type RTICOMPCTRL_Register is record
      --  RTICOMP0 Compared against 0=RTIFRC0, 1=RTIFRC1
      COMPSEL0 : RTICOMPCTRL_COMPSEL0_Field := 16#0#;
      --  Reserved
      Rsv4     : RTICOMPCTRL_Rsv4_Field := 16#0#;
      --  RTICOMP1 Compared against 0=RTIFRC0, 1=RTIFRC1
      COMPSEL1 : RTICOMPCTRL_COMPSEL1_Field := 16#0#;
      --  Reserved
      Rsv3     : RTICOMPCTRL_Rsv3_Field := 16#0#;
      --  RTICOMP2 Compared against 0=RTIFRC0, 1=RTIFRC1
      COMPSEL2 : RTICOMPCTRL_COMPSEL2_Field := 16#0#;
      --  Reserved
      Rsv2     : RTICOMPCTRL_Rsv2_Field := 16#0#;
      --  RTICOMP3 Compared against 0=RTIFRC0, 1=RTIFRC1
      COMPSEL3 : RTICOMPCTRL_COMPSEL3_Field := 16#0#;
      --  Reserved
      Rsv1     : RTICOMPCTRL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTICOMPCTRL_Register use record
      COMPSEL0 at 16#0# range 0 .. 0;
      Rsv4     at 16#0# range 1 .. 3;
      COMPSEL1 at 16#0# range 4 .. 4;
      Rsv3     at 16#0# range 5 .. 7;
      COMPSEL2 at 16#0# range 8 .. 8;
      Rsv2     at 16#0# range 9 .. 11;
      COMPSEL3 at 16#0# range 12 .. 12;
      Rsv1     at 16#0# range 13 .. 31;
   end record;

   ---------------------------
   -- RTISETINTENA_Register --
   ---------------------------

   -------------------------
   -- RTISETINTENA.SETINT --
   -------------------------

   --  RTISETINTENA_SETINT array element
   subtype RTISETINTENA_SETINT_Element is TMS570LC43xx.Bit;

   --  RTISETINTENA_SETINT array
   type RTISETINTENA_SETINT_Field_Array is array (0 .. 3)
     of RTISETINTENA_SETINT_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RTISETINTENA_SETINT
   type RTISETINTENA_SETINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SETINT as a value
            Val : TMS570LC43xx.UInt4;
         when True =>
            --  SETINT as an array
            Arr : RTISETINTENA_SETINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RTISETINTENA_SETINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RTISETINTENA_Rsv3_Field is TMS570LC43xx.UInt4;

   -------------------------
   -- RTISETINTENA.SETDMA --
   -------------------------

   --  RTISETINTENA_SETDMA array element
   subtype RTISETINTENA_SETDMA_Element is TMS570LC43xx.Bit;

   --  RTISETINTENA_SETDMA array
   type RTISETINTENA_SETDMA_Field_Array is array (0 .. 3)
     of RTISETINTENA_SETDMA_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RTISETINTENA_SETDMA
   type RTISETINTENA_SETDMA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SETDMA as a value
            Val : TMS570LC43xx.UInt4;
         when True =>
            --  SETDMA as an array
            Arr : RTISETINTENA_SETDMA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RTISETINTENA_SETDMA_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RTISETINTENA_Rsv2_Field is TMS570LC43xx.UInt4;
   subtype RTISETINTENA_SETTBINT_Field is TMS570LC43xx.Bit;
   subtype RTISETINTENA_SETOVL0INT_Field is TMS570LC43xx.Bit;
   subtype RTISETINTENA_SETOVL1INT_Field is TMS570LC43xx.Bit;
   subtype RTISETINTENA_Rsv1_Field is TMS570LC43xx.UInt13;

   --  RTI Set Interrupt Register
   type RTISETINTENA_Register is record
      --  Set Compare Interrupt Request 0 Enable, W12S
      SETINT     : RTISETINTENA_SETINT_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv3       : RTISETINTENA_Rsv3_Field := 16#0#;
      --  Set Compare DMA Request 0 Enable, W12S
      SETDMA     : RTISETINTENA_SETDMA_Field :=
                    (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv2       : RTISETINTENA_Rsv2_Field := 16#0#;
      --  Set Timebase Interrupt Enable, W12S
      SETTBINT   : RTISETINTENA_SETTBINT_Field := 16#0#;
      --  Set RTIFRC0 Overflow Interrupt Enable, W12S
      SETOVL0INT : RTISETINTENA_SETOVL0INT_Field := 16#0#;
      --  Set RTIFRC1 Overflow Interrupt Enable, W12S
      SETOVL1INT : RTISETINTENA_SETOVL1INT_Field := 16#0#;
      --  Reserved
      Rsv1       : RTISETINTENA_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTISETINTENA_Register use record
      SETINT     at 16#0# range 0 .. 3;
      Rsv3       at 16#0# range 4 .. 7;
      SETDMA     at 16#0# range 8 .. 11;
      Rsv2       at 16#0# range 12 .. 15;
      SETTBINT   at 16#0# range 16 .. 16;
      SETOVL0INT at 16#0# range 17 .. 17;
      SETOVL1INT at 16#0# range 18 .. 18;
      Rsv1       at 16#0# range 19 .. 31;
   end record;

   -----------------------------
   -- RTICLEARINTENA_Register --
   -----------------------------

   -----------------------------
   -- RTICLEARINTENA.CLEARINT --
   -----------------------------

   --  RTICLEARINTENA_CLEARINT array element
   subtype RTICLEARINTENA_CLEARINT_Element is TMS570LC43xx.Bit;

   --  RTICLEARINTENA_CLEARINT array
   type RTICLEARINTENA_CLEARINT_Field_Array is array (0 .. 3)
     of RTICLEARINTENA_CLEARINT_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RTICLEARINTENA_CLEARINT
   type RTICLEARINTENA_CLEARINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLEARINT as a value
            Val : TMS570LC43xx.UInt4;
         when True =>
            --  CLEARINT as an array
            Arr : RTICLEARINTENA_CLEARINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RTICLEARINTENA_CLEARINT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RTICLEARINTENA_Rsv3_Field is TMS570LC43xx.UInt4;

   -----------------------------
   -- RTICLEARINTENA.CLEARDMA --
   -----------------------------

   --  RTICLEARINTENA_CLEARDMA array element
   subtype RTICLEARINTENA_CLEARDMA_Element is TMS570LC43xx.Bit;

   --  RTICLEARINTENA_CLEARDMA array
   type RTICLEARINTENA_CLEARDMA_Field_Array is array (0 .. 3)
     of RTICLEARINTENA_CLEARDMA_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RTICLEARINTENA_CLEARDMA
   type RTICLEARINTENA_CLEARDMA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLEARDMA as a value
            Val : TMS570LC43xx.UInt4;
         when True =>
            --  CLEARDMA as an array
            Arr : RTICLEARINTENA_CLEARDMA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RTICLEARINTENA_CLEARDMA_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RTICLEARINTENA_Rsv2_Field is TMS570LC43xx.UInt4;
   subtype RTICLEARINTENA_CLEARTBINT_Field is TMS570LC43xx.Bit;
   subtype RTICLEARINTENA_CLEAROVL0INT_Field is TMS570LC43xx.Bit;
   subtype RTICLEARINTENA_CLEAROVL1INT_Field is TMS570LC43xx.Bit;
   subtype RTICLEARINTENA_Rsv1_Field is TMS570LC43xx.UInt13;

   --  RTI Clear Interrupt Enable Register
   type RTICLEARINTENA_Register is record
      --  CLEAR Compare Interrupt Request 0 Enable, W12C
      CLEARINT     : RTICLEARINTENA_CLEARINT_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv3         : RTICLEARINTENA_Rsv3_Field := 16#0#;
      --  CLEAR Compare DMA Request 0 Enable, W12C
      CLEARDMA     : RTICLEARINTENA_CLEARDMA_Field :=
                      (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv2         : RTICLEARINTENA_Rsv2_Field := 16#0#;
      --  CLEAR Timebase Interrupt Enable, W12C
      CLEARTBINT   : RTICLEARINTENA_CLEARTBINT_Field := 16#0#;
      --  CLEAR RTIFRC0 Overflow Interrupt Enable, W12C
      CLEAROVL0INT : RTICLEARINTENA_CLEAROVL0INT_Field := 16#0#;
      --  CLEAR RTIFRC1 Overflow Interrupt Enable, W12C
      CLEAROVL1INT : RTICLEARINTENA_CLEAROVL1INT_Field := 16#0#;
      --  Reserved
      Rsv1         : RTICLEARINTENA_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTICLEARINTENA_Register use record
      CLEARINT     at 16#0# range 0 .. 3;
      Rsv3         at 16#0# range 4 .. 7;
      CLEARDMA     at 16#0# range 8 .. 11;
      Rsv2         at 16#0# range 12 .. 15;
      CLEARTBINT   at 16#0# range 16 .. 16;
      CLEAROVL0INT at 16#0# range 17 .. 17;
      CLEAROVL1INT at 16#0# range 18 .. 18;
      Rsv1         at 16#0# range 19 .. 31;
   end record;

   -------------------------
   -- RTIINTFLAG_Register --
   -------------------------

   --------------------
   -- RTIINTFLAG.INT --
   --------------------

   --  RTIINTFLAG_INT array element
   subtype RTIINTFLAG_INT_Element is TMS570LC43xx.Bit;

   --  RTIINTFLAG_INT array
   type RTIINTFLAG_INT_Field_Array is array (0 .. 3)
     of RTIINTFLAG_INT_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for RTIINTFLAG_INT
   type RTIINTFLAG_INT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INT as a value
            Val : TMS570LC43xx.UInt4;
         when True =>
            --  INT as an array
            Arr : RTIINTFLAG_INT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RTIINTFLAG_INT_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype RTIINTFLAG_Rsv2_Field is TMS570LC43xx.UInt12;
   subtype RTIINTFLAG_TBINT_Field is TMS570LC43xx.Bit;
   subtype RTIINTFLAG_OVL0INT_Field is TMS570LC43xx.Bit;
   subtype RTIINTFLAG_OVL1INT_Field is TMS570LC43xx.Bit;
   subtype RTIINTFLAG_Rsv1_Field is TMS570LC43xx.UInt13;

   --  RTI Interrupt Flag Register
   type RTIINTFLAG_Register is record
      --  Compare Interrupt Flag 0, W12C
      INT     : RTIINTFLAG_INT_Field := (As_Array => False, Val => 16#0#);
      --  Reserved
      Rsv2    : RTIINTFLAG_Rsv2_Field := 16#0#;
      --  Timebase Interrupt Flag, W12C
      TBINT   : RTIINTFLAG_TBINT_Field := 16#0#;
      --  RTIFRC0 Overflow Interrupt Flag, W12C
      OVL0INT : RTIINTFLAG_OVL0INT_Field := 16#0#;
      --  RTIFRC1 Overflow Interrupt Flag, W12C
      OVL1INT : RTIINTFLAG_OVL1INT_Field := 16#0#;
      --  Reserved
      Rsv1    : RTIINTFLAG_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTIINTFLAG_Register use record
      INT     at 16#0# range 0 .. 3;
      Rsv2    at 16#0# range 4 .. 15;
      TBINT   at 16#0# range 16 .. 16;
      OVL0INT at 16#0# range 17 .. 17;
      OVL1INT at 16#0# range 18 .. 18;
      Rsv1    at 16#0# range 19 .. 31;
   end record;

   -------------------------
   -- RTIDWDPRLD_Register --
   -------------------------

   subtype RTIDWDPRLD_DWDPRLD_Field is TMS570LC43xx.UInt12;
   subtype RTIDWDPRLD_Rsv1_Field is TMS570LC43xx.UInt20;

   --  Digital Watchdog Preload Register
   type RTIDWDPRLD_Register is record
      --  Preload: texp = (DWDPRLD+1) x 2 13 / RTICLK1
      DWDPRLD : RTIDWDPRLD_DWDPRLD_Field := 16#0#;
      --  Reserved
      Rsv1    : RTIDWDPRLD_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTIDWDPRLD_Register use record
      DWDPRLD at 16#0# range 0 .. 11;
      Rsv1    at 16#0# range 12 .. 31;
   end record;

   --------------------------
   -- RTIWDSTATUS_Register --
   --------------------------

   subtype RTIWDSTATUS_Rsv2_Field is TMS570LC43xx.Bit;
   subtype RTIWDSTATUS_DWD_ST_Field is TMS570LC43xx.Bit;
   subtype RTIWDSTATUS_KEY_ST_Field is TMS570LC43xx.Bit;
   subtype RTIWDSTATUS_START_TIME_VIOL_Field is TMS570LC43xx.Bit;
   subtype RTIWDSTATUS_END_TIME_VIOL_Field is TMS570LC43xx.Bit;
   subtype RTIWDSTATUS_DWWD_ST_Field is TMS570LC43xx.Bit;
   subtype RTIWDSTATUS_Rsv1_Field is TMS570LC43xx.UInt26;

   --  Watchdog Status Register
   type RTIWDSTATUS_Register is record
      --  Reserved
      Rsv2            : RTIWDSTATUS_Rsv2_Field := 16#0#;
      --  Same as END_TIME_VIOL, W12C
      DWD_ST          : RTIWDSTATUS_DWD_ST_Field := 16#0#;
      --  Windowed Watchdog Status 1=Wrong Key Violation, W12C, W12C
      KEY_ST          : RTIWDSTATUS_KEY_ST_Field := 16#0#;
      --  Windowed Watchdog Status 1=Starr Time Window Violation, W12C
      START_TIME_VIOL : RTIWDSTATUS_START_TIME_VIOL_Field := 16#0#;
      --  Windowed Watchdog Status 1=End Time Window Violation, W12C
      END_TIME_VIOL   : RTIWDSTATUS_END_TIME_VIOL_Field := 16#0#;
      --  Windowed Watchdog Status 1=Time Window Violation, W12C
      DWWD_ST         : RTIWDSTATUS_DWWD_ST_Field := 16#0#;
      --  Reserved
      Rsv1            : RTIWDSTATUS_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTIWDSTATUS_Register use record
      Rsv2            at 16#0# range 0 .. 0;
      DWD_ST          at 16#0# range 1 .. 1;
      KEY_ST          at 16#0# range 2 .. 2;
      START_TIME_VIOL at 16#0# range 3 .. 3;
      END_TIME_VIOL   at 16#0# range 4 .. 4;
      DWWD_ST         at 16#0# range 5 .. 5;
      Rsv1            at 16#0# range 6 .. 31;
   end record;

   -----------------------
   -- RTIWDKEY_Register --
   -----------------------

   subtype RTIWDKEY_WDKEY_Field is TMS570LC43xx.Short;
   subtype RTIWDKEY_Rsv1_Field is TMS570LC43xx.Short;

   --  RTI Watchdog Key Register
   type RTIWDKEY_Register is record
      --  Key Sequence: Write 0xE51A followed by 0xA35C to Reset DWD
      WDKEY : RTIWDKEY_WDKEY_Field := 16#0#;
      --  Reserved
      Rsv1  : RTIWDKEY_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTIWDKEY_Register use record
      WDKEY at 16#0# range 0 .. 15;
      Rsv1  at 16#0# range 16 .. 31;
   end record;

   -------------------------
   -- RTIDWDCNTR_Register --
   -------------------------

   subtype RTIDWDCNTR_DWDCNTR_Field is TMS570LC43xx.UInt25;
   subtype RTIDWDCNTR_Rsv1_Field is TMS570LC43xx.UInt7;

   --  RTI Digital Watchdog Down Counter
   type RTIDWDCNTR_Register is record
      --  DWD down counter
      DWDCNTR : RTIDWDCNTR_DWDCNTR_Field := 16#0#;
      --  Reserved
      Rsv1    : RTIDWDCNTR_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTIDWDCNTR_Register use record
      DWDCNTR at 16#0# range 0 .. 24;
      Rsv1    at 16#0# range 25 .. 31;
   end record;

   ----------------------------
   -- RTIWWDRXNCTRL_Register --
   ----------------------------

   subtype RTIWWDRXNCTRL_WWDRXN_Field is TMS570LC43xx.UInt4;
   subtype RTIWWDRXNCTRL_Rsv1_Field is TMS570LC43xx.UInt28;

   --  Digital Windowed Watchdog Reaction Control
   type RTIWWDRXNCTRL_Register is record
      --  DWD reaction: 0xA -> NMI, 0x5,others->Reset
      WWDRXN : RTIWWDRXNCTRL_WWDRXN_Field := 16#0#;
      --  Reserved
      Rsv1   : RTIWWDRXNCTRL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTIWWDRXNCTRL_Register use record
      WWDRXN at 16#0# range 0 .. 3;
      Rsv1   at 16#0# range 4 .. 31;
   end record;

   ------------------------------
   -- RTIINTCLRENABLE_Register --
   ------------------------------

   subtype RTIINTCLRENABLE_INTCLRENABLE0_Field is TMS570LC43xx.UInt4;
   subtype RTIINTCLRENABLE_Rsv4_Field is TMS570LC43xx.UInt4;
   subtype RTIINTCLRENABLE_INTCLRENABLE1_Field is TMS570LC43xx.UInt4;
   subtype RTIINTCLRENABLE_Rsv3_Field is TMS570LC43xx.UInt4;
   subtype RTIINTCLRENABLE_INTCLRENABLE2_Field is TMS570LC43xx.UInt4;
   subtype RTIINTCLRENABLE_Rsv2_Field is TMS570LC43xx.UInt4;
   subtype RTIINTCLRENABLE_INTCLRENABLE3_Field is TMS570LC43xx.UInt4;
   subtype RTIINTCLRENABLE_Rsv1_Field is TMS570LC43xx.UInt4;

   --  RTI Compare Interrupt Clear Enable Register
   type RTIINTCLRENABLE_Register is record
      --  0x5 = Auto-Clear for RTICOMP0 Interrupt Disabled, Others=Enabled
      INTCLRENABLE0 : RTIINTCLRENABLE_INTCLRENABLE0_Field := 16#0#;
      --  Reserved
      Rsv4          : RTIINTCLRENABLE_Rsv4_Field := 16#0#;
      --  0x5 = Auto-Clear for RTICOMP1 Interrupt Disabled, Others=Enabled
      INTCLRENABLE1 : RTIINTCLRENABLE_INTCLRENABLE1_Field := 16#0#;
      --  Reserved
      Rsv3          : RTIINTCLRENABLE_Rsv3_Field := 16#0#;
      --  0x5 = Auto-Clear for RTICOMP2 Interrupt Disabled, Others=Enabled
      INTCLRENABLE2 : RTIINTCLRENABLE_INTCLRENABLE2_Field := 16#0#;
      --  Reserved
      Rsv2          : RTIINTCLRENABLE_Rsv2_Field := 16#0#;
      --  0x5 = Auto-Clear for RTICOMP3 Interrupt Disabled, Others=Enabled
      INTCLRENABLE3 : RTIINTCLRENABLE_INTCLRENABLE3_Field := 16#0#;
      --  Reserved
      Rsv1          : RTIINTCLRENABLE_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTIINTCLRENABLE_Register use record
      INTCLRENABLE0 at 16#0# range 0 .. 3;
      Rsv4          at 16#0# range 4 .. 7;
      INTCLRENABLE1 at 16#0# range 8 .. 11;
      Rsv3          at 16#0# range 12 .. 15;
      INTCLRENABLE2 at 16#0# range 16 .. 19;
      Rsv2          at 16#0# range 20 .. 23;
      INTCLRENABLE3 at 16#0# range 24 .. 27;
      Rsv1          at 16#0# range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Real Time Interrupt
   type Rti_Peripheral is record
      --  RTI Global Control Register
      RTIGCTRL        : RTIGCTRL_Register;
      --  RTI Timebase Control Register
      RTITBCTRL       : RTITBCTRL_Register;
      --  RTI Capture Control Register
      RTICAPCTRL      : RTICAPCTRL_Register;
      --  RTI Compare Control Register
      RTICOMPCTRL     : RTICOMPCTRL_Register;
      --  RTI Free Running Counter 0 Register
      RTIFRC0         : TMS570LC43xx.Word;
      --  RTI Up Counter 0 Register
      RTIUC0          : TMS570LC43xx.Word;
      --  RTI Compare Up Counter 0 Register
      RTICPUC0        : TMS570LC43xx.Word;
      --  RTI Capture Free Running Counter 0 Register
      RTICAFRC0       : TMS570LC43xx.Word;
      --  RTI Capture Up Counter 0 Register
      RTICAUC0        : TMS570LC43xx.Word;
      --  RTI Free Running Counter 1 Register
      RTIFRC1         : TMS570LC43xx.Word;
      --  RTI Up Counter 1 Register
      RTIUC1          : TMS570LC43xx.Word;
      --  RTI Compare Up Counter 1 Register
      RTICPUC1        : TMS570LC43xx.Word;
      --  RTI Capture Free Running Counter 1 Register
      RTICAFRC1       : TMS570LC43xx.Word;
      --  RTI Capture Up Counter 1 Register
      RTICAUC1        : TMS570LC43xx.Word;
      --  RTI Compare 0 Register
      RTICOMP0        : TMS570LC43xx.Word;
      --  RTI Update Compare 0 Register
      RTIUDCP0        : TMS570LC43xx.Word;
      --  RTI Compare 1 Register
      RTICOMP1        : TMS570LC43xx.Word;
      --  RTI Update Compare 1 Register
      RTIUDCP1        : TMS570LC43xx.Word;
      --  RTI Compare 2 Register
      RTICOMP2        : TMS570LC43xx.Word;
      --  RTI Update Compare 2 Register
      RTIUDCP2        : TMS570LC43xx.Word;
      --  RTI Compare 3 Register
      RTICOMP3        : TMS570LC43xx.Word;
      --  RTI Update Compare 2 Register
      RTIUDCP3        : TMS570LC43xx.Word;
      --  RTI Timebase Low Compare Register
      RTITBLCOMP      : TMS570LC43xx.Word;
      --  RTI Timebase High Compare Register
      RTITBHCOMP      : TMS570LC43xx.Word;
      --  RTI Set Interrupt Register
      RTISETINTENA    : RTISETINTENA_Register;
      --  RTI Clear Interrupt Enable Register
      RTICLEARINTENA  : RTICLEARINTENA_Register;
      --  RTI Interrupt Flag Register
      RTIINTFLAG      : RTIINTFLAG_Register;
      --  Digital Watchdog Control Register
      RTIDWDCTRL      : TMS570LC43xx.Word;
      --  Digital Watchdog Preload Register
      RTIDWDPRLD      : RTIDWDPRLD_Register;
      --  Watchdog Status Register
      RTIWDSTATUS     : RTIWDSTATUS_Register;
      --  RTI Watchdog Key Register
      RTIWDKEY        : RTIWDKEY_Register;
      --  RTI Digital Watchdog Down Counter
      RTIDWDCNTR      : RTIDWDCNTR_Register;
      --  Digital Windowed Watchdog Reaction Control
      RTIWWDRXNCTRL   : RTIWWDRXNCTRL_Register;
      --  Digital Windowed Watchdog Window Size Control
      RTIWWDSIZECTRL  : TMS570LC43xx.Word;
      --  RTI Compare Interrupt Clear Enable Register
      RTIINTCLRENABLE : RTIINTCLRENABLE_Register;
      --  RTI Compare 0 Clear Register
      RTICOMP0CLR     : TMS570LC43xx.Word;
      --  RTI Compare 1 Clear Register
      RTICOMP1CLR     : TMS570LC43xx.Word;
      --  RTI Compare 2 Clear Register
      RTICOMP2CLR     : TMS570LC43xx.Word;
      --  RTI Compare 3 Clear Register
      RTICOMP3CLR     : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Rti_Peripheral use record
      RTIGCTRL        at 16#0# range 0 .. 31;
      RTITBCTRL       at 16#4# range 0 .. 31;
      RTICAPCTRL      at 16#8# range 0 .. 31;
      RTICOMPCTRL     at 16#C# range 0 .. 31;
      RTIFRC0         at 16#10# range 0 .. 31;
      RTIUC0          at 16#14# range 0 .. 31;
      RTICPUC0        at 16#18# range 0 .. 31;
      RTICAFRC0       at 16#20# range 0 .. 31;
      RTICAUC0        at 16#24# range 0 .. 31;
      RTIFRC1         at 16#30# range 0 .. 31;
      RTIUC1          at 16#34# range 0 .. 31;
      RTICPUC1        at 16#38# range 0 .. 31;
      RTICAFRC1       at 16#40# range 0 .. 31;
      RTICAUC1        at 16#44# range 0 .. 31;
      RTICOMP0        at 16#50# range 0 .. 31;
      RTIUDCP0        at 16#54# range 0 .. 31;
      RTICOMP1        at 16#58# range 0 .. 31;
      RTIUDCP1        at 16#5C# range 0 .. 31;
      RTICOMP2        at 16#60# range 0 .. 31;
      RTIUDCP2        at 16#64# range 0 .. 31;
      RTICOMP3        at 16#68# range 0 .. 31;
      RTIUDCP3        at 16#6C# range 0 .. 31;
      RTITBLCOMP      at 16#70# range 0 .. 31;
      RTITBHCOMP      at 16#74# range 0 .. 31;
      RTISETINTENA    at 16#80# range 0 .. 31;
      RTICLEARINTENA  at 16#84# range 0 .. 31;
      RTIINTFLAG      at 16#88# range 0 .. 31;
      RTIDWDCTRL      at 16#90# range 0 .. 31;
      RTIDWDPRLD      at 16#94# range 0 .. 31;
      RTIWDSTATUS     at 16#98# range 0 .. 31;
      RTIWDKEY        at 16#9C# range 0 .. 31;
      RTIDWDCNTR      at 16#A0# range 0 .. 31;
      RTIWWDRXNCTRL   at 16#A4# range 0 .. 31;
      RTIWWDSIZECTRL  at 16#A8# range 0 .. 31;
      RTIINTCLRENABLE at 16#AC# range 0 .. 31;
      RTICOMP0CLR     at 16#B0# range 0 .. 31;
      RTICOMP1CLR     at 16#B4# range 0 .. 31;
      RTICOMP2CLR     at 16#B8# range 0 .. 31;
      RTICOMP3CLR     at 16#BC# range 0 .. 31;
   end record;

   --  Real Time Interrupt
   Rti_Periph : aliased Rti_Peripheral
     with Import, Address => Rti_Base;

end TMS570LC43xx.Rti;
