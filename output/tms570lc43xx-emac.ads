--  This spec has been automatically generated from hercules_emac_spec_1.2.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.EMAC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ------------------------
   -- TXCONTROL_Register --
   ------------------------

   subtype TXCONTROL_TXEN_Field is TMS570LC43xx.Bit;
   subtype TXCONTROL_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Transmit Control Register
   type TXCONTROL_Register is record
      --  Transmit enable
      TXEN          : TXCONTROL_TXEN_Field := 16#0#;
      --  Reserved
      Reserved_1_31 : TXCONTROL_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXCONTROL_Register use record
      TXEN          at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   -------------------------
   -- TXTEARDOWN_Register --
   -------------------------

   subtype TXTEARDOWN_TXTDNCH_Field is TMS570LC43xx.UInt3;
   subtype TXTEARDOWN_Reserved_3_30_Field is TMS570LC43xx.UInt28;
   subtype TXTEARDOWN_Reserved_31_31_Field is TMS570LC43xx.Bit;

   --  Transmit Teardown Register
   type TXTEARDOWN_Register is record
      --  TX teardown channed
      TXTDNCH        : TXTEARDOWN_TXTDNCH_Field := 16#0#;
      --  Reserved
      Reserved_3_30  : TXTEARDOWN_Reserved_3_30_Field := 16#0#;
      --  TX teardown ready; read as zero, but always assumed to be one -
      --  unused
      Reserved_31_31 : TXTEARDOWN_Reserved_31_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXTEARDOWN_Register use record
      TXTDNCH        at 16#0# range 0 .. 2;
      Reserved_3_30  at 16#0# range 3 .. 30;
      Reserved_31_31 at 16#0# range 31 .. 31;
   end record;

   ------------------------
   -- RXCONTROL_Register --
   ------------------------

   subtype RXCONTROL_RXEN_Field is TMS570LC43xx.Bit;
   subtype RXCONTROL_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  RX Control Register
   type RXCONTROL_Register is record
      --  RX DMA enable
      RXEN          : RXCONTROL_RXEN_Field := 16#0#;
      --  Reserved
      Reserved_1_31 : RXCONTROL_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXCONTROL_Register use record
      RXEN          at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   -------------------------
   -- RXTEARDOWN_Register --
   -------------------------

   subtype RXTEARDOWN_RXTDNCH_Field is TMS570LC43xx.UInt3;
   subtype RXTEARDOWN_Reserved_3_30_Field is TMS570LC43xx.UInt28;
   subtype RXTEARDOWN_Reserved_31_31_Field is TMS570LC43xx.Bit;

   --  RX Teardown Register
   type RXTEARDOWN_Register is record
      --  RX teardown channel
      RXTDNCH        : RXTEARDOWN_RXTDNCH_Field := 16#0#;
      --  Reserved
      Reserved_3_30  : RXTEARDOWN_Reserved_3_30_Field := 16#0#;
      --  Teardown ready; read as zero, but it is always assumed to be one -
      --  unused
      Reserved_31_31 : RXTEARDOWN_Reserved_31_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXTEARDOWN_Register use record
      RXTDNCH        at 16#0# range 0 .. 2;
      Reserved_3_30  at 16#0# range 3 .. 30;
      Reserved_31_31 at 16#0# range 31 .. 31;
   end record;

   ---------------------------
   -- TXINTSTATRAW_Register --
   ---------------------------

   subtype TXINTSTATRAW_TX0PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATRAW_TX1PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATRAW_TX2PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATRAW_TX3PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATRAW_TX4PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATRAW_TX5PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATRAW_TX6PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATRAW_TX7PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATRAW_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Transmit Interrupt Status Register
   type TXINTSTATRAW_Register is record
      --  TX0PEND raw interrupt read (before mask)
      TX0PEND       : TXINTSTATRAW_TX0PEND_Field := 16#0#;
      --  TX1PEND raw interrupt read (before mask)
      TX1PEND       : TXINTSTATRAW_TX1PEND_Field := 16#0#;
      --  TX2PEND raw interrupt read (before mask)
      TX2PEND       : TXINTSTATRAW_TX2PEND_Field := 16#0#;
      --  TX3PEND raw interrupt read (before mask)
      TX3PEND       : TXINTSTATRAW_TX3PEND_Field := 16#0#;
      --  TX4PEND raw interrupt read (before mask)
      TX4PEND       : TXINTSTATRAW_TX4PEND_Field := 16#0#;
      --  TX5PEND raw interrupt read (before mask)
      TX5PEND       : TXINTSTATRAW_TX5PEND_Field := 16#0#;
      --  TX6PEND raw interrupt read (before mask)
      TX6PEND       : TXINTSTATRAW_TX6PEND_Field := 16#0#;
      --  TX7PEND raw interrupt read (before mask)
      TX7PEND       : TXINTSTATRAW_TX7PEND_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : TXINTSTATRAW_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXINTSTATRAW_Register use record
      TX0PEND       at 16#0# range 0 .. 0;
      TX1PEND       at 16#0# range 1 .. 1;
      TX2PEND       at 16#0# range 2 .. 2;
      TX3PEND       at 16#0# range 3 .. 3;
      TX4PEND       at 16#0# range 4 .. 4;
      TX5PEND       at 16#0# range 5 .. 5;
      TX6PEND       at 16#0# range 6 .. 6;
      TX7PEND       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ------------------------------
   -- TXINTSTATMASKED_Register --
   ------------------------------

   subtype TXINTSTATMASKED_TX0PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATMASKED_TX1PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATMASKED_TX2PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATMASKED_TX3PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATMASKED_TX4PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATMASKED_TX5PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATMASKED_TX6PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATMASKED_TX7PEND_Field is TMS570LC43xx.Bit;
   subtype TXINTSTATMASKED_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Transmit Interrupt Status Register Masked
   type TXINTSTATMASKED_Register is record
      --  TX0PEND masked interrupt read
      TX0PEND       : TXINTSTATMASKED_TX0PEND_Field := 16#0#;
      --  TX1PEND masked interrupt read
      TX1PEND       : TXINTSTATMASKED_TX1PEND_Field := 16#0#;
      --  TX2PEND masked interrupt read
      TX2PEND       : TXINTSTATMASKED_TX2PEND_Field := 16#0#;
      --  TX3PEND masked interrupt read
      TX3PEND       : TXINTSTATMASKED_TX3PEND_Field := 16#0#;
      --  TX4PEND masked interrupt read
      TX4PEND       : TXINTSTATMASKED_TX4PEND_Field := 16#0#;
      --  TX5PEND masked interrupt read
      TX5PEND       : TXINTSTATMASKED_TX5PEND_Field := 16#0#;
      --  TX6PEND masked interrupt read
      TX6PEND       : TXINTSTATMASKED_TX6PEND_Field := 16#0#;
      --  TX7PEND masked interrupt read
      TX7PEND       : TXINTSTATMASKED_TX7PEND_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : TXINTSTATMASKED_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXINTSTATMASKED_Register use record
      TX0PEND       at 16#0# range 0 .. 0;
      TX1PEND       at 16#0# range 1 .. 1;
      TX2PEND       at 16#0# range 2 .. 2;
      TX3PEND       at 16#0# range 3 .. 3;
      TX4PEND       at 16#0# range 4 .. 4;
      TX5PEND       at 16#0# range 5 .. 5;
      TX6PEND       at 16#0# range 6 .. 6;
      TX7PEND       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ---------------------------
   -- TXINTMASKSET_Register --
   ---------------------------

   subtype TXINTMASKSET_TX0MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKSET_TX1MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKSET_TX2MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKSET_TX3MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKSET_TX4MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKSET_TX5MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKSET_TX6MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKSET_TX7MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKSET_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Transmit Interrupt Mask Set Register
   type TXINTMASKSET_Register is record
      --  TX channel 0 interrupt pending mask set bit - Write one to enable
      TX0MASK       : TXINTMASKSET_TX0MASK_Field := 16#0#;
      --  TX channel 1 interrupt pending mask set bit - Write one to enable
      TX1MASK       : TXINTMASKSET_TX1MASK_Field := 16#0#;
      --  TX channel 2 interrupt pending mask set bit - Write one to enable
      TX2MASK       : TXINTMASKSET_TX2MASK_Field := 16#0#;
      --  TX channel 3 interrupt pending mask set bit - Write one to enable
      TX3MASK       : TXINTMASKSET_TX3MASK_Field := 16#0#;
      --  TX channel 4 interrupt pending mask set bit - Write one to enable
      TX4MASK       : TXINTMASKSET_TX4MASK_Field := 16#0#;
      --  TX channel 5 interrupt pending mask set bit - Write one to enable
      TX5MASK       : TXINTMASKSET_TX5MASK_Field := 16#0#;
      --  TX channel 6 interrupt pending mask set bit - Write one to enable
      TX6MASK       : TXINTMASKSET_TX6MASK_Field := 16#0#;
      --  TX channel 7 interrupt pending mask set bit - Write one to enable
      TX7MASK       : TXINTMASKSET_TX7MASK_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : TXINTMASKSET_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXINTMASKSET_Register use record
      TX0MASK       at 16#0# range 0 .. 0;
      TX1MASK       at 16#0# range 1 .. 1;
      TX2MASK       at 16#0# range 2 .. 2;
      TX3MASK       at 16#0# range 3 .. 3;
      TX4MASK       at 16#0# range 4 .. 4;
      TX5MASK       at 16#0# range 5 .. 5;
      TX6MASK       at 16#0# range 6 .. 6;
      TX7MASK       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------------
   -- TXINTMASKCLEAR_Register --
   -----------------------------

   subtype TXINTMASKCLEAR_TX0MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKCLEAR_TX1MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKCLEAR_TX2MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKCLEAR_TX3MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKCLEAR_TX4MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKCLEAR_TX5MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKCLEAR_TX6MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKCLEAR_TX7MASK_Field is TMS570LC43xx.Bit;
   subtype TXINTMASKCLEAR_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Transmit Interrupt Clear Register
   type TXINTMASKCLEAR_Register is record
      --  TX channel 0 interrupt pending mask set bit - Write one to disable
      TX0MASK       : TXINTMASKCLEAR_TX0MASK_Field := 16#0#;
      --  TX channel 1 interrupt pending mask set bit - Write one to disable
      TX1MASK       : TXINTMASKCLEAR_TX1MASK_Field := 16#0#;
      --  TX channel 2 interrupt pending mask set bit - Write one to disable
      TX2MASK       : TXINTMASKCLEAR_TX2MASK_Field := 16#0#;
      --  TX channel 3 interrupt pending mask set bit - Write one to disable
      TX3MASK       : TXINTMASKCLEAR_TX3MASK_Field := 16#0#;
      --  TX channel 4 interrupt pending mask set bit - Write one to disable
      TX4MASK       : TXINTMASKCLEAR_TX4MASK_Field := 16#0#;
      --  TX channel 5 interrupt pending mask set bit - Write one to disable
      TX5MASK       : TXINTMASKCLEAR_TX5MASK_Field := 16#0#;
      --  TX channel 6 interrupt pending mask set bit - Write one to disable
      TX6MASK       : TXINTMASKCLEAR_TX6MASK_Field := 16#0#;
      --  TX channel 7 interrupt pending mask set bit - Write one to disable
      TX7MASK       : TXINTMASKCLEAR_TX7MASK_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : TXINTMASKCLEAR_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXINTMASKCLEAR_Register use record
      TX0MASK       at 16#0# range 0 .. 0;
      TX1MASK       at 16#0# range 1 .. 1;
      TX2MASK       at 16#0# range 2 .. 2;
      TX3MASK       at 16#0# range 3 .. 3;
      TX4MASK       at 16#0# range 4 .. 4;
      TX5MASK       at 16#0# range 5 .. 5;
      TX6MASK       at 16#0# range 6 .. 6;
      TX7MASK       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   --------------------------
   -- MACINVECTOR_Register --
   --------------------------

   subtype MACINVECTOR_RXPEND_Field is TMS570LC43xx.Byte;
   subtype MACINVECTOR_RXTHRESHPEND_Field is TMS570LC43xx.Byte;
   subtype MACINVECTOR_TXPEND_Field is TMS570LC43xx.Byte;
   subtype MACINVECTOR_USERINT0_Field is TMS570LC43xx.Bit;
   subtype MACINVECTOR_LINKINT0_Field is TMS570LC43xx.Bit;
   subtype MACINVECTOR_HOSTPEND_Field is TMS570LC43xx.Bit;
   subtype MACINVECTOR_STATPEND_Field is TMS570LC43xx.Bit;
   subtype MACINVECTOR_Reserved_28_31_Field is TMS570LC43xx.UInt4;

   --  MAC Input Vector Register
   type MACINVECTOR_Register is record
      --  RX Pend[7:0]
      RXPEND         : MACINVECTOR_RXPEND_Field := 16#0#;
      --  RX Thresh Pend[7:0]
      RXTHRESHPEND   : MACINVECTOR_RXTHRESHPEND_Field := 16#0#;
      --  TX Pend[7:0]
      TXPEND         : MACINVECTOR_TXPEND_Field := 16#0#;
      --  MDIO User Int
      USERINT0       : MACINVECTOR_USERINT0_Field := 16#0#;
      --  MDIO Link Int
      LINKINT0       : MACINVECTOR_LINKINT0_Field := 16#0#;
      --  Host Pending
      HOSTPEND       : MACINVECTOR_HOSTPEND_Field := 16#0#;
      --  Status Pending
      STATPEND       : MACINVECTOR_STATPEND_Field := 16#0#;
      --  Reserved (Input Vector defined in CPGMACSS_R doc)
      Reserved_28_31 : MACINVECTOR_Reserved_28_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACINVECTOR_Register use record
      RXPEND         at 16#0# range 0 .. 7;
      RXTHRESHPEND   at 16#0# range 8 .. 15;
      TXPEND         at 16#0# range 16 .. 23;
      USERINT0       at 16#0# range 24 .. 24;
      LINKINT0       at 16#0# range 25 .. 25;
      HOSTPEND       at 16#0# range 26 .. 26;
      STATPEND       at 16#0# range 27 .. 27;
      Reserved_28_31 at 16#0# range 28 .. 31;
   end record;

   ---------------------------
   -- MACEOIVECTOR_Register --
   ---------------------------

   subtype MACEOIVECTOR_INTVECT_Field is TMS570LC43xx.UInt5;
   subtype MACEOIVECTOR_Reserved_5_31_Field is TMS570LC43xx.UInt27;

   --  MAC End of Interrupt Vector
   type MACEOIVECTOR_Register is record
      --  MAC End of Interrupt Vector; reflects the value written to this
      --  location one VBUSP_CLK cycle after a write to this location.
      INTVECT       : MACEOIVECTOR_INTVECT_Field := 16#0#;
      --  Reserved
      Reserved_5_31 : MACEOIVECTOR_Reserved_5_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACEOIVECTOR_Register use record
      INTVECT       at 16#0# range 0 .. 4;
      Reserved_5_31 at 16#0# range 5 .. 31;
   end record;

   ---------------------------
   -- RXINTSTATRAW_Register --
   ---------------------------

   subtype RXINTSTATRAW_RX0PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX1PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX2PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX3PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX4PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX5PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX6PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX7PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX0THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX1THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX2THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX3THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX4THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX5THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX6THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_RX7THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATRAW_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Interrupt Status Register Raw
   type RXINTSTATRAW_Register is record
      --  RX0PEND raw interrupt read (before mask)
      RX0PEND        : RXINTSTATRAW_RX0PEND_Field := 16#0#;
      --  RX1PEND raw interrupt read (before mask)
      RX1PEND        : RXINTSTATRAW_RX1PEND_Field := 16#0#;
      --  RX2PEND raw interrupt read (before mask)
      RX2PEND        : RXINTSTATRAW_RX2PEND_Field := 16#0#;
      --  RX3PEND raw interrupt read (before mask)
      RX3PEND        : RXINTSTATRAW_RX3PEND_Field := 16#0#;
      --  RX4PEND raw interrupt read (before mask)
      RX4PEND        : RXINTSTATRAW_RX4PEND_Field := 16#0#;
      --  RX5PEND raw interrupt read (before mask)
      RX5PEND        : RXINTSTATRAW_RX5PEND_Field := 16#0#;
      --  RX6PEND raw interrupt read (before mask)
      RX6PEND        : RXINTSTATRAW_RX6PEND_Field := 16#0#;
      --  RX7PEND raw interrupt read (before mask)
      RX7PEND        : RXINTSTATRAW_RX7PEND_Field := 16#0#;
      --  RX0THRESHPEND raw interrupt read (before mask)
      RX0THRESHPEND  : RXINTSTATRAW_RX0THRESHPEND_Field := 16#0#;
      --  RX1THRESHPEND raw interrupt read (before mask)
      RX1THRESHPEND  : RXINTSTATRAW_RX1THRESHPEND_Field := 16#0#;
      --  RX2THRESHPEND raw interrupt read (before mask)
      RX2THRESHPEND  : RXINTSTATRAW_RX2THRESHPEND_Field := 16#0#;
      --  RX3THRESHPEND raw interrupt read (before mask)
      RX3THRESHPEND  : RXINTSTATRAW_RX3THRESHPEND_Field := 16#0#;
      --  RX4THRESHPEND raw interrupt read (before mask)
      RX4THRESHPEND  : RXINTSTATRAW_RX4THRESHPEND_Field := 16#0#;
      --  RX5THRESHPEND raw interrupt read (before mask)
      RX5THRESHPEND  : RXINTSTATRAW_RX5THRESHPEND_Field := 16#0#;
      --  RX6THRESHPEND raw interrupt read (before mask)
      RX6THRESHPEND  : RXINTSTATRAW_RX6THRESHPEND_Field := 16#0#;
      --  RX7THRESHPEND raw interrupt read (before mask)
      RX7THRESHPEND  : RXINTSTATRAW_RX7THRESHPEND_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RXINTSTATRAW_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXINTSTATRAW_Register use record
      RX0PEND        at 16#0# range 0 .. 0;
      RX1PEND        at 16#0# range 1 .. 1;
      RX2PEND        at 16#0# range 2 .. 2;
      RX3PEND        at 16#0# range 3 .. 3;
      RX4PEND        at 16#0# range 4 .. 4;
      RX5PEND        at 16#0# range 5 .. 5;
      RX6PEND        at 16#0# range 6 .. 6;
      RX7PEND        at 16#0# range 7 .. 7;
      RX0THRESHPEND  at 16#0# range 8 .. 8;
      RX1THRESHPEND  at 16#0# range 9 .. 9;
      RX2THRESHPEND  at 16#0# range 10 .. 10;
      RX3THRESHPEND  at 16#0# range 11 .. 11;
      RX4THRESHPEND  at 16#0# range 12 .. 12;
      RX5THRESHPEND  at 16#0# range 13 .. 13;
      RX6THRESHPEND  at 16#0# range 14 .. 14;
      RX7THRESHPEND  at 16#0# range 15 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ------------------------------
   -- RXINTSTATMASKED_Register --
   ------------------------------

   subtype RXINTSTATMASKED_RX0PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX1PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX2PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX3PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX4PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX5PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX6PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX7PEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX0THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX1THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX2THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX3THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX4THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX5THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX6THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_RX7THRESHPEND_Field is TMS570LC43xx.Bit;
   subtype RXINTSTATMASKED_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Interrupt Status Register Masked
   type RXINTSTATMASKED_Register is record
      --  RX0PEND masked interrupt read
      RX0PEND        : RXINTSTATMASKED_RX0PEND_Field := 16#0#;
      --  RX1PEND masked interrupt read
      RX1PEND        : RXINTSTATMASKED_RX1PEND_Field := 16#0#;
      --  RX2PEND masked interrupt read
      RX2PEND        : RXINTSTATMASKED_RX2PEND_Field := 16#0#;
      --  RX3PEND masked interrupt read
      RX3PEND        : RXINTSTATMASKED_RX3PEND_Field := 16#0#;
      --  RX4PEND masked interrupt read
      RX4PEND        : RXINTSTATMASKED_RX4PEND_Field := 16#0#;
      --  RX5PEND masked interrupt read
      RX5PEND        : RXINTSTATMASKED_RX5PEND_Field := 16#0#;
      --  RX6PEND masked interrupt read
      RX6PEND        : RXINTSTATMASKED_RX6PEND_Field := 16#0#;
      --  RX7PEND masked interrupt read
      RX7PEND        : RXINTSTATMASKED_RX7PEND_Field := 16#0#;
      --  RX0THRESHPEND masked interrupt read
      RX0THRESHPEND  : RXINTSTATMASKED_RX0THRESHPEND_Field := 16#0#;
      --  RX1THRESHPEND masked interrupt read
      RX1THRESHPEND  : RXINTSTATMASKED_RX1THRESHPEND_Field := 16#0#;
      --  RX2THRESHPEND masked interrupt read
      RX2THRESHPEND  : RXINTSTATMASKED_RX2THRESHPEND_Field := 16#0#;
      --  RX3THRESHPEND masked interrupt read
      RX3THRESHPEND  : RXINTSTATMASKED_RX3THRESHPEND_Field := 16#0#;
      --  RX4THRESHPEND masked interrupt read
      RX4THRESHPEND  : RXINTSTATMASKED_RX4THRESHPEND_Field := 16#0#;
      --  RX5THRESHPEND masked interrupt read
      RX5THRESHPEND  : RXINTSTATMASKED_RX5THRESHPEND_Field := 16#0#;
      --  RX6THRESHPEND masked interrupt read
      RX6THRESHPEND  : RXINTSTATMASKED_RX6THRESHPEND_Field := 16#0#;
      --  RX7THRESHPEND masked interrupt read
      RX7THRESHPEND  : RXINTSTATMASKED_RX7THRESHPEND_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RXINTSTATMASKED_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXINTSTATMASKED_Register use record
      RX0PEND        at 16#0# range 0 .. 0;
      RX1PEND        at 16#0# range 1 .. 1;
      RX2PEND        at 16#0# range 2 .. 2;
      RX3PEND        at 16#0# range 3 .. 3;
      RX4PEND        at 16#0# range 4 .. 4;
      RX5PEND        at 16#0# range 5 .. 5;
      RX6PEND        at 16#0# range 6 .. 6;
      RX7PEND        at 16#0# range 7 .. 7;
      RX0THRESHPEND  at 16#0# range 8 .. 8;
      RX1THRESHPEND  at 16#0# range 9 .. 9;
      RX2THRESHPEND  at 16#0# range 10 .. 10;
      RX3THRESHPEND  at 16#0# range 11 .. 11;
      RX4THRESHPEND  at 16#0# range 12 .. 12;
      RX5THRESHPEND  at 16#0# range 13 .. 13;
      RX6THRESHPEND  at 16#0# range 14 .. 14;
      RX7THRESHPEND  at 16#0# range 15 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ---------------------------
   -- RXINTMASKSET_Register --
   ---------------------------

   subtype RXINTMASKSET_RX0MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX1MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX2MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX3MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX4MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX5MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX6MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX7MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX0THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX1THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX2THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX3THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX4THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX5THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX6THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_RX7THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKSET_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Interrupt Mask Set Register
   type RXINTMASKSET_Register is record
      --  Receive Channel 0 Pending Mask; write one to enable interrupt
      RX0MASK        : RXINTMASKSET_RX0MASK_Field := 16#0#;
      --  Receive Channel 1 Pending Mask; write one to enable interrupt
      RX1MASK        : RXINTMASKSET_RX1MASK_Field := 16#0#;
      --  Receive Channel 2 Pending Mask; write one to enable interrupt
      RX2MASK        : RXINTMASKSET_RX2MASK_Field := 16#0#;
      --  Receive Channel 3 Pending Mask; write one to enable interrupt
      RX3MASK        : RXINTMASKSET_RX3MASK_Field := 16#0#;
      --  Receive Channel 4 Pending Mask; write one to enable interrupt
      RX4MASK        : RXINTMASKSET_RX4MASK_Field := 16#0#;
      --  Receive Channel 5 Pending Mask; write one to enable interrupt
      RX5MASK        : RXINTMASKSET_RX5MASK_Field := 16#0#;
      --  Receive Channel 6 Pending Mask; write one to enable interrupt
      RX6MASK        : RXINTMASKSET_RX6MASK_Field := 16#0#;
      --  Receive Channel 7 Pending Mask; write one to enable interrupt
      RX7MASK        : RXINTMASKSET_RX7MASK_Field := 16#0#;
      --  Receive Channel 0 Threshold Pending Mask; write one to enable
      --  interrupt
      RX0THRESHMASK  : RXINTMASKSET_RX0THRESHMASK_Field := 16#0#;
      --  Receive Channel 1 Threshold Pending Mask; write one to enable
      --  interrupt
      RX1THRESHMASK  : RXINTMASKSET_RX1THRESHMASK_Field := 16#0#;
      --  Receive Channel 2 Threshold Pending Mask; write one to enable
      --  interrupt
      RX2THRESHMASK  : RXINTMASKSET_RX2THRESHMASK_Field := 16#0#;
      --  Receive Channel 3 Threshold Pending Mask; write one to enable
      --  interrupt
      RX3THRESHMASK  : RXINTMASKSET_RX3THRESHMASK_Field := 16#0#;
      --  Receive Channel 4 Threshold Pending Mask; write one to enable
      --  interrupt
      RX4THRESHMASK  : RXINTMASKSET_RX4THRESHMASK_Field := 16#0#;
      --  Receive Channel 5 Threshold Pending Mask; write one to enable
      --  interrupt
      RX5THRESHMASK  : RXINTMASKSET_RX5THRESHMASK_Field := 16#0#;
      --  Receive Channel 6 Threshold Pending Mask; write one to enable
      --  interrupt
      RX6THRESHMASK  : RXINTMASKSET_RX6THRESHMASK_Field := 16#0#;
      --  Receive Channel 7 Threshold Pending Mask; write one to enable
      --  interrupt
      RX7THRESHMASK  : RXINTMASKSET_RX7THRESHMASK_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RXINTMASKSET_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXINTMASKSET_Register use record
      RX0MASK        at 16#0# range 0 .. 0;
      RX1MASK        at 16#0# range 1 .. 1;
      RX2MASK        at 16#0# range 2 .. 2;
      RX3MASK        at 16#0# range 3 .. 3;
      RX4MASK        at 16#0# range 4 .. 4;
      RX5MASK        at 16#0# range 5 .. 5;
      RX6MASK        at 16#0# range 6 .. 6;
      RX7MASK        at 16#0# range 7 .. 7;
      RX0THRESHMASK  at 16#0# range 8 .. 8;
      RX1THRESHMASK  at 16#0# range 9 .. 9;
      RX2THRESHMASK  at 16#0# range 10 .. 10;
      RX3THRESHMASK  at 16#0# range 11 .. 11;
      RX4THRESHMASK  at 16#0# range 12 .. 12;
      RX5THRESHMASK  at 16#0# range 13 .. 13;
      RX6THRESHMASK  at 16#0# range 14 .. 14;
      RX7THRESHMASK  at 16#0# range 15 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   -----------------------------
   -- RXINTMASKCLEAR_Register --
   -----------------------------

   subtype RXINTMASKCLEAR_RX0MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX1MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX2MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX3MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX4MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX5MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX6MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX7MASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX0THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX1THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX2THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX3THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX4THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX5THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX6THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_RX7THRESHMASK_Field is TMS570LC43xx.Bit;
   subtype RXINTMASKCLEAR_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Interrupt Mask Clear Register
   type RXINTMASKCLEAR_Register is record
      --  Receive Channel 0 Pending Mask; write one to disable interrupt
      RX0MASK        : RXINTMASKCLEAR_RX0MASK_Field := 16#0#;
      --  Receive Channel 1 Pending Mask; write one to disable interrupt
      RX1MASK        : RXINTMASKCLEAR_RX1MASK_Field := 16#0#;
      --  Receive Channel 2 Pending Mask; write one to disable interrupt
      RX2MASK        : RXINTMASKCLEAR_RX2MASK_Field := 16#0#;
      --  Receive Channel 3 Pending Mask; write one to disable interrupt
      RX3MASK        : RXINTMASKCLEAR_RX3MASK_Field := 16#0#;
      --  Receive Channel 4 Pending Mask; write one to disable interrupt
      RX4MASK        : RXINTMASKCLEAR_RX4MASK_Field := 16#0#;
      --  Receive Channel 5 Pending Mask; write one to disable interrupt
      RX5MASK        : RXINTMASKCLEAR_RX5MASK_Field := 16#0#;
      --  Receive Channel 6 Pending Mask; write one to disable interrupt
      RX6MASK        : RXINTMASKCLEAR_RX6MASK_Field := 16#0#;
      --  Receive Channel 7 Pending Mask; write one to disable interrupt
      RX7MASK        : RXINTMASKCLEAR_RX7MASK_Field := 16#0#;
      --  Receive Channel 0 Threshold Pending Mask; write one to disable
      --  interrupt
      RX0THRESHMASK  : RXINTMASKCLEAR_RX0THRESHMASK_Field := 16#0#;
      --  Receive Channel 1 Threshold Pending Mask; write one to disable
      --  interrupt
      RX1THRESHMASK  : RXINTMASKCLEAR_RX1THRESHMASK_Field := 16#0#;
      --  Receive Channel 2 Threshold Pending Mask; write one to disable
      --  interrupt
      RX2THRESHMASK  : RXINTMASKCLEAR_RX2THRESHMASK_Field := 16#0#;
      --  Receive Channel 3 Threshold Pending Mask; write one to disable
      --  interrupt
      RX3THRESHMASK  : RXINTMASKCLEAR_RX3THRESHMASK_Field := 16#0#;
      --  Receive Channel 4 Threshold Pending Mask; write one to disable
      --  interrupt
      RX4THRESHMASK  : RXINTMASKCLEAR_RX4THRESHMASK_Field := 16#0#;
      --  Receive Channel 5 Threshold Pending Mask; write one to disable
      --  interrupt
      RX5THRESHMASK  : RXINTMASKCLEAR_RX5THRESHMASK_Field := 16#0#;
      --  Receive Channel 6 Threshold Pending Mask; write one to disable
      --  interrupt
      RX6THRESHMASK  : RXINTMASKCLEAR_RX6THRESHMASK_Field := 16#0#;
      --  Receive Channel 7 Threshold Pending Mask; write one to disable
      --  interrupt
      RX7THRESHMASK  : RXINTMASKCLEAR_RX7THRESHMASK_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RXINTMASKCLEAR_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXINTMASKCLEAR_Register use record
      RX0MASK        at 16#0# range 0 .. 0;
      RX1MASK        at 16#0# range 1 .. 1;
      RX2MASK        at 16#0# range 2 .. 2;
      RX3MASK        at 16#0# range 3 .. 3;
      RX4MASK        at 16#0# range 4 .. 4;
      RX5MASK        at 16#0# range 5 .. 5;
      RX6MASK        at 16#0# range 6 .. 6;
      RX7MASK        at 16#0# range 7 .. 7;
      RX0THRESHMASK  at 16#0# range 8 .. 8;
      RX1THRESHMASK  at 16#0# range 9 .. 9;
      RX2THRESHMASK  at 16#0# range 10 .. 10;
      RX3THRESHMASK  at 16#0# range 11 .. 11;
      RX4THRESHMASK  at 16#0# range 12 .. 12;
      RX5THRESHMASK  at 16#0# range 13 .. 13;
      RX6THRESHMASK  at 16#0# range 14 .. 14;
      RX7THRESHMASK  at 16#0# range 15 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------------
   -- MACINTSTATRAW_Register --
   ----------------------------

   subtype MACINTSTATRAW_STATPEND_Field is TMS570LC43xx.Bit;
   subtype MACINTSTATRAW_HOSTPEND_Field is TMS570LC43xx.Bit;
   subtype MACINTSTATRAW_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MAC Interrupt Status Register Raw (Unmasked)
   type MACINTSTATRAW_Register is record
      --  Statistics pending interrupt; raw interrupt read (before mask)
      STATPEND      : MACINTSTATRAW_STATPEND_Field := 16#0#;
      --  Host pending interrupt; raw interrupt read (before mask)
      HOSTPEND      : MACINTSTATRAW_HOSTPEND_Field := 16#0#;
      --  Reserved
      Reserved_2_31 : MACINTSTATRAW_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACINTSTATRAW_Register use record
      STATPEND      at 16#0# range 0 .. 0;
      HOSTPEND      at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   -------------------------------
   -- MACINTSTATMASKED_Register --
   -------------------------------

   subtype MACINTSTATMASKED_STATPEND_Field is TMS570LC43xx.Bit;
   subtype MACINTSTATMASKED_HOSTPEND_Field is TMS570LC43xx.Bit;
   subtype MACINTSTATMASKED_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MAC Interrupt Status Register Masked
   type MACINTSTATMASKED_Register is record
      --  Statistics pending interrupt; masked interrupt read
      STATPEND      : MACINTSTATMASKED_STATPEND_Field := 16#0#;
      --  Host pending interrupt; masked interrupt read
      HOSTPEND      : MACINTSTATMASKED_HOSTPEND_Field := 16#0#;
      --  Reserved
      Reserved_2_31 : MACINTSTATMASKED_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACINTSTATMASKED_Register use record
      STATPEND      at 16#0# range 0 .. 0;
      HOSTPEND      at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   ----------------------------
   -- MACINTMASKSET_Register --
   ----------------------------

   subtype MACINTMASKSET_STATMASK_Field is TMS570LC43xx.Bit;
   subtype MACINTMASKSET_HOSTMASK_Field is TMS570LC43xx.Bit;
   subtype MACINTMASKSET_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MAC Interrupt Mask Set Register
   type MACINTMASKSET_Register is record
      --  Statistics interrupt;mask; write one to enable interrupt
      STATMASK      : MACINTMASKSET_STATMASK_Field := 16#0#;
      --  Host error interrupt mask; write one to enable interrupt
      HOSTMASK      : MACINTMASKSET_HOSTMASK_Field := 16#0#;
      --  Reserved
      Reserved_2_31 : MACINTMASKSET_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACINTMASKSET_Register use record
      STATMASK      at 16#0# range 0 .. 0;
      HOSTMASK      at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   ------------------------------
   -- MACINTMASKCLEAR_Register --
   ------------------------------

   subtype MACINTMASKCLEAR_STATMASK_Field is TMS570LC43xx.Bit;
   subtype MACINTMASKCLEAR_HOSTMASK_Field is TMS570LC43xx.Bit;
   subtype MACINTMASKCLEAR_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MAC Interrupt Mask Clear Register
   type MACINTMASKCLEAR_Register is record
      --  Statistics interrupt;mask; write one to disable interrupt
      STATMASK      : MACINTMASKCLEAR_STATMASK_Field := 16#0#;
      --  Host error interrupt mask; write one to disable interrupt
      HOSTMASK      : MACINTMASKCLEAR_HOSTMASK_Field := 16#0#;
      --  Reserved
      Reserved_2_31 : MACINTMASKCLEAR_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACINTMASKCLEAR_Register use record
      STATMASK      at 16#0# range 0 .. 0;
      HOSTMASK      at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   --------------------------
   -- RXMBPENABLE_Register --
   --------------------------

   subtype RXMBPENABLE_RXMULTCH_Field is TMS570LC43xx.UInt3;
   subtype RXMBPENABLE_Reserved_3_4_Field is TMS570LC43xx.UInt2;
   subtype RXMBPENABLE_RXMULTEN_Field is TMS570LC43xx.Bit;
   subtype RXMBPENABLE_Reserved_6_7_Field is TMS570LC43xx.UInt2;
   subtype RXMBPENABLE_RXBROADCH_Field is TMS570LC43xx.UInt3;
   subtype RXMBPENABLE_Reserved_11_12_Field is TMS570LC43xx.UInt2;
   subtype RXMBPENABLE_RXBROADEN_Field is TMS570LC43xx.Bit;
   subtype RXMBPENABLE_Reserved_14_15_Field is TMS570LC43xx.UInt2;
   subtype RXMBPENABLE_RXPROMCH_Field is TMS570LC43xx.UInt3;
   subtype RXMBPENABLE_Reserved_19_20_Field is TMS570LC43xx.UInt2;
   subtype RXMBPENABLE_RXCAFEN_Field is TMS570LC43xx.Bit;
   subtype RXMBPENABLE_RXCEFEN_Field is TMS570LC43xx.Bit;
   subtype RXMBPENABLE_RXCSFEN_Field is TMS570LC43xx.Bit;
   subtype RXMBPENABLE_RXCMFEN_Field is TMS570LC43xx.Bit;
   subtype RXMBPENABLE_Reserved_25_27_Field is TMS570LC43xx.UInt3;
   subtype RXMBPENABLE_RXNOCHAIN_Field is TMS570LC43xx.Bit;
   subtype RXMBPENABLE_RXQOSEN_Field is TMS570LC43xx.Bit;
   subtype RXMBPENABLE_RXPASSCRC_Field is TMS570LC43xx.Bit;
   subtype RXMBPENABLE_Reserved_31_31_Field is TMS570LC43xx.Bit;

   --  Receive Multicast/Broadcast/Promiscuous Channel Enable Register
   type RXMBPENABLE_Register is record
      --  RX multicast channel select
      RXMULTCH       : RXMBPENABLE_RXMULTCH_Field := 16#0#;
      --  Reserved
      Reserved_3_4   : RXMBPENABLE_Reserved_3_4_Field := 16#0#;
      --  RX multicast enable
      RXMULTEN       : RXMBPENABLE_RXMULTEN_Field := 16#0#;
      --  Reserved
      Reserved_6_7   : RXMBPENABLE_Reserved_6_7_Field := 16#0#;
      --  Receive broadcast channel select
      RXBROADCH      : RXMBPENABLE_RXBROADCH_Field := 16#0#;
      --  Reserved
      Reserved_11_12 : RXMBPENABLE_Reserved_11_12_Field := 16#0#;
      --  Receive broadcast enable
      RXBROADEN      : RXMBPENABLE_RXBROADEN_Field := 16#0#;
      --  Reserved
      Reserved_14_15 : RXMBPENABLE_Reserved_14_15_Field := 16#0#;
      --  Receive promiscuous channel select
      RXPROMCH       : RXMBPENABLE_RXPROMCH_Field := 16#0#;
      --  Reserved
      Reserved_19_20 : RXMBPENABLE_Reserved_19_20_Field := 16#0#;
      --  Receive copy all frames enable
      RXCAFEN        : RXMBPENABLE_RXCAFEN_Field := 16#0#;
      --  Receive copy error frames enable
      RXCEFEN        : RXMBPENABLE_RXCEFEN_Field := 16#0#;
      --  Receive copy short frames enable
      RXCSFEN        : RXMBPENABLE_RXCSFEN_Field := 16#0#;
      --  Receive copy MAC control frames enable
      RXCMFEN        : RXMBPENABLE_RXCMFEN_Field := 16#0#;
      --  Reserved
      Reserved_25_27 : RXMBPENABLE_Reserved_25_27_Field := 16#0#;
      --  Receive no buffer chaining
      RXNOCHAIN      : RXMBPENABLE_RXNOCHAIN_Field := 16#0#;
      --  Receive quality of service enable
      RXQOSEN        : RXMBPENABLE_RXQOSEN_Field := 16#0#;
      --  Pass receive CRC enable
      RXPASSCRC      : RXMBPENABLE_RXPASSCRC_Field := 16#0#;
      --  Reserved
      Reserved_31_31 : RXMBPENABLE_Reserved_31_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXMBPENABLE_Register use record
      RXMULTCH       at 16#0# range 0 .. 2;
      Reserved_3_4   at 16#0# range 3 .. 4;
      RXMULTEN       at 16#0# range 5 .. 5;
      Reserved_6_7   at 16#0# range 6 .. 7;
      RXBROADCH      at 16#0# range 8 .. 10;
      Reserved_11_12 at 16#0# range 11 .. 12;
      RXBROADEN      at 16#0# range 13 .. 13;
      Reserved_14_15 at 16#0# range 14 .. 15;
      RXPROMCH       at 16#0# range 16 .. 18;
      Reserved_19_20 at 16#0# range 19 .. 20;
      RXCAFEN        at 16#0# range 21 .. 21;
      RXCEFEN        at 16#0# range 22 .. 22;
      RXCSFEN        at 16#0# range 23 .. 23;
      RXCMFEN        at 16#0# range 24 .. 24;
      Reserved_25_27 at 16#0# range 25 .. 27;
      RXNOCHAIN      at 16#0# range 28 .. 28;
      RXQOSEN        at 16#0# range 29 .. 29;
      RXPASSCRC      at 16#0# range 30 .. 30;
      Reserved_31_31 at 16#0# range 31 .. 31;
   end record;

   ---------------------------
   -- RXUNICASTSET_Register --
   ---------------------------

   subtype RXUNICASTSET_RXCH0EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTSET_RXCH1EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTSET_RXCH2EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTSET_RXCH3EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTSET_RXCH4EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTSET_RXCH5EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTSET_RXCH6EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTSET_RXCH7EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTSET_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Unicast Enable Set Register
   type RXUNICASTSET_Register is record
      --  RX channel 0 unicast enable set
      RXCH0EN       : RXUNICASTSET_RXCH0EN_Field := 16#0#;
      --  RX channel 1 unicast enable set
      RXCH1EN       : RXUNICASTSET_RXCH1EN_Field := 16#0#;
      --  RX channel 2 unicast enable set
      RXCH2EN       : RXUNICASTSET_RXCH2EN_Field := 16#0#;
      --  RX channel 3 unicast enable set
      RXCH3EN       : RXUNICASTSET_RXCH3EN_Field := 16#0#;
      --  RX channel 4 unicast enable set
      RXCH4EN       : RXUNICASTSET_RXCH4EN_Field := 16#0#;
      --  RX channel 5 unicast enable set
      RXCH5EN       : RXUNICASTSET_RXCH5EN_Field := 16#0#;
      --  RX channel 6 unicast enable set
      RXCH6EN       : RXUNICASTSET_RXCH6EN_Field := 16#0#;
      --  RX channel 7 unicast enable set
      RXCH7EN       : RXUNICASTSET_RXCH7EN_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RXUNICASTSET_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXUNICASTSET_Register use record
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

   -----------------------------
   -- RXUNICASTCLEAR_Register --
   -----------------------------

   subtype RXUNICASTCLEAR_RXCH0EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTCLEAR_RXCH1EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTCLEAR_RXCH2EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTCLEAR_RXCH3EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTCLEAR_RXCH4EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTCLEAR_RXCH5EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTCLEAR_RXCH6EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTCLEAR_RXCH7EN_Field is TMS570LC43xx.Bit;
   subtype RXUNICASTCLEAR_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Unicast Clear Register
   type RXUNICASTCLEAR_Register is record
      --  RX channel 0 unicast enable clear
      RXCH0EN       : RXUNICASTCLEAR_RXCH0EN_Field := 16#0#;
      --  RX channel 1 unicast enable clear
      RXCH1EN       : RXUNICASTCLEAR_RXCH1EN_Field := 16#0#;
      --  RX channel 2 unicast enable clear
      RXCH2EN       : RXUNICASTCLEAR_RXCH2EN_Field := 16#0#;
      --  RX channel 3 unicast enable clear
      RXCH3EN       : RXUNICASTCLEAR_RXCH3EN_Field := 16#0#;
      --  RX channel 4 unicast enable clear
      RXCH4EN       : RXUNICASTCLEAR_RXCH4EN_Field := 16#0#;
      --  RX channel 5 unicast enable clear
      RXCH5EN       : RXUNICASTCLEAR_RXCH5EN_Field := 16#0#;
      --  RX channel 6 unicast enable clear
      RXCH6EN       : RXUNICASTCLEAR_RXCH6EN_Field := 16#0#;
      --  RX channel 7 unicast enable clear
      RXCH7EN       : RXUNICASTCLEAR_RXCH7EN_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RXUNICASTCLEAR_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXUNICASTCLEAR_Register use record
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

   -----------------------
   -- RXMAXLEN_Register --
   -----------------------

   subtype RXMAXLEN_RXMAXLEN_Field is TMS570LC43xx.Short;
   subtype RXMAXLEN_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Maximum Length Register
   type RXMAXLEN_Register is record
      --  RX maximum frame length
      RXMAXLEN       : RXMAXLEN_RXMAXLEN_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RXMAXLEN_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXMAXLEN_Register use record
      RXMAXLEN       at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   -----------------------------
   -- RXBUFFEROFFSET_Register --
   -----------------------------

   subtype RXBUFFEROFFSET_RXBUFFEROFFSET_Field is TMS570LC43xx.Short;
   subtype RXBUFFEROFFSET_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Buffer Offset Register
   type RXBUFFEROFFSET_Register is record
      --  RX buffer offset value
      RXBUFFEROFFSET : RXBUFFEROFFSET_RXBUFFEROFFSET_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RXBUFFEROFFSET_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXBUFFEROFFSET_Register use record
      RXBUFFEROFFSET at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   --------------------------------
   -- RXFILTERLOWTHRESH_Register --
   --------------------------------

   subtype RXFILTERLOWTHRESH_RXFILTERTHRESH_Field is TMS570LC43xx.Byte;
   subtype RXFILTERLOWTHRESH_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Filter Low Priority Frame Threshold Register
   type RXFILTERLOWTHRESH_Register is record
      --  RX filter low threshold
      RXFILTERTHRESH : RXFILTERLOWTHRESH_RXFILTERTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_8_31  : RXFILTERLOWTHRESH_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXFILTERLOWTHRESH_Register use record
      RXFILTERTHRESH at 16#0# range 0 .. 7;
      Reserved_8_31  at 16#0# range 8 .. 31;
   end record;

   ----------------------------
   -- RX0FLOWTHRESH_Register --
   ----------------------------

   subtype RX0FLOWTHRESH_RX0FLOWTHRESH_Field is TMS570LC43xx.Byte;
   subtype RX0FLOWTHRESH_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Channel 0 Flow Control Threshold Register
   type RX0FLOWTHRESH_Register is record
      --  RX flow threshold
      RX0FLOWTHRESH : RX0FLOWTHRESH_RX0FLOWTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RX0FLOWTHRESH_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX0FLOWTHRESH_Register use record
      RX0FLOWTHRESH at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ----------------------------
   -- RX1FLOWTHRESH_Register --
   ----------------------------

   subtype RX1FLOWTHRESH_RX1FLOWTHRESH_Field is TMS570LC43xx.Byte;
   subtype RX1FLOWTHRESH_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Channel 1 Flow Control Threshold Register
   type RX1FLOWTHRESH_Register is record
      --  RX flow threshold
      RX1FLOWTHRESH : RX1FLOWTHRESH_RX1FLOWTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RX1FLOWTHRESH_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX1FLOWTHRESH_Register use record
      RX1FLOWTHRESH at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ----------------------------
   -- RX2FLOWTHRESH_Register --
   ----------------------------

   subtype RX2FLOWTHRESH_RX2FLOWTHRESH_Field is TMS570LC43xx.Byte;
   subtype RX2FLOWTHRESH_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Channel 2 Flow Control Threshold Register
   type RX2FLOWTHRESH_Register is record
      --  RX flow threshold
      RX2FLOWTHRESH : RX2FLOWTHRESH_RX2FLOWTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RX2FLOWTHRESH_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX2FLOWTHRESH_Register use record
      RX2FLOWTHRESH at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ----------------------------
   -- RX3FLOWTHRESH_Register --
   ----------------------------

   subtype RX3FLOWTHRESH_RX3FLOWTHRESH_Field is TMS570LC43xx.Byte;
   subtype RX3FLOWTHRESH_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Channel 3 Flow Control Threshold Register
   type RX3FLOWTHRESH_Register is record
      --  RX flow threshold
      RX3FLOWTHRESH : RX3FLOWTHRESH_RX3FLOWTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RX3FLOWTHRESH_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX3FLOWTHRESH_Register use record
      RX3FLOWTHRESH at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ----------------------------
   -- RX4FLOWTHRESH_Register --
   ----------------------------

   subtype RX4FLOWTHRESH_RX4FLOWTHRESH_Field is TMS570LC43xx.Byte;
   subtype RX4FLOWTHRESH_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Channel 4 Flow Control Threshold Register
   type RX4FLOWTHRESH_Register is record
      --  RX flow threshold
      RX4FLOWTHRESH : RX4FLOWTHRESH_RX4FLOWTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RX4FLOWTHRESH_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX4FLOWTHRESH_Register use record
      RX4FLOWTHRESH at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ----------------------------
   -- RX5FLOWTHRESH_Register --
   ----------------------------

   subtype RX5FLOWTHRESH_RX5FLOWTHRESH_Field is TMS570LC43xx.Byte;
   subtype RX5FLOWTHRESH_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Channel 5 Flow Control Threshold Register
   type RX5FLOWTHRESH_Register is record
      --  RX flow threshold
      RX5FLOWTHRESH : RX5FLOWTHRESH_RX5FLOWTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RX5FLOWTHRESH_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX5FLOWTHRESH_Register use record
      RX5FLOWTHRESH at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ----------------------------
   -- RX6FLOWTHRESH_Register --
   ----------------------------

   subtype RX6FLOWTHRESH_RX6FLOWTHRESH_Field is TMS570LC43xx.Byte;
   subtype RX6FLOWTHRESH_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Channel 6 Flow Control Threshold Register
   type RX6FLOWTHRESH_Register is record
      --  RX flow threshold
      RX6FLOWTHRESH : RX6FLOWTHRESH_RX6FLOWTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RX6FLOWTHRESH_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX6FLOWTHRESH_Register use record
      RX6FLOWTHRESH at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ----------------------------
   -- RX7FLOWTHRESH_Register --
   ----------------------------

   subtype RX7FLOWTHRESH_RX7FLOWTHRESH_Field is TMS570LC43xx.Byte;
   subtype RX7FLOWTHRESH_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Receive Channel 7 Flow Control Threshold Register
   type RX7FLOWTHRESH_Register is record
      --  RX flow threshold
      RX7FLOWTHRESH : RX7FLOWTHRESH_RX7FLOWTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_8_31 : RX7FLOWTHRESH_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX7FLOWTHRESH_Register use record
      RX7FLOWTHRESH at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ----------------------------
   -- RX0FREEBUFFER_Register --
   ----------------------------

   subtype RX0FREEBUFFER_RX0FREEBUF_Field is TMS570LC43xx.Short;
   subtype RX0FREEBUFFER_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Channel 0 Free Buffer Count Register
   type RX0FREEBUFFER_Register is record
      --  RX free buffer count; Write to increment
      RX0FREEBUF     : RX0FREEBUFFER_RX0FREEBUF_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RX0FREEBUFFER_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX0FREEBUFFER_Register use record
      RX0FREEBUF     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------------
   -- RX1FREEBUFFER_Register --
   ----------------------------

   subtype RX1FREEBUFFER_RX1FREEBUF_Field is TMS570LC43xx.Short;
   subtype RX1FREEBUFFER_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Channel 1 Free Buffer Count Register
   type RX1FREEBUFFER_Register is record
      --  RX free buffer count; Write to increment
      RX1FREEBUF     : RX1FREEBUFFER_RX1FREEBUF_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RX1FREEBUFFER_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX1FREEBUFFER_Register use record
      RX1FREEBUF     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------------
   -- RX2FREEBUFFER_Register --
   ----------------------------

   subtype RX2FREEBUFFER_RX2FREEBUF_Field is TMS570LC43xx.Short;
   subtype RX2FREEBUFFER_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Channel 2 Free Buffer Count Register
   type RX2FREEBUFFER_Register is record
      --  RX free buffer count; Write to increment
      RX2FREEBUF     : RX2FREEBUFFER_RX2FREEBUF_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RX2FREEBUFFER_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX2FREEBUFFER_Register use record
      RX2FREEBUF     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------------
   -- RX3FREEBUFFER_Register --
   ----------------------------

   subtype RX3FREEBUFFER_RX3FREEBUF_Field is TMS570LC43xx.Short;
   subtype RX3FREEBUFFER_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Channel 3 Free Buffer Count Register
   type RX3FREEBUFFER_Register is record
      --  RX free buffer count; Write to increment
      RX3FREEBUF     : RX3FREEBUFFER_RX3FREEBUF_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RX3FREEBUFFER_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX3FREEBUFFER_Register use record
      RX3FREEBUF     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------------
   -- RX4FREEBUFFER_Register --
   ----------------------------

   subtype RX4FREEBUFFER_RX4FREEBUF_Field is TMS570LC43xx.Short;
   subtype RX4FREEBUFFER_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Channel 4 Free Buffer Count Register
   type RX4FREEBUFFER_Register is record
      --  RX free buffer count; Write to increment
      RX4FREEBUF     : RX4FREEBUFFER_RX4FREEBUF_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RX4FREEBUFFER_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX4FREEBUFFER_Register use record
      RX4FREEBUF     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------------
   -- RX5FREEBUFFER_Register --
   ----------------------------

   subtype RX5FREEBUFFER_RX5FREEBUF_Field is TMS570LC43xx.Short;
   subtype RX5FREEBUFFER_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Channel 5 Free Buffer Count Register
   type RX5FREEBUFFER_Register is record
      --  RX free buffer count; Write to increment
      RX5FREEBUF     : RX5FREEBUFFER_RX5FREEBUF_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RX5FREEBUFFER_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX5FREEBUFFER_Register use record
      RX5FREEBUF     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------------
   -- RX6FREEBUFFER_Register --
   ----------------------------

   subtype RX6FREEBUFFER_RX6FREEBUF_Field is TMS570LC43xx.Short;
   subtype RX6FREEBUFFER_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Channel 6 Free Buffer Count Register
   type RX6FREEBUFFER_Register is record
      --  RX free buffer count; Write to increment
      RX6FREEBUF     : RX6FREEBUFFER_RX6FREEBUF_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RX6FREEBUFFER_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX6FREEBUFFER_Register use record
      RX6FREEBUF     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------------
   -- RX7FREEBUFFER_Register --
   ----------------------------

   subtype RX7FREEBUFFER_RX7FREEBUF_Field is TMS570LC43xx.Short;
   subtype RX7FREEBUFFER_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Channel 7 Free Buffer Count Register
   type RX7FREEBUFFER_Register is record
      --  RX free buffer count; Write to increment
      RX7FREEBUF     : RX7FREEBUFFER_RX7FREEBUF_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RX7FREEBUFFER_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RX7FREEBUFFER_Register use record
      RX7FREEBUF     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   -------------------------
   -- MACCONTROL_Register --
   -------------------------

   subtype MACCONTROL_FULLDUPLEX_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_LOOPBACK_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_Reserved_2_2_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_RXBUFFERFLOWEN_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_TXFLOWEN_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_GMIIEN_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_TXPACE_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_Reserved_7_7_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_Reserved_8_8_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_TXPTYPE_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_TXSHORTGAPEN_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_CMDIDLE_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_Reserved_12_12_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_RXOWNERSHIP_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_RXOFFLENBLOCK_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_RMIISPEED_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_Reserved_16_16_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_Reserved_17_17_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_Reserved_18_18_Field is TMS570LC43xx.Bit;
   subtype MACCONTROL_Reserved_19_31_Field is TMS570LC43xx.UInt13;

   --  MAC Control Register
   type MACCONTROL_Register is record
      --  Full duplex mode; gigabit mode forces full duplex mode regardless of
      --  whether the fullduplex bit isset or not
      FULLDUPLEX     : MACCONTROL_FULLDUPLEX_Field := 16#0#;
      --  Loopback mode
      LOOPBACK       : MACCONTROL_LOOPBACK_Field := 16#0#;
      --  Manufacturing test mode
      Reserved_2_2   : MACCONTROL_Reserved_2_2_Field := 16#0#;
      --  Receive buffer flow control enable
      RXBUFFERFLOWEN : MACCONTROL_RXBUFFERFLOWEN_Field := 16#0#;
      --  Transmit flow control enable
      TXFLOWEN       : MACCONTROL_TXFLOWEN_Field := 16#0#;
      --  GMII enable
      GMIIEN         : MACCONTROL_GMIIEN_Field := 16#0#;
      --  Transmit pacing enable
      TXPACE         : MACCONTROL_TXPACE_Field := 16#0#;
      --  Gigabit mode
      Reserved_7_7   : MACCONTROL_Reserved_7_7_Field := 16#0#;
      --  FIFO RAM processor read/write enable (RAM test mode)
      Reserved_8_8   : MACCONTROL_Reserved_8_8_Field := 16#0#;
      --  Transmit queue priority type
      TXPTYPE        : MACCONTROL_TXPTYPE_Field := 16#0#;
      --  Transmit short gap enable
      TXSHORTGAPEN   : MACCONTROL_TXSHORTGAPEN_Field := 16#0#;
      --  Command Idle
      CMDIDLE        : MACCONTROL_CMDIDLE_Field := 16#0#;
      --  Reserved
      Reserved_12_12 : MACCONTROL_Reserved_12_12_Field := 16#0#;
      --  Receive ownership write bit value
      RXOWNERSHIP    : MACCONTROL_RXOWNERSHIP_Field := 16#0#;
      --  Receive Offset / Length word write block
      RXOFFLENBLOCK  : MACCONTROL_RXOFFLENBLOCK_Field := 16#0#;
      --  RMII 10/100 Speed Select (IFCTLA)
      RMIISPEED      : MACCONTROL_RMIISPEED_Field := 16#0#;
      --  Interface Control B
      Reserved_16_16 : MACCONTROL_Reserved_16_16_Field := 16#0#;
      --  Gigabit force mode
      Reserved_17_17 : MACCONTROL_Reserved_17_17_Field := 16#0#;
      --  Enables external select of Dupex/Gigabit modes
      Reserved_18_18 : MACCONTROL_Reserved_18_18_Field := 16#0#;
      --  Reserved
      Reserved_19_31 : MACCONTROL_Reserved_19_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACCONTROL_Register use record
      FULLDUPLEX     at 16#0# range 0 .. 0;
      LOOPBACK       at 16#0# range 1 .. 1;
      Reserved_2_2   at 16#0# range 2 .. 2;
      RXBUFFERFLOWEN at 16#0# range 3 .. 3;
      TXFLOWEN       at 16#0# range 4 .. 4;
      GMIIEN         at 16#0# range 5 .. 5;
      TXPACE         at 16#0# range 6 .. 6;
      Reserved_7_7   at 16#0# range 7 .. 7;
      Reserved_8_8   at 16#0# range 8 .. 8;
      TXPTYPE        at 16#0# range 9 .. 9;
      TXSHORTGAPEN   at 16#0# range 10 .. 10;
      CMDIDLE        at 16#0# range 11 .. 11;
      Reserved_12_12 at 16#0# range 12 .. 12;
      RXOWNERSHIP    at 16#0# range 13 .. 13;
      RXOFFLENBLOCK  at 16#0# range 14 .. 14;
      RMIISPEED      at 16#0# range 15 .. 15;
      Reserved_16_16 at 16#0# range 16 .. 16;
      Reserved_17_17 at 16#0# range 17 .. 17;
      Reserved_18_18 at 16#0# range 18 .. 18;
      Reserved_19_31 at 16#0# range 19 .. 31;
   end record;

   ------------------------
   -- MACSTATUS_Register --
   ------------------------

   subtype MACSTATUS_TXFLOWACT_Field is TMS570LC43xx.Bit;
   subtype MACSTATUS_RXFLOWACT_Field is TMS570LC43xx.Bit;
   subtype MACSTATUS_RXQOSACT_Field is TMS570LC43xx.Bit;
   subtype MACSTATUS_Reserved_3_3_Field is TMS570LC43xx.Bit;
   subtype MACSTATUS_Reserved_4_4_Field is TMS570LC43xx.Bit;
   subtype MACSTATUS_Reserved_5_7_Field is TMS570LC43xx.UInt3;
   subtype MACSTATUS_RXERRCH_Field is TMS570LC43xx.UInt3;
   subtype MACSTATUS_Reserved_11_11_Field is TMS570LC43xx.Bit;
   subtype MACSTATUS_RXERRCODE_Field is TMS570LC43xx.UInt4;
   subtype MACSTATUS_TXERRCH_Field is TMS570LC43xx.UInt3;
   subtype MACSTATUS_Reserved_19_19_Field is TMS570LC43xx.Bit;
   subtype MACSTATUS_TXERRCODE_Field is TMS570LC43xx.UInt4;
   subtype MACSTATUS_Reserved_24_30_Field is TMS570LC43xx.UInt7;
   subtype MACSTATUS_IDLE_Field is TMS570LC43xx.Bit;

   --  MAC Status Register
   type MACSTATUS_Register is record
      --  TX flow control active
      TXFLOWACT      : MACSTATUS_TXFLOWACT_Field := 16#0#;
      --  RX flow control active
      RXFLOWACT      : MACSTATUS_RXFLOWACT_Field := 16#0#;
      --  RX Quality of Service active
      RXQOSACT       : MACSTATUS_RXQOSACT_Field := 16#0#;
      Reserved_3_3   : MACSTATUS_Reserved_3_3_Field := 16#0#;
      Reserved_4_4   : MACSTATUS_Reserved_4_4_Field := 16#0#;
      --  Reserved
      Reserved_5_7   : MACSTATUS_Reserved_5_7_Field := 16#0#;
      --  RX host error channel
      RXERRCH        : MACSTATUS_RXERRCH_Field := 16#0#;
      --  Reserved
      Reserved_11_11 : MACSTATUS_Reserved_11_11_Field := 16#0#;
      --  RX host error code
      RXERRCODE      : MACSTATUS_RXERRCODE_Field := 16#0#;
      --  TX host error channel
      TXERRCH        : MACSTATUS_TXERRCH_Field := 16#0#;
      --  Reserved
      Reserved_19_19 : MACSTATUS_Reserved_19_19_Field := 16#0#;
      --  TX host error code
      TXERRCODE      : MACSTATUS_TXERRCODE_Field := 16#0#;
      --  Reserved
      Reserved_24_30 : MACSTATUS_Reserved_24_30_Field := 16#0#;
      --  CPGMAC idle
      IDLE           : MACSTATUS_IDLE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACSTATUS_Register use record
      TXFLOWACT      at 16#0# range 0 .. 0;
      RXFLOWACT      at 16#0# range 1 .. 1;
      RXQOSACT       at 16#0# range 2 .. 2;
      Reserved_3_3   at 16#0# range 3 .. 3;
      Reserved_4_4   at 16#0# range 4 .. 4;
      Reserved_5_7   at 16#0# range 5 .. 7;
      RXERRCH        at 16#0# range 8 .. 10;
      Reserved_11_11 at 16#0# range 11 .. 11;
      RXERRCODE      at 16#0# range 12 .. 15;
      TXERRCH        at 16#0# range 16 .. 18;
      Reserved_19_19 at 16#0# range 19 .. 19;
      TXERRCODE      at 16#0# range 20 .. 23;
      Reserved_24_30 at 16#0# range 24 .. 30;
      IDLE           at 16#0# range 31 .. 31;
   end record;

   ------------------------
   -- EMCONTROL_Register --
   ------------------------

   subtype EMCONTROL_FREE_Field is TMS570LC43xx.Bit;
   subtype EMCONTROL_SOFT_Field is TMS570LC43xx.Bit;
   subtype EMCONTROL_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  Emulation Control Register
   type EMCONTROL_Register is record
      --  Emulation free bit
      FREE          : EMCONTROL_FREE_Field := 16#0#;
      --  Emulation soft bit
      SOFT          : EMCONTROL_SOFT_Field := 16#0#;
      --  Reserved
      Reserved_2_31 : EMCONTROL_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMCONTROL_Register use record
      FREE          at 16#0# range 0 .. 0;
      SOFT          at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   --------------------------
   -- FIFOCONTROL_Register --
   --------------------------

   subtype FIFOCONTROL_TXCELLTHRESH_Field is TMS570LC43xx.UInt2;
   subtype FIFOCONTROL_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  FIFO Control Register
   type FIFOCONTROL_Register is record
      --  TX FIFO cell threshold
      TXCELLTHRESH  : FIFOCONTROL_TXCELLTHRESH_Field := 16#0#;
      --  Reserved
      Reserved_2_31 : FIFOCONTROL_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for FIFOCONTROL_Register use record
      TXCELLTHRESH  at 16#0# range 0 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   ------------------------
   -- MACCONFIG_Register --
   ------------------------

   subtype MACCONFIG_MACCFIG_Field is TMS570LC43xx.Byte;
   subtype MACCONFIG_ADDRESSTYPE_Field is TMS570LC43xx.Byte;
   subtype MACCONFIG_RXCELLDEPTH_Field is TMS570LC43xx.Byte;
   subtype MACCONFIG_TXCELLDEPTH_Field is TMS570LC43xx.Byte;

   --  MAC Configuration Register
   type MACCONFIG_Register is record
      --  MAC configuration value
      MACCFIG     : MACCONFIG_MACCFIG_Field := 16#0#;
      --  Address type in the design
      ADDRESSTYPE : MACCONFIG_ADDRESSTYPE_Field := 16#0#;
      --  RX cell depth - the number of cells in the receive FIFO
      RXCELLDEPTH : MACCONFIG_RXCELLDEPTH_Field := 16#0#;
      --  TX cell depth - the number of cells in the transmit FIFO
      TXCELLDEPTH : MACCONFIG_TXCELLDEPTH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACCONFIG_Register use record
      MACCFIG     at 16#0# range 0 .. 7;
      ADDRESSTYPE at 16#0# range 8 .. 15;
      RXCELLDEPTH at 16#0# range 16 .. 23;
      TXCELLDEPTH at 16#0# range 24 .. 31;
   end record;

   ------------------------
   -- SOFTRESET_Register --
   ------------------------

   subtype SOFTRESET_SOFTRESET_Field is TMS570LC43xx.Bit;
   subtype SOFTRESET_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Soft Reset Register
   type SOFTRESET_Register is record
      --  Software reset
      SOFTRESET     : SOFTRESET_SOFTRESET_Field := 16#0#;
      --  Reserved
      Reserved_1_31 : SOFTRESET_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SOFTRESET_Register use record
      SOFTRESET     at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------------
   -- MACSRCADDRLO_Register --
   ---------------------------

   -----------------------------
   -- MACSRCADDRLO.MACSRCADDR --
   -----------------------------

   --  MACSRCADDRLO_MACSRCADDR array element
   subtype MACSRCADDRLO_MACSRCADDR_Element is TMS570LC43xx.Byte;

   --  MACSRCADDRLO_MACSRCADDR array
   type MACSRCADDRLO_MACSRCADDR_Field_Array is array (0 .. 1)
     of MACSRCADDRLO_MACSRCADDR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for MACSRCADDRLO_MACSRCADDR
   type MACSRCADDRLO_MACSRCADDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MACSRCADDR as a value
            Val : TMS570LC43xx.Short;
         when True =>
            --  MACSRCADDR as an array
            Arr : MACSRCADDRLO_MACSRCADDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MACSRCADDRLO_MACSRCADDR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype MACSRCADDRLO_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  MAC Source Address Low
   type MACSRCADDRLO_Register is record
      --  MAC source address bits 15:9 MACADDR[15:8]
      MACSRCADDR     : MACSRCADDRLO_MACSRCADDR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Reserved
      Reserved_16_31 : MACSRCADDRLO_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACSRCADDRLO_Register use record
      MACSRCADDR     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ---------------------------
   -- MACSRCADDRHI_Register --
   ---------------------------

   --  MACSRCADDRHI_MACSRCADDR array element
   subtype MACSRCADDRHI_MACSRCADDR_Element is TMS570LC43xx.Byte;

   --  MACSRCADDRHI_MACSRCADDR array
   type MACSRCADDRHI_MACSRCADDR_Field_Array is array (2 .. 5)
     of MACSRCADDRHI_MACSRCADDR_Element
     with Component_Size => 8, Size => 32;

   --  MAC Source Address High
   type MACSRCADDRHI_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MACSRCADDR as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  MACSRCADDR as an array
            Arr : MACSRCADDRHI_MACSRCADDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MACSRCADDRHI_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- BOFFTEST_Register --
   -----------------------

   subtype BOFFTEST_TXBACKOFF_Field is TMS570LC43xx.UInt10;
   subtype BOFFTEST_Reserved_10_11_Field is TMS570LC43xx.UInt2;
   subtype BOFFTEST_COLLCOUNT_Field is TMS570LC43xx.UInt4;
   subtype BOFFTEST_RNDNUM_Field is TMS570LC43xx.UInt10;
   subtype BOFFTEST_Reserved_26_31_Field is TMS570LC43xx.UInt6;

   --  Back Off Test Register
   type BOFFTEST_Register is record
      --  Backoff count
      TXBACKOFF      : BOFFTEST_TXBACKOFF_Field := 16#0#;
      --  Reserved
      Reserved_10_11 : BOFFTEST_Reserved_10_11_Field := 16#0#;
      --  Collision count
      COLLCOUNT      : BOFFTEST_COLLCOUNT_Field := 16#0#;
      --  Backoff random number generator
      RNDNUM         : BOFFTEST_RNDNUM_Field := 16#0#;
      --  Reserved
      Reserved_26_31 : BOFFTEST_Reserved_26_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BOFFTEST_Register use record
      TXBACKOFF      at 16#0# range 0 .. 9;
      Reserved_10_11 at 16#0# range 10 .. 11;
      COLLCOUNT      at 16#0# range 12 .. 15;
      RNDNUM         at 16#0# range 16 .. 25;
      Reserved_26_31 at 16#0# range 26 .. 31;
   end record;

   ------------------------
   -- TPACETEST_Register --
   ------------------------

   subtype TPACETEST_PACEVAL_Field is TMS570LC43xx.UInt5;
   subtype TPACETEST_Reserved_5_31_Field is TMS570LC43xx.UInt27;

   --  Transmit Pacing Algorithm Test Register
   type TPACETEST_Register is record
      --  Pacing register current value
      PACEVAL       : TPACETEST_PACEVAL_Field := 16#0#;
      --  Reserved
      Reserved_5_31 : TPACETEST_Reserved_5_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TPACETEST_Register use record
      PACEVAL       at 16#0# range 0 .. 4;
      Reserved_5_31 at 16#0# range 5 .. 31;
   end record;

   ----------------------
   -- RXPAUSE_Register --
   ----------------------

   subtype RXPAUSE_PAUSETIMER_Field is TMS570LC43xx.Short;
   subtype RXPAUSE_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Receive Pause Timer Register
   type RXPAUSE_Register is record
      --  RX pause timer value
      PAUSETIMER     : RXPAUSE_PAUSETIMER_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : RXPAUSE_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXPAUSE_Register use record
      PAUSETIMER     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------
   -- TXPAUSE_Register --
   ----------------------

   subtype TXPAUSE_PAUSETIMER_Field is TMS570LC43xx.Short;
   subtype TXPAUSE_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Transmit Pause Timer Register
   type TXPAUSE_Register is record
      --  TX pause timer value
      PAUSETIMER     : TXPAUSE_PAUSETIMER_Field := 16#0#;
      --  Reserved
      Reserved_16_31 : TXPAUSE_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXPAUSE_Register use record
      PAUSETIMER     at 16#0# range 0 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ------------------------
   -- MACADDRLO_Register --
   ------------------------

   -----------------------
   -- MACADDRLO.MACADDR --
   -----------------------

   --  MACADDRLO_MACADDR array element
   subtype MACADDRLO_MACADDR_Element is TMS570LC43xx.Byte;

   --  MACADDRLO_MACADDR array
   type MACADDRLO_MACADDR_Field_Array is array (0 .. 1)
     of MACADDRLO_MACADDR_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for MACADDRLO_MACADDR
   type MACADDRLO_MACADDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MACADDR as a value
            Val : TMS570LC43xx.Short;
         when True =>
            --  MACADDR as an array
            Arr : MACADDRLO_MACADDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for MACADDRLO_MACADDR_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype MACADDRLO_CHANNEL_Field is TMS570LC43xx.UInt3;
   subtype MACADDRLO_MATCHFILT_Field is TMS570LC43xx.Bit;
   subtype MACADDRLO_VALID_Field is TMS570LC43xx.Bit;
   subtype MACADDRLO_Reserved_21_31_Field is TMS570LC43xx.UInt11;

   --  MAC Address Low - From Receive Address Matching Memory Map
   type MACADDRLO_Register is record
      --  MAC addres bits 15:8 (byte 1)
      MACADDR        : MACADDRLO_MACADDR_Field :=
                        (As_Array => False, Val => 16#0#);
      CHANNEL        : MACADDRLO_CHANNEL_Field := 16#0#;
      MATCHFILT      : MACADDRLO_MATCHFILT_Field := 16#0#;
      VALID          : MACADDRLO_VALID_Field := 16#0#;
      --  Reserved
      Reserved_21_31 : MACADDRLO_Reserved_21_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACADDRLO_Register use record
      MACADDR        at 16#0# range 0 .. 15;
      CHANNEL        at 16#0# range 16 .. 18;
      MATCHFILT      at 16#0# range 19 .. 19;
      VALID          at 16#0# range 20 .. 20;
      Reserved_21_31 at 16#0# range 21 .. 31;
   end record;

   ------------------------
   -- MACADDRHI_Register --
   ------------------------

   --  MACADDRHI_MACADDR array element
   subtype MACADDRHI_MACADDR_Element is TMS570LC43xx.Byte;

   --  MACADDRHI_MACADDR array
   type MACADDRHI_MACADDR_Field_Array is array (2 .. 5)
     of MACADDRHI_MACADDR_Element
     with Component_Size => 8, Size => 32;

   --  MAC Address High - Receive Address Matching
   type MACADDRHI_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MACADDR as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  MACADDR as an array
            Arr : MACADDRHI_MACADDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for MACADDRHI_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   -----------------------
   -- MACINDEX_Register --
   -----------------------

   subtype MACINDEX_MACINDEX_Field is TMS570LC43xx.UInt5;
   subtype MACINDEX_Reserved_5_31_Field is TMS570LC43xx.UInt27;

   --  MAC Index Register
   type MACINDEX_Register is record
      --  MAC address index
      MACINDEX      : MACINDEX_MACINDEX_Field := 16#0#;
      --  Reserved
      Reserved_5_31 : MACINDEX_Reserved_5_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MACINDEX_Register use record
      MACINDEX      at 16#0# range 0 .. 4;
      Reserved_5_31 at 16#0# range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Common Platform Gigabit ethernet MAC
   type EMAC_Peripheral is record
      --  Transmit Identification and Version Register
      TXREV             : TMS570LC43xx.Word;
      --  Transmit Control Register
      TXCONTROL         : TXCONTROL_Register;
      --  Transmit Teardown Register
      TXTEARDOWN        : TXTEARDOWN_Register;
      --  RX Identification and Version Register
      RXREV             : TMS570LC43xx.Word;
      --  RX Control Register
      RXCONTROL         : RXCONTROL_Register;
      --  RX Teardown Register
      RXTEARDOWN        : RXTEARDOWN_Register;
      --  Transmit Interrupt Status Register
      TXINTSTATRAW      : TXINTSTATRAW_Register;
      --  Transmit Interrupt Status Register Masked
      TXINTSTATMASKED   : TXINTSTATMASKED_Register;
      --  Transmit Interrupt Mask Set Register
      TXINTMASKSET      : TXINTMASKSET_Register;
      --  Transmit Interrupt Clear Register
      TXINTMASKCLEAR    : TXINTMASKCLEAR_Register;
      --  MAC Input Vector Register
      MACINVECTOR       : MACINVECTOR_Register;
      --  MAC End of Interrupt Vector
      MACEOIVECTOR      : MACEOIVECTOR_Register;
      --  Receive Interrupt Status Register Raw
      RXINTSTATRAW      : RXINTSTATRAW_Register;
      --  Receive Interrupt Status Register Masked
      RXINTSTATMASKED   : RXINTSTATMASKED_Register;
      --  Receive Interrupt Mask Set Register
      RXINTMASKSET      : RXINTMASKSET_Register;
      --  Receive Interrupt Mask Clear Register
      RXINTMASKCLEAR    : RXINTMASKCLEAR_Register;
      --  MAC Interrupt Status Register Raw (Unmasked)
      MACINTSTATRAW     : MACINTSTATRAW_Register;
      --  MAC Interrupt Status Register Masked
      MACINTSTATMASKED  : MACINTSTATMASKED_Register;
      --  MAC Interrupt Mask Set Register
      MACINTMASKSET     : MACINTMASKSET_Register;
      --  MAC Interrupt Mask Clear Register
      MACINTMASKCLEAR   : MACINTMASKCLEAR_Register;
      --  Receive Multicast/Broadcast/Promiscuous Channel Enable Register
      RXMBPENABLE       : RXMBPENABLE_Register;
      --  Receive Unicast Enable Set Register
      RXUNICASTSET      : RXUNICASTSET_Register;
      --  Receive Unicast Clear Register
      RXUNICASTCLEAR    : RXUNICASTCLEAR_Register;
      --  Receive Maximum Length Register
      RXMAXLEN          : RXMAXLEN_Register;
      --  Receive Buffer Offset Register
      RXBUFFEROFFSET    : RXBUFFEROFFSET_Register;
      --  Receive Filter Low Priority Frame Threshold Register
      RXFILTERLOWTHRESH : RXFILTERLOWTHRESH_Register;
      --  Receive Channel 0 Flow Control Threshold Register
      RX0FLOWTHRESH     : RX0FLOWTHRESH_Register;
      --  Receive Channel 1 Flow Control Threshold Register
      RX1FLOWTHRESH     : RX1FLOWTHRESH_Register;
      --  Receive Channel 2 Flow Control Threshold Register
      RX2FLOWTHRESH     : RX2FLOWTHRESH_Register;
      --  Receive Channel 3 Flow Control Threshold Register
      RX3FLOWTHRESH     : RX3FLOWTHRESH_Register;
      --  Receive Channel 4 Flow Control Threshold Register
      RX4FLOWTHRESH     : RX4FLOWTHRESH_Register;
      --  Receive Channel 5 Flow Control Threshold Register
      RX5FLOWTHRESH     : RX5FLOWTHRESH_Register;
      --  Receive Channel 6 Flow Control Threshold Register
      RX6FLOWTHRESH     : RX6FLOWTHRESH_Register;
      --  Receive Channel 7 Flow Control Threshold Register
      RX7FLOWTHRESH     : RX7FLOWTHRESH_Register;
      --  Receive Channel 0 Free Buffer Count Register
      RX0FREEBUFFER     : RX0FREEBUFFER_Register;
      --  Receive Channel 1 Free Buffer Count Register
      RX1FREEBUFFER     : RX1FREEBUFFER_Register;
      --  Receive Channel 2 Free Buffer Count Register
      RX2FREEBUFFER     : RX2FREEBUFFER_Register;
      --  Receive Channel 3 Free Buffer Count Register
      RX3FREEBUFFER     : RX3FREEBUFFER_Register;
      --  Receive Channel 4 Free Buffer Count Register
      RX4FREEBUFFER     : RX4FREEBUFFER_Register;
      --  Receive Channel 5 Free Buffer Count Register
      RX5FREEBUFFER     : RX5FREEBUFFER_Register;
      --  Receive Channel 6 Free Buffer Count Register
      RX6FREEBUFFER     : RX6FREEBUFFER_Register;
      --  Receive Channel 7 Free Buffer Count Register
      RX7FREEBUFFER     : RX7FREEBUFFER_Register;
      --  MAC Control Register
      MACCONTROL        : MACCONTROL_Register;
      --  MAC Status Register
      MACSTATUS         : MACSTATUS_Register;
      --  Emulation Control Register
      EMCONTROL         : EMCONTROL_Register;
      --  FIFO Control Register
      FIFOCONTROL       : FIFOCONTROL_Register;
      --  MAC Configuration Register
      MACCONFIG         : MACCONFIG_Register;
      --  Soft Reset Register
      SOFTRESET         : SOFTRESET_Register;
      --  MAC Source Address Low
      MACSRCADDRLO      : MACSRCADDRLO_Register;
      --  MAC Source Address High
      MACSRCADDRHI      : MACSRCADDRHI_Register;
      --  MAC Hash Address Register 1
      MACHASH1          : TMS570LC43xx.Word;
      --  MAC Hash Address Register 2
      MACHASH2          : TMS570LC43xx.Word;
      --  Back Off Test Register
      BOFFTEST          : BOFFTEST_Register;
      --  Transmit Pacing Algorithm Test Register
      TPACETEST         : TPACETEST_Register;
      --  Receive Pause Timer Register
      RXPAUSE           : RXPAUSE_Register;
      --  Transmit Pause Timer Register
      TXPAUSE           : TXPAUSE_Register;
      --  Good RX Frames
      RXGOODFRAMES      : TMS570LC43xx.Word;
      --  Total number of good broadcast frames received
      RXBCASTFRAMES     : TMS570LC43xx.Word;
      --  Total number of good multicast frames received
      RXMCASTFRAMES     : TMS570LC43xx.Word;
      --  Pause RX Frames Register
      RXPAUSEFRAMES     : TMS570LC43xx.Word;
      --  Total number of frames received with CRC errors
      RXCRCERRORS       : TMS570LC43xx.Word;
      --  Total number of frames received with alignment/code errors
      RXALIGNCODEERRORS : TMS570LC43xx.Word;
      --  Total number of oversized frames received
      RXOVERSIZED       : TMS570LC43xx.Word;
      --  Total number of jabber frames received
      RXJABBER          : TMS570LC43xx.Word;
      --  Total number of undersized frames received
      RXUNDERSIZED      : TMS570LC43xx.Word;
      --  RX Frame Fragments Register
      RXFRAGMENTS       : TMS570LC43xx.Word;
      --  Filtered Receive Frames
      RXFILTERED        : TMS570LC43xx.Word;
      --  Received Frames Filtered by QOS
      RXQOSFILTERED     : TMS570LC43xx.Word;
      --  Total number of received bytes in good frames
      RXOCTETS          : TMS570LC43xx.Word;
      --  Total number of good frames transmitted
      TXGOODFRAMES      : TMS570LC43xx.Word;
      --  Broadcast TX Frames Register
      TXBCASTFRAMES     : TMS570LC43xx.Word;
      --  Multicast TX Frames Register
      TXMCASTFRAMES     : TMS570LC43xx.Word;
      --  Pause TX Frames Register
      TXPAUSEFRAMES     : TMS570LC43xx.Word;
      --  Deferred TX Frames Register
      TXDEFERRED        : TMS570LC43xx.Word;
      --  TX Collision Frames Register
      TXCOLLISION       : TMS570LC43xx.Word;
      --  TX Single Collision Frames Register
      TXSINGLECOLL      : TMS570LC43xx.Word;
      --  TX Multiple Collision Frames Register
      TXMULTICOLL       : TMS570LC43xx.Word;
      --  TX Excessive Collision Frames Register
      TXEXCESSIVECOLL   : TMS570LC43xx.Word;
      --  TX Late Collision Frames Register
      TXLATECOLL        : TMS570LC43xx.Word;
      --  TX Underrun Error Register
      TXUNDERRUN        : TMS570LC43xx.Word;
      --  TX Carrier Sense Errors Register
      TXCARRIERSENSE    : TMS570LC43xx.Word;
      --  TX Octet Frames Register
      TXOCTETS          : TMS570LC43xx.Word;
      --  Transmit and Receive 64 Octet Frames Register
      FRAME64           : TMS570LC43xx.Word;
      --  Transmit and Receive 65 to 127 Octet Frames Register
      FRAME65T127       : TMS570LC43xx.Word;
      --  Transmit and Receive 128 to 255 Octet Frames Register
      FRAME128T255      : TMS570LC43xx.Word;
      --  Transmit and Receive 256 to 511 Octet Frames Register
      FRAME256T511      : TMS570LC43xx.Word;
      --  Transmit and Receive 512 to 1023 Octet Frames Register
      FRAME512T1023     : TMS570LC43xx.Word;
      --  Transmit and Receive 1024 to 1518 Octet Frames Register
      FRAME1024TUP      : TMS570LC43xx.Word;
      --  Network Octet Frames Register
      NETOCTETS         : TMS570LC43xx.Word;
      --  Receive FIFO or DMA Start of Frame Overruns Register
      RXSOFOVERRUNS     : TMS570LC43xx.Word;
      --  Receive FIFO or DMA Middle of Frame Overruns Register
      RXMOFOVERRUNS     : TMS570LC43xx.Word;
      --  Receive DMA Start of Frame and Middle of Frame Overruns Register
      RXDMAOVERRUNS     : TMS570LC43xx.Word;
      --  MAC Address Low - From Receive Address Matching Memory Map
      MACADDRLO         : MACADDRLO_Register;
      --  MAC Address High - Receive Address Matching
      MACADDRHI         : MACADDRHI_Register;
      --  MAC Index Register
      MACINDEX          : MACINDEX_Register;
      --  Transmit Channel 0 DMA Head Descriptor Pointer Register
      TX0HDP            : TMS570LC43xx.Word;
      --  Transmit Channel 1 DMA Head Descriptor Pointer Register
      TX1HDP            : TMS570LC43xx.Word;
      --  Transmit Channel 2 DMA Head Descriptor Pointer Register
      TX2HDP            : TMS570LC43xx.Word;
      --  Transmit Channel 3 DMA Head Descriptor Pointer Register
      TX3HDP            : TMS570LC43xx.Word;
      --  Transmit Channel 4 DMA Head Descriptor Pointer Register
      TX4HDP            : TMS570LC43xx.Word;
      --  Transmit Channel 5 DMA Head Descriptor Pointer Register
      TX5HDP            : TMS570LC43xx.Word;
      --  Transmit Channel 6 DMA Head Descriptor Pointer Register
      TX6HDP            : TMS570LC43xx.Word;
      --  Transmit Channel 7 DMA Head Descriptor Pointer Register
      TX7HDP            : TMS570LC43xx.Word;
      --  Receive Channel 0 DMA Head Descriptor Pointer Register
      RX0HDP            : TMS570LC43xx.Word;
      --  Receive Channel 1 DMA Head Descriptor Pointer Register
      RX1HDP            : TMS570LC43xx.Word;
      --  Receive Channel 2 DMA Head Descriptor Pointer Register
      RX2HDP            : TMS570LC43xx.Word;
      --  Receive Channel 3 DMA Head Descriptor Pointer Register
      RX3HDP            : TMS570LC43xx.Word;
      --  Receive Channel 4 DMA Head Descriptor Pointer Register
      RX4HDP            : TMS570LC43xx.Word;
      --  Receive Channel 5 DMA Head Descriptor Pointer Register
      RX5HDP            : TMS570LC43xx.Word;
      --  Receive Channel 6 DMA Head Descriptor Pointer Register
      RX6HDP            : TMS570LC43xx.Word;
      --  Receive Channel 7 DMA Head Descriptor Pointer Register
      RX7HDP            : TMS570LC43xx.Word;
      --  Transmit Channel 0 Completion Pointer (Interrupt Ack) Register
      TX0CP             : TMS570LC43xx.Word;
      --  Transmit Channel 1 Completion Pointer Register
      TX1CP             : TMS570LC43xx.Word;
      --  Transmit Channel 2 Completion Pointer Register
      TX2CP             : TMS570LC43xx.Word;
      --  Transmit Channel 3 Completion Pointer Register
      TX3CP             : TMS570LC43xx.Word;
      --  Transmit Channel 4 Completion Pointer Register
      TX4CP             : TMS570LC43xx.Word;
      --  Transmit Channel 5 Completion Pointer Register
      TX5CP             : TMS570LC43xx.Word;
      --  Transmit Channel 6 Completion Pointer Register
      TX6CP             : TMS570LC43xx.Word;
      --  Transmit Channel 7 Completion Pointer Register
      TX7CP             : TMS570LC43xx.Word;
      --  Receive Channel 0 Completion Pointer (Interrupt Ack) Register
      RX0CP             : TMS570LC43xx.Word;
      --  Receive Channel 1 Completion Pointer (Interrupt Ack) Register
      RX1CP             : TMS570LC43xx.Word;
      --  Receive Channel 2 Completion Pointer (Interrupt Ack) Register
      RX2CP             : TMS570LC43xx.Word;
      --  Receive Channel 3 Completion Pointer (Interrupt Ack) Register
      RX3CP             : TMS570LC43xx.Word;
      --  Receive Channel 4 Completion Pointer (Interrupt Ack) Register
      RX4CP             : TMS570LC43xx.Word;
      --  Receive Channel 5 Completion Pointer (Interrupt Ack) Register
      RX5CP             : TMS570LC43xx.Word;
      --  Receive Channel 6 Completion Pointer (Interrupt Ack) Register
      RX6CP             : TMS570LC43xx.Word;
      --  Receive Channel 7 Completion Pointer (Interrupt Ack) Register
      RX7CP             : TMS570LC43xx.Word;
   end record
     with Volatile;

   for EMAC_Peripheral use record
      TXREV             at 16#0# range 0 .. 31;
      TXCONTROL         at 16#4# range 0 .. 31;
      TXTEARDOWN        at 16#8# range 0 .. 31;
      RXREV             at 16#10# range 0 .. 31;
      RXCONTROL         at 16#14# range 0 .. 31;
      RXTEARDOWN        at 16#18# range 0 .. 31;
      TXINTSTATRAW      at 16#80# range 0 .. 31;
      TXINTSTATMASKED   at 16#84# range 0 .. 31;
      TXINTMASKSET      at 16#88# range 0 .. 31;
      TXINTMASKCLEAR    at 16#8C# range 0 .. 31;
      MACINVECTOR       at 16#90# range 0 .. 31;
      MACEOIVECTOR      at 16#94# range 0 .. 31;
      RXINTSTATRAW      at 16#A0# range 0 .. 31;
      RXINTSTATMASKED   at 16#A4# range 0 .. 31;
      RXINTMASKSET      at 16#A8# range 0 .. 31;
      RXINTMASKCLEAR    at 16#AC# range 0 .. 31;
      MACINTSTATRAW     at 16#B0# range 0 .. 31;
      MACINTSTATMASKED  at 16#B4# range 0 .. 31;
      MACINTMASKSET     at 16#B8# range 0 .. 31;
      MACINTMASKCLEAR   at 16#BC# range 0 .. 31;
      RXMBPENABLE       at 16#100# range 0 .. 31;
      RXUNICASTSET      at 16#104# range 0 .. 31;
      RXUNICASTCLEAR    at 16#108# range 0 .. 31;
      RXMAXLEN          at 16#10C# range 0 .. 31;
      RXBUFFEROFFSET    at 16#110# range 0 .. 31;
      RXFILTERLOWTHRESH at 16#114# range 0 .. 31;
      RX0FLOWTHRESH     at 16#120# range 0 .. 31;
      RX1FLOWTHRESH     at 16#124# range 0 .. 31;
      RX2FLOWTHRESH     at 16#128# range 0 .. 31;
      RX3FLOWTHRESH     at 16#12C# range 0 .. 31;
      RX4FLOWTHRESH     at 16#130# range 0 .. 31;
      RX5FLOWTHRESH     at 16#134# range 0 .. 31;
      RX6FLOWTHRESH     at 16#138# range 0 .. 31;
      RX7FLOWTHRESH     at 16#13C# range 0 .. 31;
      RX0FREEBUFFER     at 16#140# range 0 .. 31;
      RX1FREEBUFFER     at 16#144# range 0 .. 31;
      RX2FREEBUFFER     at 16#148# range 0 .. 31;
      RX3FREEBUFFER     at 16#14C# range 0 .. 31;
      RX4FREEBUFFER     at 16#150# range 0 .. 31;
      RX5FREEBUFFER     at 16#154# range 0 .. 31;
      RX6FREEBUFFER     at 16#158# range 0 .. 31;
      RX7FREEBUFFER     at 16#15C# range 0 .. 31;
      MACCONTROL        at 16#160# range 0 .. 31;
      MACSTATUS         at 16#164# range 0 .. 31;
      EMCONTROL         at 16#168# range 0 .. 31;
      FIFOCONTROL       at 16#16C# range 0 .. 31;
      MACCONFIG         at 16#170# range 0 .. 31;
      SOFTRESET         at 16#174# range 0 .. 31;
      MACSRCADDRLO      at 16#1D0# range 0 .. 31;
      MACSRCADDRHI      at 16#1D4# range 0 .. 31;
      MACHASH1          at 16#1D8# range 0 .. 31;
      MACHASH2          at 16#1DC# range 0 .. 31;
      BOFFTEST          at 16#1E0# range 0 .. 31;
      TPACETEST         at 16#1E4# range 0 .. 31;
      RXPAUSE           at 16#1E8# range 0 .. 31;
      TXPAUSE           at 16#1EC# range 0 .. 31;
      RXGOODFRAMES      at 16#200# range 0 .. 31;
      RXBCASTFRAMES     at 16#204# range 0 .. 31;
      RXMCASTFRAMES     at 16#208# range 0 .. 31;
      RXPAUSEFRAMES     at 16#20C# range 0 .. 31;
      RXCRCERRORS       at 16#210# range 0 .. 31;
      RXALIGNCODEERRORS at 16#214# range 0 .. 31;
      RXOVERSIZED       at 16#218# range 0 .. 31;
      RXJABBER          at 16#21C# range 0 .. 31;
      RXUNDERSIZED      at 16#220# range 0 .. 31;
      RXFRAGMENTS       at 16#224# range 0 .. 31;
      RXFILTERED        at 16#228# range 0 .. 31;
      RXQOSFILTERED     at 16#22C# range 0 .. 31;
      RXOCTETS          at 16#230# range 0 .. 31;
      TXGOODFRAMES      at 16#234# range 0 .. 31;
      TXBCASTFRAMES     at 16#238# range 0 .. 31;
      TXMCASTFRAMES     at 16#23C# range 0 .. 31;
      TXPAUSEFRAMES     at 16#240# range 0 .. 31;
      TXDEFERRED        at 16#244# range 0 .. 31;
      TXCOLLISION       at 16#248# range 0 .. 31;
      TXSINGLECOLL      at 16#24C# range 0 .. 31;
      TXMULTICOLL       at 16#250# range 0 .. 31;
      TXEXCESSIVECOLL   at 16#254# range 0 .. 31;
      TXLATECOLL        at 16#258# range 0 .. 31;
      TXUNDERRUN        at 16#25C# range 0 .. 31;
      TXCARRIERSENSE    at 16#260# range 0 .. 31;
      TXOCTETS          at 16#264# range 0 .. 31;
      FRAME64           at 16#268# range 0 .. 31;
      FRAME65T127       at 16#26C# range 0 .. 31;
      FRAME128T255      at 16#270# range 0 .. 31;
      FRAME256T511      at 16#274# range 0 .. 31;
      FRAME512T1023     at 16#278# range 0 .. 31;
      FRAME1024TUP      at 16#27C# range 0 .. 31;
      NETOCTETS         at 16#280# range 0 .. 31;
      RXSOFOVERRUNS     at 16#284# range 0 .. 31;
      RXMOFOVERRUNS     at 16#288# range 0 .. 31;
      RXDMAOVERRUNS     at 16#28C# range 0 .. 31;
      MACADDRLO         at 16#500# range 0 .. 31;
      MACADDRHI         at 16#504# range 0 .. 31;
      MACINDEX          at 16#508# range 0 .. 31;
      TX0HDP            at 16#600# range 0 .. 31;
      TX1HDP            at 16#604# range 0 .. 31;
      TX2HDP            at 16#608# range 0 .. 31;
      TX3HDP            at 16#60C# range 0 .. 31;
      TX4HDP            at 16#610# range 0 .. 31;
      TX5HDP            at 16#614# range 0 .. 31;
      TX6HDP            at 16#618# range 0 .. 31;
      TX7HDP            at 16#61C# range 0 .. 31;
      RX0HDP            at 16#620# range 0 .. 31;
      RX1HDP            at 16#624# range 0 .. 31;
      RX2HDP            at 16#628# range 0 .. 31;
      RX3HDP            at 16#62C# range 0 .. 31;
      RX4HDP            at 16#630# range 0 .. 31;
      RX5HDP            at 16#634# range 0 .. 31;
      RX6HDP            at 16#638# range 0 .. 31;
      RX7HDP            at 16#63C# range 0 .. 31;
      TX0CP             at 16#640# range 0 .. 31;
      TX1CP             at 16#644# range 0 .. 31;
      TX2CP             at 16#648# range 0 .. 31;
      TX3CP             at 16#64C# range 0 .. 31;
      TX4CP             at 16#650# range 0 .. 31;
      TX5CP             at 16#654# range 0 .. 31;
      TX6CP             at 16#658# range 0 .. 31;
      TX7CP             at 16#65C# range 0 .. 31;
      RX0CP             at 16#660# range 0 .. 31;
      RX1CP             at 16#664# range 0 .. 31;
      RX2CP             at 16#668# range 0 .. 31;
      RX3CP             at 16#66C# range 0 .. 31;
      RX4CP             at 16#670# range 0 .. 31;
      RX5CP             at 16#674# range 0 .. 31;
      RX6CP             at 16#678# range 0 .. 31;
      RX7CP             at 16#67C# range 0 .. 31;
   end record;

   --  Common Platform Gigabit ethernet MAC
   EMAC_Periph : aliased EMAC_Peripheral
     with Import, Address => EMAC_Base;

end TMS570LC43xx.EMAC;
