--  This spec has been automatically generated from hercules_iomm_tms570lc43xx.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.IOMM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- Rev_Register --
   ------------------

   subtype Rev_RevMinor_Field is TMS570LC43xx.UInt6;
   subtype Rev_RevCustom_Field is TMS570LC43xx.UInt2;
   subtype Rev_RevMajor_Field is TMS570LC43xx.UInt3;
   subtype Rev_RevRtl_Field is TMS570LC43xx.UInt5;
   subtype Rev_RevModule_Field is TMS570LC43xx.UInt12;
   subtype Rev_Reserved_28_29_Field is TMS570LC43xx.UInt2;
   subtype Rev_RevScheme_Field is TMS570LC43xx.UInt2;

   --  Module Revision Register
   type Rev_Register is record
      --  Minor Revision
      RevMinor       : Rev_RevMinor_Field := 16#0#;
      --  Custom Revision
      RevCustom      : Rev_RevCustom_Field := 16#0#;
      --  Major Revision
      RevMajor       : Rev_RevMajor_Field := 16#0#;
      --  Rtl Revision
      RevRtl         : Rev_RevRtl_Field := 16#0#;
      --  Module Id
      RevModule      : Rev_RevModule_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_28_29 : Rev_Reserved_28_29_Field := 16#0#;
      --  Revision Scheme
      RevScheme      : Rev_RevScheme_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Rev_Register use record
      RevMinor       at 16#0# range 0 .. 5;
      RevCustom      at 16#0# range 6 .. 7;
      RevMajor       at 16#0# range 8 .. 10;
      RevRtl         at 16#0# range 11 .. 15;
      RevModule      at 16#0# range 16 .. 27;
      Reserved_28_29 at 16#0# range 28 .. 29;
      RevScheme      at 16#0# range 30 .. 31;
   end record;

   --------------------------
   -- BootConfig0_Register --
   --------------------------

   subtype BootConfig0_Endian_Field is TMS570LC43xx.Bit;
   subtype BootConfig0_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Device endianness
   type BootConfig0_Register is record
      --  Device Endianness
      Endian        : BootConfig0_Endian_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : BootConfig0_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BootConfig0_Register use record
      Endian        at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ----------------------------
   -- ErrRawStatSet_Register --
   ----------------------------

   subtype ErrRawStatSet_ProtErr_Field is TMS570LC43xx.Bit;
   subtype ErrRawStatSet_AddrErr_Field is TMS570LC43xx.Bit;
   subtype ErrRawStatSet_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  Error Raw Status/Set Register
   type ErrRawStatSet_Register is record
      --  A Protection Error occurs when any control register inside the IOMM
      --  is written in the CPU's user mode of operation.
      ProtErr       : ErrRawStatSet_ProtErr_Field := 16#0#;
      --  An Addressing Error occurs when an unimplemented location inside the
      --  IOMM register frame is accessed.
      AddrErr       : ErrRawStatSet_AddrErr_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_2_31 : ErrRawStatSet_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ErrRawStatSet_Register use record
      ProtErr       at 16#0# range 0 .. 0;
      AddrErr       at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   ----------------------------
   -- ErrEnaStatClr_Register --
   ----------------------------

   subtype ErrEnaStatClr_EnProtErr_Field is TMS570LC43xx.Bit;
   subtype ErrEnaStatClr_EnAddrErr_Field is TMS570LC43xx.Bit;
   subtype ErrEnaStatClr_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  Error Enabled Status/Clear Register
   type ErrEnaStatClr_Register is record
      --  Protection Error Signaling Enable and Status Clear
      EnProtErr     : ErrEnaStatClr_EnProtErr_Field := 16#0#;
      --  Addressing Error Signaling Enable and Status Clear
      EnAddrErr     : ErrEnaStatClr_EnAddrErr_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_2_31 : ErrEnaStatClr_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ErrEnaStatClr_Register use record
      EnProtErr     at 16#0# range 0 .. 0;
      EnAddrErr     at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   ---------------------
   -- ErrEna_Register --
   ---------------------

   subtype ErrEna_ProtErrEn_Field is TMS570LC43xx.Bit;
   subtype ErrEna_AddrErrEn_Field is TMS570LC43xx.Bit;
   subtype ErrEna_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  Error Enable Register
   type ErrEna_Register is record
      --  Protection Error Signaling Enable
      ProtErrEn     : ErrEna_ProtErrEn_Field := 16#0#;
      --  Addressing Error Signaling Enable
      AddrErrEn     : ErrEna_AddrErrEn_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_2_31 : ErrEna_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ErrEna_Register use record
      ProtErrEn     at 16#0# range 0 .. 0;
      AddrErrEn     at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   ------------------------
   -- ErrEnaClr_Register --
   ------------------------

   subtype ErrEnaClr_ProtErrEnClr_Field is TMS570LC43xx.Bit;
   subtype ErrEnaClr_AddrErrEnClr_Field is TMS570LC43xx.Bit;
   subtype ErrEnaClr_Reserved_2_31_Field is TMS570LC43xx.UInt30;

   --  Error Enable Clear Register
   type ErrEnaClr_Register is record
      --  Protection Error Signaling Enable Clear
      ProtErrEnClr  : ErrEnaClr_ProtErrEnClr_Field := 16#0#;
      --  Addressing Error Signaling Enable Clear
      AddrErrEnClr  : ErrEnaClr_AddrErrEnClr_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_2_31 : ErrEnaClr_Reserved_2_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ErrEnaClr_Register use record
      ProtErrEnClr  at 16#0# range 0 .. 0;
      AddrErrEnClr  at 16#0# range 1 .. 1;
      Reserved_2_31 at 16#0# range 2 .. 31;
   end record;

   -------------------------
   -- Fault_Addr_Register --
   -------------------------

   subtype Fault_Addr_FaultAddr_Field is TMS570LC43xx.UInt9;
   subtype Fault_Addr_Reserved_9_31_Field is TMS570LC43xx.UInt23;

   --  Fault Address Register
   type Fault_Addr_Register is record
      --  The fault address offset in case of an address or protection error.
      FaultAddr     : Fault_Addr_FaultAddr_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_9_31 : Fault_Addr_Reserved_9_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Fault_Addr_Register use record
      FaultAddr     at 16#0# range 0 .. 8;
      Reserved_9_31 at 16#0# range 9 .. 31;
   end record;

   -------------------------
   -- Fault_Stat_Register --
   -------------------------

   subtype Fault_Stat_FaultType_Field is TMS570LC43xx.UInt6;
   subtype Fault_Stat_Reserved_6_6_Field is TMS570LC43xx.Bit;
   subtype Fault_Stat_FaultNs_Field is TMS570LC43xx.Bit;
   subtype Fault_Stat_Reserved_8_8_Field is TMS570LC43xx.Bit;
   subtype Fault_Stat_FaultPrivId_Field is TMS570LC43xx.UInt4;
   subtype Fault_Stat_Reserved_13_15_Field is TMS570LC43xx.UInt3;
   subtype Fault_Stat_FaultMstId_Field is TMS570LC43xx.Byte;
   subtype Fault_Stat_FaultId_Field is TMS570LC43xx.UInt4;
   subtype Fault_Stat_Reserved_28_31_Field is TMS570LC43xx.UInt4;

   --  Fault Status Register
   type Fault_Stat_Register is record
      --  Type of fault detected
      FaultType      : Fault_Stat_FaultType_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_6   : Fault_Stat_Reserved_6_6_Field := 16#0#;
      --  Fault: Non-secure access detected
      FaultNs        : Fault_Stat_FaultNs_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_8   : Fault_Stat_Reserved_8_8_Field := 16#0#;
      --  Faulting Privilege ID
      FaultPrivId    : Fault_Stat_FaultPrivId_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_13_15 : Fault_Stat_Reserved_13_15_Field := 16#0#;
      --  ID of Master that initiated the faulting transaction
      FaultMstId     : Fault_Stat_FaultMstId_Field := 16#0#;
      --  Faulting Transaction ID
      FaultId        : Fault_Stat_FaultId_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_28_31 : Fault_Stat_Reserved_28_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Fault_Stat_Register use record
      FaultType      at 16#0# range 0 .. 5;
      Reserved_6_6   at 16#0# range 6 .. 6;
      FaultNs        at 16#0# range 7 .. 7;
      Reserved_8_8   at 16#0# range 8 .. 8;
      FaultPrivId    at 16#0# range 9 .. 12;
      Reserved_13_15 at 16#0# range 13 .. 15;
      FaultMstId     at 16#0# range 16 .. 23;
      FaultId        at 16#0# range 24 .. 27;
      Reserved_28_31 at 16#0# range 28 .. 31;
   end record;

   ------------------------
   -- Fault_Clr_Register --
   ------------------------

   subtype Fault_Clr_FaultClear_Field is TMS570LC43xx.Bit;
   subtype Fault_Clr_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Fault Clear Register
   type Fault_Clr_Register is record
      --  Fault Clear
      FaultClear    : Fault_Clr_FaultClear_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : Fault_Clr_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Fault_Clr_Register use record
      FaultClear    at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  IOMM Multiplexing Control Module for TMS570LC44xx
   type IOMM_Peripheral is record
      --  Module Revision Register
      Rev           : Rev_Register;
      --  Die Id Register 0
      DieId0        : TMS570LC43xx.Word;
      --  Die Id Register 1
      DieId1        : TMS570LC43xx.Word;
      --  Die Id Register 2
      DieId2        : TMS570LC43xx.Word;
      --  Die Id Register 3
      DieId3        : TMS570LC43xx.Word;
      --  Device Id Register 0
      DevId0        : TMS570LC43xx.Word;
      --  Device Id Register 1
      DevId1        : TMS570LC43xx.Word;
      --  Device endianness
      BootConfig0   : BootConfig0_Register;
      --  Kicker Register 0
      Kick0         : TMS570LC43xx.Word;
      --  Kicker Register 1
      Kick1         : TMS570LC43xx.Word;
      --  Error Raw Status/Set Register
      ErrRawStatSet : ErrRawStatSet_Register;
      --  Error Enabled Status/Clear Register
      ErrEnaStatClr : ErrEnaStatClr_Register;
      --  Error Enable Register
      ErrEna        : ErrEna_Register;
      --  Error Enable Clear Register
      ErrEnaClr     : ErrEnaClr_Register;
      --  Fault Address Register
      Fault_Addr    : Fault_Addr_Register;
      --  Fault Status Register
      Fault_Stat    : Fault_Stat_Register;
      --  Fault Clear Register
      Fault_Clr     : Fault_Clr_Register;
      --  Pin Multiplexing Control Register 0
      PINMMR0       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 1
      PINMMR1       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 2
      PINMMR2       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 3
      PINMMR3       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 4
      PINMMR4       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 5
      PINMMR5       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 6
      PINMMR6       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 7
      PINMMR7       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 8
      PINMMR8       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 9
      PINMMR9       : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 10
      PINMMR10      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 11
      PINMMR11      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 12
      PINMMR12      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 13
      PINMMR13      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 14
      PINMMR14      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 15
      PINMMR15      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 16
      PINMMR16      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 17
      PINMMR17      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 18
      PINMMR18      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 19
      PINMMR19      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 20
      PINMMR20      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 21
      PINMMR21      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 22
      PINMMR22      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 23
      PINMMR23      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 24
      PINMMR24      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 25
      PINMMR25      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 26
      PINMMR26      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 27
      PINMMR27      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 28
      PINMMR28      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 29
      PINMMR29      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 30
      PINMMR30      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 31
      PINMMR31      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 32
      PINMMR32      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 33
      PINMMR33      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 34
      PINMMR34      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 35
      PINMMR35      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 36
      PINMMR36      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 37
      PINMMR37      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 80
      PINMMR80      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 81
      PINMMR81      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 82
      PINMMR82      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 83
      PINMMR83      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 84
      PINMMR84      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 85
      PINMMR85      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 86
      PINMMR86      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 87
      PINMMR87      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 88
      PINMMR88      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 89
      PINMMR89      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 90
      PINMMR90      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 91
      PINMMR91      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 92
      PINMMR92      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 93
      PINMMR93      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 94
      PINMMR94      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 95
      PINMMR95      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 96
      PINMMR96      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 97
      PINMMR97      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 98
      PINMMR98      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 99
      PINMMR99      : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 160
      PINMMR160     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 161
      PINMMR161     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 162
      PINMMR162     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 163
      PINMMR163     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 164
      PINMMR164     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 165
      PINMMR165     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 166
      PINMMR166     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 167
      PINMMR167     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 168
      PINMMR168     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 169
      PINMMR169     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 170
      PINMMR170     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 171
      PINMMR171     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 172
      PINMMR172     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 173
      PINMMR173     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 174
      PINMMR174     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 175
      PINMMR175     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 176
      PINMMR176     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 177
      PINMMR177     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 178
      PINMMR178     : TMS570LC43xx.Word;
      --  Pin Multiplexing Control Register 179
      PINMMR179     : TMS570LC43xx.Word;
   end record
     with Volatile;

   for IOMM_Peripheral use record
      Rev           at 16#0# range 0 .. 31;
      DieId0        at 16#8# range 0 .. 31;
      DieId1        at 16#C# range 0 .. 31;
      DieId2        at 16#10# range 0 .. 31;
      DieId3        at 16#14# range 0 .. 31;
      DevId0        at 16#18# range 0 .. 31;
      DevId1        at 16#1C# range 0 .. 31;
      BootConfig0   at 16#20# range 0 .. 31;
      Kick0         at 16#38# range 0 .. 31;
      Kick1         at 16#3C# range 0 .. 31;
      ErrRawStatSet at 16#E0# range 0 .. 31;
      ErrEnaStatClr at 16#E4# range 0 .. 31;
      ErrEna        at 16#E8# range 0 .. 31;
      ErrEnaClr     at 16#EC# range 0 .. 31;
      Fault_Addr    at 16#F4# range 0 .. 31;
      Fault_Stat    at 16#F8# range 0 .. 31;
      Fault_Clr     at 16#FC# range 0 .. 31;
      PINMMR0       at 16#110# range 0 .. 31;
      PINMMR1       at 16#114# range 0 .. 31;
      PINMMR2       at 16#118# range 0 .. 31;
      PINMMR3       at 16#11C# range 0 .. 31;
      PINMMR4       at 16#120# range 0 .. 31;
      PINMMR5       at 16#124# range 0 .. 31;
      PINMMR6       at 16#128# range 0 .. 31;
      PINMMR7       at 16#12C# range 0 .. 31;
      PINMMR8       at 16#130# range 0 .. 31;
      PINMMR9       at 16#134# range 0 .. 31;
      PINMMR10      at 16#138# range 0 .. 31;
      PINMMR11      at 16#13C# range 0 .. 31;
      PINMMR12      at 16#140# range 0 .. 31;
      PINMMR13      at 16#144# range 0 .. 31;
      PINMMR14      at 16#148# range 0 .. 31;
      PINMMR15      at 16#14C# range 0 .. 31;
      PINMMR16      at 16#150# range 0 .. 31;
      PINMMR17      at 16#154# range 0 .. 31;
      PINMMR18      at 16#158# range 0 .. 31;
      PINMMR19      at 16#15C# range 0 .. 31;
      PINMMR20      at 16#160# range 0 .. 31;
      PINMMR21      at 16#164# range 0 .. 31;
      PINMMR22      at 16#168# range 0 .. 31;
      PINMMR23      at 16#16C# range 0 .. 31;
      PINMMR24      at 16#170# range 0 .. 31;
      PINMMR25      at 16#174# range 0 .. 31;
      PINMMR26      at 16#178# range 0 .. 31;
      PINMMR27      at 16#17C# range 0 .. 31;
      PINMMR28      at 16#180# range 0 .. 31;
      PINMMR29      at 16#184# range 0 .. 31;
      PINMMR30      at 16#188# range 0 .. 31;
      PINMMR31      at 16#18C# range 0 .. 31;
      PINMMR32      at 16#190# range 0 .. 31;
      PINMMR33      at 16#194# range 0 .. 31;
      PINMMR34      at 16#198# range 0 .. 31;
      PINMMR35      at 16#19C# range 0 .. 31;
      PINMMR36      at 16#1A0# range 0 .. 31;
      PINMMR37      at 16#1A4# range 0 .. 31;
      PINMMR80      at 16#250# range 0 .. 31;
      PINMMR81      at 16#254# range 0 .. 31;
      PINMMR82      at 16#258# range 0 .. 31;
      PINMMR83      at 16#25C# range 0 .. 31;
      PINMMR84      at 16#260# range 0 .. 31;
      PINMMR85      at 16#264# range 0 .. 31;
      PINMMR86      at 16#268# range 0 .. 31;
      PINMMR87      at 16#26C# range 0 .. 31;
      PINMMR88      at 16#270# range 0 .. 31;
      PINMMR89      at 16#274# range 0 .. 31;
      PINMMR90      at 16#278# range 0 .. 31;
      PINMMR91      at 16#27C# range 0 .. 31;
      PINMMR92      at 16#280# range 0 .. 31;
      PINMMR93      at 16#284# range 0 .. 31;
      PINMMR94      at 16#288# range 0 .. 31;
      PINMMR95      at 16#28C# range 0 .. 31;
      PINMMR96      at 16#290# range 0 .. 31;
      PINMMR97      at 16#294# range 0 .. 31;
      PINMMR98      at 16#298# range 0 .. 31;
      PINMMR99      at 16#29C# range 0 .. 31;
      PINMMR160     at 16#390# range 0 .. 31;
      PINMMR161     at 16#394# range 0 .. 31;
      PINMMR162     at 16#398# range 0 .. 31;
      PINMMR163     at 16#39C# range 0 .. 31;
      PINMMR164     at 16#3A0# range 0 .. 31;
      PINMMR165     at 16#3A4# range 0 .. 31;
      PINMMR166     at 16#3A8# range 0 .. 31;
      PINMMR167     at 16#3AC# range 0 .. 31;
      PINMMR168     at 16#3B0# range 0 .. 31;
      PINMMR169     at 16#3B4# range 0 .. 31;
      PINMMR170     at 16#3B8# range 0 .. 31;
      PINMMR171     at 16#3BC# range 0 .. 31;
      PINMMR172     at 16#3D0# range 0 .. 31;
      PINMMR173     at 16#3D4# range 0 .. 31;
      PINMMR174     at 16#3D8# range 0 .. 31;
      PINMMR175     at 16#3DC# range 0 .. 31;
      PINMMR176     at 16#3E0# range 0 .. 31;
      PINMMR177     at 16#3E4# range 0 .. 31;
      PINMMR178     at 16#3E8# range 0 .. 31;
      PINMMR179     at 16#3EC# range 0 .. 31;
   end record;

   --  IOMM Multiplexing Control Module for TMS570LC44xx
   IOMM_Periph : aliased IOMM_Peripheral
     with Import, Address => IOMM_Base;

end TMS570LC43xx.IOMM;
