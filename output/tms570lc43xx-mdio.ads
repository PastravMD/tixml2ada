--  This spec has been automatically generated from hercules_mdio_spec_1.2.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.MDIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- CONTROL_Register --
   ----------------------

   subtype CONTROL_CLKDIV_Field is TMS570LC43xx.Short;
   subtype CONTROL_Reserved_16_16_Field is TMS570LC43xx.Bit;
   subtype CONTROL_Reserved_17_17_Field is TMS570LC43xx.Bit;
   subtype CONTROL_FAULTENB_Field is TMS570LC43xx.Bit;
   subtype CONTROL_FAULT_Field is TMS570LC43xx.Bit;
   subtype CONTROL_PREAMBLE_Field is TMS570LC43xx.Bit;
   subtype CONTROL_Reserved_21_23_Field is TMS570LC43xx.UInt3;
   subtype CONTROL_HIGHEST_USER_CHANNEL_Field is TMS570LC43xx.UInt5;
   subtype CONTROL_Reserved_29_29_Field is TMS570LC43xx.Bit;
   subtype CONTROL_ENABLE_Field is TMS570LC43xx.Bit;
   subtype CONTROL_IDLE_Field is TMS570LC43xx.Bit;

   --  MDIO Control Register
   type CONTROL_Register is record
      --  Clock divider for MDCLK. MDCLK = CLK/(CLKDIV+1)
      CLKDIV               : CONTROL_CLKDIV_Field := 16#0#;
      Reserved_16_16       : CONTROL_Reserved_16_16_Field := 16#0#;
      --  Interrupt test enable for userint and linkint
      Reserved_17_17       : CONTROL_Reserved_17_17_Field := 16#0#;
      --  Fault detect enable
      FAULTENB             : CONTROL_FAULTENB_Field := 16#0#;
      --  Fault indicator; Write to clear
      FAULT                : CONTROL_FAULT_Field := 16#0#;
      --  Preamble Disable
      PREAMBLE             : CONTROL_PREAMBLE_Field := 16#0#;
      Reserved_21_23       : CONTROL_Reserved_21_23_Field := 16#0#;
      --  Highest user access channel that is available in module.
      HIGHEST_USER_CHANNEL : CONTROL_HIGHEST_USER_CHANNEL_Field := 16#0#;
      Reserved_29_29       : CONTROL_Reserved_29_29_Field := 16#0#;
      --  Enable state machine; must be last bit written to register
      ENABLE               : CONTROL_ENABLE_Field := 16#0#;
      --  Sets MDIO state machine to idle
      IDLE                 : CONTROL_IDLE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONTROL_Register use record
      CLKDIV               at 16#0# range 0 .. 15;
      Reserved_16_16       at 16#0# range 16 .. 16;
      Reserved_17_17       at 16#0# range 17 .. 17;
      FAULTENB             at 16#0# range 18 .. 18;
      FAULT                at 16#0# range 19 .. 19;
      PREAMBLE             at 16#0# range 20 .. 20;
      Reserved_21_23       at 16#0# range 21 .. 23;
      HIGHEST_USER_CHANNEL at 16#0# range 24 .. 28;
      Reserved_29_29       at 16#0# range 29 .. 29;
      ENABLE               at 16#0# range 30 .. 30;
      IDLE                 at 16#0# range 31 .. 31;
   end record;

   -------------------------
   -- LINKINTRAW_Register --
   -------------------------

   subtype LINKINTRAW_USERPHY0_Field is TMS570LC43xx.Bit;
   subtype LINKINTRAW_USERPHY1_Field is TMS570LC43xx.Bit;
   subtype LINKINTRAW_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MDIO Link Interrupt Raw Register
   type LINKINTRAW_Register is record
      --  MDIO Link change event, raw value; write to clear.
      USERPHY0      : LINKINTRAW_USERPHY0_Field := 16#0#;
      --  MDIO Link change event, raw value; write to clear.
      USERPHY1      : LINKINTRAW_USERPHY1_Field := 16#0#;
      Reserved_2_31 : LINKINTRAW_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LINKINTRAW_Register use record
      USERPHY0      at 16#0# range 0 .. 0;
      USERPHY1      at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   ----------------------------
   -- LINKINTMASKED_Register --
   ----------------------------

   subtype LINKINTMASKED_USERPHY0_Field is TMS570LC43xx.Bit;
   subtype LINKINTMASKED_USERPHY1_Field is TMS570LC43xx.Bit;
   subtype LINKINTMASKED_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MDIO Link Interrupt Masked Register
   type LINKINTMASKED_Register is record
      --  MDIO Link change event, masked value; write to clear.
      USERPHY0      : LINKINTMASKED_USERPHY0_Field := 16#0#;
      --  MDIO Link change event, masked value; write to clear.
      USERPHY1      : LINKINTMASKED_USERPHY1_Field := 16#0#;
      Reserved_2_31 : LINKINTMASKED_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LINKINTMASKED_Register use record
      USERPHY0      at 16#0# range 0 .. 0;
      USERPHY1      at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   -------------------------
   -- USERINTRAW_Register --
   -------------------------

   subtype USERINTRAW_USERACCESS0_Field is TMS570LC43xx.Bit;
   subtype USERINTRAW_USERACCESS1_Field is TMS570LC43xx.Bit;
   subtype USERINTRAW_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MDIO User Interrupt Raw Register
   type USERINTRAW_Register is record
      --  MDIO user command complete event, raw value; write to clear.
      USERACCESS0   : USERINTRAW_USERACCESS0_Field := 16#0#;
      --  MDIO user command complete event, raw value; write to clear.
      USERACCESS1   : USERINTRAW_USERACCESS1_Field := 16#0#;
      Reserved_2_31 : USERINTRAW_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USERINTRAW_Register use record
      USERACCESS0   at 16#0# range 0 .. 0;
      USERACCESS1   at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   ----------------------------
   -- USERINTMASKED_Register --
   ----------------------------

   subtype USERINTMASKED_USERACCESS0_Field is TMS570LC43xx.Bit;
   subtype USERINTMASKED_USERACCESS1_Field is TMS570LC43xx.Bit;
   subtype USERINTMASKED_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MDIO User Interrupt Masked Register
   type USERINTMASKED_Register is record
      --  MDIO user command complete event, masked value; write to clear.
      USERACCESS0   : USERINTMASKED_USERACCESS0_Field := 16#0#;
      --  MDIO user command complete event, masked value; write to clear.
      USERACCESS1   : USERINTMASKED_USERACCESS1_Field := 16#0#;
      Reserved_2_31 : USERINTMASKED_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USERINTMASKED_Register use record
      USERACCESS0   at 16#0# range 0 .. 0;
      USERACCESS1   at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   -----------------------------
   -- USERINTMASKSET_Register --
   -----------------------------

   subtype USERINTMASKSET_USERACCESS0_Field is TMS570LC43xx.Bit;
   subtype USERINTMASKSET_USERACCESS1_Field is TMS570LC43xx.Bit;
   subtype USERINTMASKSET_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MDIO User Interrupt Mask Set Register
   type USERINTMASKSET_Register is record
      --  MDIO User interrupt mask set; write to set
      USERACCESS0   : USERINTMASKSET_USERACCESS0_Field := 16#0#;
      --  MDIO User interrupt mask set; write to set
      USERACCESS1   : USERINTMASKSET_USERACCESS1_Field := 16#0#;
      Reserved_2_31 : USERINTMASKSET_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USERINTMASKSET_Register use record
      USERACCESS0   at 16#0# range 0 .. 0;
      USERACCESS1   at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   -------------------------------
   -- USERINTMASKCLEAR_Register --
   -------------------------------

   subtype USERINTMASKCLEAR_USERACCESS0_Field is TMS570LC43xx.Bit;
   subtype USERINTMASKCLEAR_USERACCESS1_Field is TMS570LC43xx.Bit;
   subtype USERINTMASKCLEAR_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  MDIO User Interrupt Mask Clear Register
   type USERINTMASKCLEAR_Register is record
      --  MDIO User interrupt mask set; write to set
      USERACCESS0   : USERINTMASKCLEAR_USERACCESS0_Field := 16#0#;
      --  MDIO User interrupt mask set; write to set
      USERACCESS1   : USERINTMASKCLEAR_USERACCESS1_Field := 16#0#;
      Reserved_2_31 : USERINTMASKCLEAR_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USERINTMASKCLEAR_Register use record
      USERACCESS0   at 16#0# range 0 .. 0;
      USERACCESS1   at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   -------------------------
   -- USERACCESS_Register --
   -------------------------

   subtype USERACCESS0_DATA_Field is TMS570LC43xx.Short;
   subtype USERACCESS0_PHYADR_Field is TMS570LC43xx.UInt5;
   subtype USERACCESS0_REGADR_Field is TMS570LC43xx.UInt5;
   subtype USERACCESS0_Reserved_26_28_Field is TMS570LC43xx.UInt3;
   subtype USERACCESS0_ACK_Field is TMS570LC43xx.Bit;
   subtype USERACCESS0_WRITE_Field is TMS570LC43xx.Bit;
   subtype USERACCESS0_GO_Field is TMS570LC43xx.Bit;

   --  MDIO User Access Register 0
   type USERACCESS_Register is record
      --  User Data. Data to be read or written to PHY register
      DATA           : USERACCESS0_DATA_Field := 16#0#;
      --  PHY Address. Specifies PHY to be accessed for transaction
      PHYADR         : USERACCESS0_PHYADR_Field := 16#0#;
      --  Register Address. Specifies PHY register to be accessed for
      --  transaction
      REGADR         : USERACCESS0_REGADR_Field := 16#0#;
      Reserved_26_28 : USERACCESS0_Reserved_26_28_Field := 16#0#;
      --  PHY ACK of read transaction
      ACK            : USERACCESS0_ACK_Field := 16#0#;
      --  Write Enable
      WRITE          : USERACCESS0_WRITE_Field := 16#0#;
      --  Writing a 1 causes MDIO state machine to start an MDIO access
      --  sequence
      GO             : USERACCESS0_GO_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USERACCESS_Register use record
      DATA           at 16#0# range 0 .. 15;
      PHYADR         at 16#0# range 16 .. 20;
      REGADR         at 16#0# range 21 .. 25;
      Reserved_26_28 at 16#0# range 26 .. 28;
      ACK            at 16#0# range 29 .. 29;
      WRITE          at 16#0# range 30 .. 30;
      GO             at 16#0# range 31 .. 31;
   end record;

   -------------------------
   -- USERPHYSEL_Register --
   -------------------------

   subtype USERPHYSEL0_PHYADRMON_Field is TMS570LC43xx.UInt5;
   subtype USERPHYSEL0_Reserved_5_5_Field is TMS570LC43xx.Bit;
   subtype USERPHYSEL0_LINKINTENB_Field is TMS570LC43xx.Bit;
   subtype USERPHYSEL0_LINKSEL_Field is TMS570LC43xx.Bit;
   subtype USERPHYSEL0_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  MDIO User PHY Select REG0
   type USERPHYSEL_Register is record
      --  Register Address. Specifies PHY register to be accessed for
      --  transaction
      PHYADRMON     : USERPHYSEL0_PHYADRMON_Field := 16#0#;
      Reserved_5_5  : USERPHYSEL0_Reserved_5_5_Field := 16#0#;
      --  Link change interrupt enable.
      LINKINTENB    : USERPHYSEL0_LINKINTENB_Field := 16#0#;
      --  Link status determination; 1 to determine link status using MLINK
      --  pin.
      LINKSEL       : USERPHYSEL0_LINKSEL_Field := 16#0#;
      Reserved_8_31 : USERPHYSEL0_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for USERPHYSEL_Register use record
      PHYADRMON     at 16#0# range 0 .. 4;
      Reserved_5_5  at 16#0# range 5 .. 5;
      LINKINTENB    at 16#0# range 6 .. 6;
      LINKSEL       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  VBUS MII Management Interface
   type MDIO_Peripheral is record
      --  MDIO Version Register
      REV              : TMS570LC43xx.Word;
      --  MDIO Control Register
      CONTROL          : CONTROL_Register;
      --  MDIO Alive Register
      ALIVE            : TMS570LC43xx.Word;
      --  MDIO Link Register
      LINK             : TMS570LC43xx.Word;
      --  MDIO Link Interrupt Raw Register
      LINKINTRAW       : LINKINTRAW_Register;
      --  MDIO Link Interrupt Masked Register
      LINKINTMASKED    : LINKINTMASKED_Register;
      --  MDIO User Interrupt Raw Register
      USERINTRAW       : USERINTRAW_Register;
      --  MDIO User Interrupt Masked Register
      USERINTMASKED    : USERINTMASKED_Register;
      --  MDIO User Interrupt Mask Set Register
      USERINTMASKSET   : USERINTMASKSET_Register;
      --  MDIO User Interrupt Mask Clear Register
      USERINTMASKCLEAR : USERINTMASKCLEAR_Register;
      --  MDIO User Access Register 0
      USERACCESS0      : USERACCESS_Register;
      --  MDIO User PHY Select REG0
      USERPHYSEL0      : USERPHYSEL_Register;
      --  MDIO User Access Register 1
      USERACCESS1      : USERACCESS_Register;
      --  MDIO User PHY Select REG1
      USERPHYSEL1      : USERPHYSEL_Register;
   end record
     with Volatile;

   for MDIO_Peripheral use record
      REV              at 16#0# range 0 .. 31;
      CONTROL          at 16#4# range 0 .. 31;
      ALIVE            at 16#8# range 0 .. 31;
      LINK             at 16#C# range 0 .. 31;
      LINKINTRAW       at 16#10# range 0 .. 31;
      LINKINTMASKED    at 16#14# range 0 .. 31;
      USERINTRAW       at 16#20# range 0 .. 31;
      USERINTMASKED    at 16#24# range 0 .. 31;
      USERINTMASKSET   at 16#28# range 0 .. 31;
      USERINTMASKCLEAR at 16#2C# range 0 .. 31;
      USERACCESS0      at 16#80# range 0 .. 31;
      USERPHYSEL0      at 16#84# range 0 .. 31;
      USERACCESS1      at 16#88# range 0 .. 31;
      USERPHYSEL1      at 16#8C# range 0 .. 31;
   end record;

   --  VBUS MII Management Interface
   MDIO_Periph : aliased MDIO_Peripheral
     with Import, Address => MDIO_Base;

end TMS570LC43xx.MDIO;
