--  This spec has been automatically generated from hercules_sys_spec_5.8.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Sys is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ---------------------
   -- SysPc1_Register --
   ---------------------

   subtype SysPc1_EClkFun_Field is TMS570LC43xx.Bit;
   subtype SysPc1_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 1
   type SysPc1_Register is record
      --  Changes the function of the ECLK pin.
      EClkFun       : SysPc1_EClkFun_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc1_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc1_Register use record
      EClkFun       at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- SysPc2_Register --
   ---------------------

   subtype SysPc2_EClkDir_Field is TMS570LC43xx.Bit;
   subtype SysPc2_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 2
   type SysPc2_Register is record
      --  Controls the direction of the ECLK pin when in GIO mode only.
      EClkDir       : SysPc2_EClkDir_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc2_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc2_Register use record
      EClkDir       at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- SysPc3_Register --
   ---------------------

   subtype SysPc3_EClkDIn_Field is TMS570LC43xx.Bit;
   subtype SysPc3_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 3
   type SysPc3_Register is record
      --  Displays the logic state of the ECLK pin when in GIO mode.
      EClkDIn       : SysPc3_EClkDIn_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc3_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc3_Register use record
      EClkDIn       at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- SysPc4_Register --
   ---------------------

   subtype SysPc4_EClkDOut_Field is TMS570LC43xx.Bit;
   subtype SysPc4_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 4
   type SysPc4_Register is record
      --  ECLK data out write.
      EClkDOut      : SysPc4_EClkDOut_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc4_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc4_Register use record
      EClkDOut      at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- SysPc5_Register --
   ---------------------

   subtype SysPc5_EClkSet_Field is TMS570LC43xx.Bit;
   subtype SysPc5_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 5
   type SysPc5_Register is record
      --  Drives the output of the ECLK pin high when in output mode.
      EClkSet       : SysPc5_EClkSet_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc5_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc5_Register use record
      EClkSet       at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- SysPc6_Register --
   ---------------------

   subtype SysPc6_EClkClr_Field is TMS570LC43xx.Bit;
   subtype SysPc6_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 6
   type SysPc6_Register is record
      --  Drives the output of the ECLK pin low when in output mode.
      EClkClr       : SysPc6_EClkClr_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc6_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc6_Register use record
      EClkClr       at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- SysPc7_Register --
   ---------------------

   subtype SysPc7_EClkODE_Field is TMS570LC43xx.Bit;
   subtype SysPc7_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 7
   type SysPc7_Register is record
      --  ECLK open drain enable.
      EClkODE       : SysPc7_EClkODE_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc7_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc7_Register use record
      EClkODE       at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- SysPc8_Register --
   ---------------------

   subtype SysPc8_EClkPe_Field is TMS570LC43xx.Bit;
   subtype SysPc8_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 8
   type SysPc8_Register is record
      --  ECLK pull enable.
      EClkPe        : SysPc8_EClkPe_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc8_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc8_Register use record
      EClkPe        at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- SysPc9_Register --
   ---------------------

   subtype SysPc9_EClkPs_Field is TMS570LC43xx.Bit;
   subtype SysPc9_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 9
   type SysPc9_Register is record
      --  ECLK pull up/pull down select
      EClkPs        : SysPc9_EClkPs_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc9_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc9_Register use record
      EClkPs        at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   --------------------
   -- CsDis_Register --
   --------------------

   -----------------
   -- CsDis.ClkSr --
   -----------------

   --  CsDis_ClkSr array element
   subtype CsDis_ClkSr_Element is TMS570LC43xx.Bit;

   --  CsDis_ClkSr array
   type CsDis_ClkSr_Field_Array is array (0 .. 1) of CsDis_ClkSr_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CsDis_ClkSr
   type CsDis_ClkSr_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ClkSr as a value
            Val : TMS570LC43xx.UInt2;
         when True =>
            --  ClkSr as an array
            Arr : CsDis_ClkSr_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CsDis_ClkSr_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CsDis_Reserved_2_2_Field is TMS570LC43xx.Bit;

   -----------------
   -- CsDis.ClkSr --
   -----------------

   --  CsDis_ClkSr array
   type CsDis_ClkSr_Field_Array_1 is array (3 .. 7) of CsDis_ClkSr_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for CsDis_ClkSr
   type CsDis_ClkSr_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ClkSr as a value
            Val : TMS570LC43xx.UInt5;
         when True =>
            --  ClkSr as an array
            Arr : CsDis_ClkSr_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CsDis_ClkSr_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype CsDis_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Clock Source Disable Register
   type CsDis_Register is record
      --  Clock source 0 off.
      ClkSr         : CsDis_ClkSr_Field := (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_2_2  : CsDis_Reserved_2_2_Field := 16#0#;
      --  Clock source 3 off.
      ClkSr1        : CsDis_ClkSr_Field_1 :=
                       (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : CsDis_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CsDis_Register use record
      ClkSr         at 16#0# range 0 .. 1;
      Reserved_2_2  at 16#0# range 2 .. 2;
      ClkSr1        at 16#0# range 3 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- CsDisSet_Register --
   -----------------------

   -----------------------
   -- CsDisSet.SetClkSr --
   -----------------------

   --  CsDisSet_SetClkSr array element
   subtype CsDisSet_SetClkSr_Element is TMS570LC43xx.Bit;

   --  CsDisSet_SetClkSr array
   type CsDisSet_SetClkSr_Field_Array is array (0 .. 1)
     of CsDisSet_SetClkSr_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CsDisSet_SetClkSr
   type CsDisSet_SetClkSr_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SetClkSr as a value
            Val : TMS570LC43xx.UInt2;
         when True =>
            --  SetClkSr as an array
            Arr : CsDisSet_SetClkSr_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CsDisSet_SetClkSr_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CsDisSet_Reserved_2_2_Field is TMS570LC43xx.Bit;

   -----------------------
   -- CsDisSet.SetClkSr --
   -----------------------

   --  CsDisSet_SetClkSr array
   type CsDisSet_SetClkSr_Field_Array_1 is array (3 .. 7)
     of CsDisSet_SetClkSr_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for CsDisSet_SetClkSr
   type CsDisSet_SetClkSr_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SetClkSr as a value
            Val : TMS570LC43xx.UInt5;
         when True =>
            --  SetClkSr as an array
            Arr : CsDisSet_SetClkSr_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CsDisSet_SetClkSr_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype CsDisSet_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Clock Source Disable Set Register
   type CsDisSet_Register is record
      --  Set clock source 0 to the disabled state.
      SetClkSr      : CsDisSet_SetClkSr_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_2_2  : CsDisSet_Reserved_2_2_Field := 16#0#;
      --  Set clock source 3 to the disabled state.
      SetClkSr1     : CsDisSet_SetClkSr_Field_1 :=
                       (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : CsDisSet_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CsDisSet_Register use record
      SetClkSr      at 16#0# range 0 .. 1;
      Reserved_2_2  at 16#0# range 2 .. 2;
      SetClkSr1     at 16#0# range 3 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------------
   -- CsDisClr_Register --
   -----------------------

   -----------------------
   -- CsDisClr.ClrClkSr --
   -----------------------

   --  CsDisClr_ClrClkSr array element
   subtype CsDisClr_ClrClkSr_Element is TMS570LC43xx.Bit;

   --  CsDisClr_ClrClkSr array
   type CsDisClr_ClrClkSr_Field_Array is array (0 .. 1)
     of CsDisClr_ClrClkSr_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CsDisClr_ClrClkSr
   type CsDisClr_ClrClkSr_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ClrClkSr as a value
            Val : TMS570LC43xx.UInt2;
         when True =>
            --  ClrClkSr as an array
            Arr : CsDisClr_ClrClkSr_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CsDisClr_ClrClkSr_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CsDisClr_Reserved_2_2_Field is TMS570LC43xx.Bit;

   -----------------------
   -- CsDisClr.ClrClkSr --
   -----------------------

   --  CsDisClr_ClrClkSr array
   type CsDisClr_ClrClkSr_Field_Array_1 is array (3 .. 7)
     of CsDisClr_ClrClkSr_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for CsDisClr_ClrClkSr
   type CsDisClr_ClrClkSr_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ClrClkSr as a value
            Val : TMS570LC43xx.UInt5;
         when True =>
            --  ClrClkSr as an array
            Arr : CsDisClr_ClrClkSr_Field_Array_1;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for CsDisClr_ClrClkSr_Field_1 use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype CsDisClr_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Clock Source Disable Clear Register
   type CsDisClr_Register is record
      --  Enables clock source 0.
      ClrClkSr      : CsDisClr_ClrClkSr_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_2_2  : CsDisClr_Reserved_2_2_Field := 16#0#;
      --  Enables clock source 3.
      ClrClkSr1     : CsDisClr_ClrClkSr_Field_1 :=
                       (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : CsDisClr_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CsDisClr_Register use record
      ClrClkSr      at 16#0# range 0 .. 1;
      Reserved_2_2  at 16#0# range 2 .. 2;
      ClrClkSr1     at 16#0# range 3 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   --------------------
   -- CdDis_Register --
   --------------------

   subtype CdDis_GClkOff_Field is TMS570LC43xx.Bit;
   subtype CdDis_HClkOff_Field is TMS570LC43xx.Bit;
   subtype CdDis_VClkPOff_Field is TMS570LC43xx.Bit;
   subtype CdDis_VClk2Off_Field is TMS570LC43xx.Bit;
   subtype CdDis_VClkA1Off_Field is TMS570LC43xx.Bit;
   subtype CdDis_VClkA2Off_Field is TMS570LC43xx.Bit;
   subtype CdDis_RtiOff_Field is TMS570LC43xx.Bit;
   subtype CdDis_Reserved_7_7_Field is TMS570LC43xx.Bit;
   subtype CdDis_VClk3Off_Field is TMS570LC43xx.Bit;
   subtype CdDis_Reserved_9_10_Field is TMS570LC43xx.UInt2;
   subtype CdDis_VClkA4Off_Field is TMS570LC43xx.Bit;
   subtype CdDis_Reserved_12_31_Field is TMS570LC43xx.UInt20;

   --  Clock Domain Disable Register
   type CdDis_Register is record
      --  GCLK domain off.
      GClkOff        : CdDis_GClkOff_Field := 16#0#;
      --  HCLK and VCLK_sys domains off.
      HClkOff        : CdDis_HClkOff_Field := 16#0#;
      --  VCLK_periph domain off.
      VClkPOff       : CdDis_VClkPOff_Field := 16#0#;
      --  VCLK2 domain off.
      VClk2Off       : CdDis_VClk2Off_Field := 16#0#;
      --  VCLKA1 domain off.
      VClkA1Off      : CdDis_VClkA1Off_Field := 16#0#;
      --  VCLKA2 domain off.
      VClkA2Off      : CdDis_VClkA2Off_Field := 16#0#;
      --  RTICLK domain off.
      RtiOff         : CdDis_RtiOff_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_7_7   : CdDis_Reserved_7_7_Field := 16#0#;
      --  VCLK3 domain off.
      VClk3Off       : CdDis_VClk3Off_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_9_10  : CdDis_Reserved_9_10_Field := 16#0#;
      --  VCLKA4 domain off.
      VClkA4Off      : CdDis_VClkA4Off_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_12_31 : CdDis_Reserved_12_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CdDis_Register use record
      GClkOff        at 16#0# range 0 .. 0;
      HClkOff        at 16#0# range 1 .. 1;
      VClkPOff       at 16#0# range 2 .. 2;
      VClk2Off       at 16#0# range 3 .. 3;
      VClkA1Off      at 16#0# range 4 .. 4;
      VClkA2Off      at 16#0# range 5 .. 5;
      RtiOff         at 16#0# range 6 .. 6;
      Reserved_7_7   at 16#0# range 7 .. 7;
      VClk3Off       at 16#0# range 8 .. 8;
      Reserved_9_10  at 16#0# range 9 .. 10;
      VClkA4Off      at 16#0# range 11 .. 11;
      Reserved_12_31 at 16#0# range 12 .. 31;
   end record;

   -----------------------
   -- CdDisSet_Register --
   -----------------------

   subtype CdDisSet_SetGClkOff_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_SetHClkOff_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_SetVClkPOff_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_SetVClk2Off_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_SetVClkA1Off_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_SetVClkA2Off_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_SetRtiOff_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_Reserved_7_7_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_SetVClk3Off_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_Reserved_9_10_Field is TMS570LC43xx.UInt2;
   subtype CdDisSet_SetVClkA4Off_Field is TMS570LC43xx.Bit;
   subtype CdDisSet_Reserved_12_31_Field is TMS570LC43xx.UInt20;

   --  Clock Domain Disable Set Register
   type CdDisSet_Register is record
      --  Set GCLK domain.
      SetGClkOff     : CdDisSet_SetGClkOff_Field := 16#0#;
      --  Set HCLK and VCLK_sys domains.
      SetHClkOff     : CdDisSet_SetHClkOff_Field := 16#0#;
      --  Set VCLK_periph domain.
      SetVClkPOff    : CdDisSet_SetVClkPOff_Field := 16#0#;
      --  Set VCLK2 domain.
      SetVClk2Off    : CdDisSet_SetVClk2Off_Field := 16#0#;
      --  Set VCLKA1 domain.
      SetVClkA1Off   : CdDisSet_SetVClkA1Off_Field := 16#0#;
      --  Set VCLKA2 domain.
      SetVClkA2Off   : CdDisSet_SetVClkA2Off_Field := 16#0#;
      --  Set RTICLK domain.
      SetRtiOff      : CdDisSet_SetRtiOff_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_7_7   : CdDisSet_Reserved_7_7_Field := 16#0#;
      --  Set VCLK3 domain.
      SetVClk3Off    : CdDisSet_SetVClk3Off_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_9_10  : CdDisSet_Reserved_9_10_Field := 16#0#;
      --  Set VCLKA4 domain.
      SetVClkA4Off   : CdDisSet_SetVClkA4Off_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_12_31 : CdDisSet_Reserved_12_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CdDisSet_Register use record
      SetGClkOff     at 16#0# range 0 .. 0;
      SetHClkOff     at 16#0# range 1 .. 1;
      SetVClkPOff    at 16#0# range 2 .. 2;
      SetVClk2Off    at 16#0# range 3 .. 3;
      SetVClkA1Off   at 16#0# range 4 .. 4;
      SetVClkA2Off   at 16#0# range 5 .. 5;
      SetRtiOff      at 16#0# range 6 .. 6;
      Reserved_7_7   at 16#0# range 7 .. 7;
      SetVClk3Off    at 16#0# range 8 .. 8;
      Reserved_9_10  at 16#0# range 9 .. 10;
      SetVClkA4Off   at 16#0# range 11 .. 11;
      Reserved_12_31 at 16#0# range 12 .. 31;
   end record;

   -----------------------
   -- CdDisClr_Register --
   -----------------------

   subtype CdDisClr_ClrGClkOff_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_ClrHClkOff_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_ClrVClkPOff_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_ClrVClk2Off_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_ClrVClkA1Off_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_ClrVClkA2Off_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_ClrRtiOff_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_Reserved_7_7_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_ClrVClk3Off_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_Reserved_9_10_Field is TMS570LC43xx.UInt2;
   subtype CdDisClr_ClrVClkA4Off_Field is TMS570LC43xx.Bit;
   subtype CdDisClr_Reserved_12_31_Field is TMS570LC43xx.UInt20;

   --  Clock Domain Disable Clear Register
   type CdDisClr_Register is record
      --  Clear GCLK domain.
      ClrGClkOff     : CdDisClr_ClrGClkOff_Field := 16#0#;
      --  Clear HCLK and VCLK_sys domains.
      ClrHClkOff     : CdDisClr_ClrHClkOff_Field := 16#0#;
      --  Clear VCLK_periph domain.
      ClrVClkPOff    : CdDisClr_ClrVClkPOff_Field := 16#0#;
      --  Clear VCLK2 domain.
      ClrVClk2Off    : CdDisClr_ClrVClk2Off_Field := 16#0#;
      --  Clear VCLKA1 domain.
      ClrVClkA1Off   : CdDisClr_ClrVClkA1Off_Field := 16#0#;
      --  Clear VCLKA2 domain.
      ClrVClkA2Off   : CdDisClr_ClrVClkA2Off_Field := 16#0#;
      --  Clear RTICLK domain.
      ClrRtiOff      : CdDisClr_ClrRtiOff_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_7_7   : CdDisClr_Reserved_7_7_Field := 16#0#;
      --  Clear VCLK3 domain.
      ClrVClk3Off    : CdDisClr_ClrVClk3Off_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_9_10  : CdDisClr_Reserved_9_10_Field := 16#0#;
      --  Clear VCLKA4 domain.
      ClrVClkA4Off   : CdDisClr_ClrVClkA4Off_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_12_31 : CdDisClr_Reserved_12_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CdDisClr_Register use record
      ClrGClkOff     at 16#0# range 0 .. 0;
      ClrHClkOff     at 16#0# range 1 .. 1;
      ClrVClkPOff    at 16#0# range 2 .. 2;
      ClrVClk2Off    at 16#0# range 3 .. 3;
      ClrVClkA1Off   at 16#0# range 4 .. 4;
      ClrVClkA2Off   at 16#0# range 5 .. 5;
      ClrRtiOff      at 16#0# range 6 .. 6;
      Reserved_7_7   at 16#0# range 7 .. 7;
      ClrVClk3Off    at 16#0# range 8 .. 8;
      Reserved_9_10  at 16#0# range 9 .. 10;
      ClrVClkA4Off   at 16#0# range 11 .. 11;
      Reserved_12_31 at 16#0# range 12 .. 31;
   end record;

   ---------------------
   -- GhvSrc_Register --
   ---------------------

   subtype GhvSrc_GhvSrc_Field is TMS570LC43xx.UInt4;
   subtype GhvSrc_Reserved_4_15_Field is TMS570LC43xx.UInt12;
   subtype GhvSrc_Hvlpm_Field is TMS570LC43xx.UInt4;
   subtype GhvSrc_Reserved_20_23_Field is TMS570LC43xx.UInt4;
   subtype GhvSrc_GhvWake_Field is TMS570LC43xx.UInt4;
   subtype GhvSrc_Reserved_28_31_Field is TMS570LC43xx.UInt4;

   --  GClk, HClk, VClk, and VClk2 Source Register
   type GhvSrc_Register is record
      --  GCLK, HCLK, VCLK, VCLK2 current source.
      GhvSrc         : GhvSrc_GhvSrc_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_15  : GhvSrc_Reserved_4_15_Field := 16#0#;
      --  HCLK, VCLK, VCLK2 source on wakeup when GCLK1 is turned off.
      Hvlpm          : GhvSrc_Hvlpm_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_20_23 : GhvSrc_Reserved_20_23_Field := 16#0#;
      --  GCLK, HCLK, VCLK source on wakeup.
      GhvWake        : GhvSrc_GhvWake_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_28_31 : GhvSrc_Reserved_28_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GhvSrc_Register use record
      GhvSrc         at 16#0# range 0 .. 3;
      Reserved_4_15  at 16#0# range 4 .. 15;
      Hvlpm          at 16#0# range 16 .. 19;
      Reserved_20_23 at 16#0# range 20 .. 23;
      GhvWake        at 16#0# range 24 .. 27;
      Reserved_28_31 at 16#0# range 28 .. 31;
   end record;

   -----------------------
   -- VClkASrc_Register --
   -----------------------

   subtype VClkASrc_VClkA1S_Field is TMS570LC43xx.UInt4;
   subtype VClkASrc_Reserved_4_7_Field is TMS570LC43xx.UInt4;
   subtype VClkASrc_VClkA2S_Field is TMS570LC43xx.UInt4;
   subtype VClkASrc_Reserved_12_31_Field is TMS570LC43xx.UInt20;

   --  Peripheral Asynchronous Clock Source Register
   type VClkASrc_Register is record
      --  Peripheral asynchronous clock1 source.
      VClkA1S        : VClkASrc_VClkA1S_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_7   : VClkASrc_Reserved_4_7_Field := 16#0#;
      --  Peripheral asynchronous clock2 source.
      VClkA2S        : VClkASrc_VClkA2S_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_12_31 : VClkASrc_Reserved_12_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for VClkASrc_Register use record
      VClkA1S        at 16#0# range 0 .. 3;
      Reserved_4_7   at 16#0# range 4 .. 7;
      VClkA2S        at 16#0# range 8 .. 11;
      Reserved_12_31 at 16#0# range 12 .. 31;
   end record;

   ----------------------
   -- RclkSrc_Register --
   ----------------------

   subtype RclkSrc_RtiSrc_Field is TMS570LC43xx.UInt4;
   subtype RclkSrc_Reserved_4_7_Field is TMS570LC43xx.UInt4;
   subtype RclkSrc_RtiDiv_Field is TMS570LC43xx.UInt2;
   subtype RclkSrc_Reserved_10_31_Field is TMS570LC43xx.UInt22;

   --  RTI Clock Source Register
   type RclkSrc_Register is record
      --  RTI clock source.
      RtiSrc         : RclkSrc_RtiSrc_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_7   : RclkSrc_Reserved_4_7_Field := 16#0#;
      --  RTI clock Divider.
      RtiDiv         : RclkSrc_RtiDiv_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_10_31 : RclkSrc_Reserved_10_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RclkSrc_Register use record
      RtiSrc         at 16#0# range 0 .. 3;
      Reserved_4_7   at 16#0# range 4 .. 7;
      RtiDiv         at 16#0# range 8 .. 9;
      Reserved_10_31 at 16#0# range 10 .. 31;
   end record;

   ----------------------
   -- CsVStat_Register --
   ----------------------

   subtype CsVStat_ClkSr0V_Field is TMS570LC43xx.Bit;
   subtype CsVStat_ClkSr1V_Field is TMS570LC43xx.Bit;
   subtype CsVStat_Reserved_2_2_Field is TMS570LC43xx.Bit;
   subtype CsVStat_ClkSr3V_Field is TMS570LC43xx.Bit;
   subtype CsVStat_ClkSr4V_Field is TMS570LC43xx.Bit;
   subtype CsVStat_ClkSr5V_Field is TMS570LC43xx.Bit;
   subtype CsVStat_ClkSr6V_Field is TMS570LC43xx.Bit;
   subtype CsVStat_ClkSr7V_Field is TMS570LC43xx.Bit;
   subtype CsVStat_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Clock Source Valid Status Register
   type CsVStat_Register is record
      --  RTI clock source 0 valid.
      ClkSr0V       : CsVStat_ClkSr0V_Field := 16#0#;
      --  RTI clock source 1 valid.
      ClkSr1V       : CsVStat_ClkSr1V_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_2_2  : CsVStat_Reserved_2_2_Field := 16#0#;
      --  RTI clock source 3 valid.
      ClkSr3V       : CsVStat_ClkSr3V_Field := 16#0#;
      --  RTI clock source 4 valid.
      ClkSr4V       : CsVStat_ClkSr4V_Field := 16#0#;
      --  RTI clock source 5 valid.
      ClkSr5V       : CsVStat_ClkSr5V_Field := 16#0#;
      --  RTI clock source 6 valid.
      ClkSr6V       : CsVStat_ClkSr6V_Field := 16#0#;
      --  RTI clock source 7 valid.
      ClkSr7V       : CsVStat_ClkSr7V_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : CsVStat_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CsVStat_Register use record
      ClkSr0V       at 16#0# range 0 .. 0;
      ClkSr1V       at 16#0# range 1 .. 1;
      Reserved_2_2  at 16#0# range 2 .. 2;
      ClkSr3V       at 16#0# range 3 .. 3;
      ClkSr4V       at 16#0# range 4 .. 4;
      ClkSr5V       at 16#0# range 5 .. 5;
      ClkSr6V       at 16#0# range 6 .. 6;
      ClkSr7V       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------------
   -- MstGlbCtrl_Register --
   -------------------------

   subtype MstGlbCtrl_MstGena_Field is TMS570LC43xx.UInt4;
   subtype MstGlbCtrl_Reserved_4_7_Field is TMS570LC43xx.UInt4;
   subtype MstGlbCtrl_Rom_Div_Field is TMS570LC43xx.UInt2;
   subtype MstGlbCtrl_Reserved_10_31_Field is TMS570LC43xx.UInt22;

   --  Memory Self-Test Global Control Register
   type MstGlbCtrl_Register is record
      --  Memory self-test controller global enable key
      MstGena        : MstGlbCtrl_MstGena_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_7   : MstGlbCtrl_Reserved_4_7_Field := 16#0#;
      --  Prescaler divider bits for ROM clock source.
      Rom_Div        : MstGlbCtrl_Rom_Div_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_10_31 : MstGlbCtrl_Reserved_10_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MstGlbCtrl_Register use record
      MstGena        at 16#0# range 0 .. 3;
      Reserved_4_7   at 16#0# range 4 .. 7;
      Rom_Div        at 16#0# range 8 .. 9;
      Reserved_10_31 at 16#0# range 10 .. 31;
   end record;

   ---------------------------
   -- MinitGlbCtrl_Register --
   ---------------------------

   subtype MinitGlbCtrl_MinitGena_Field is TMS570LC43xx.UInt4;
   subtype MinitGlbCtrl_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  Memory Hardware Initialization Global Control Register
   type MinitGlbCtrl_Register is record
      --  Memory hardware initialization global enable key.
      MinitGena     : MinitGlbCtrl_MinitGena_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_31 : MinitGlbCtrl_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MinitGlbCtrl_Register use record
      MinitGena     at 16#0# range 0 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   ------------------------
   -- MstCgStat_Register --
   ------------------------

   subtype MstCgStat_MiniDone_Field is TMS570LC43xx.Bit;
   subtype MstCgStat_Reserved_1_7_Field is TMS570LC43xx.UInt7;
   subtype MstCgStat_MstDone_Field is TMS570LC43xx.Bit;
   subtype MstCgStat_Reserved_9_31_Field is TMS570LC43xx.UInt23;

   --  MstC Global Status Register
   type MstCgStat_Register is record
      --  Memory hardware initialization complete status.
      MiniDone      : MstCgStat_MiniDone_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_7  : MstCgStat_Reserved_1_7_Field := 16#0#;
      --  Memory self-test run complete status.
      MstDone       : MstCgStat_MstDone_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_9_31 : MstCgStat_Reserved_9_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for MstCgStat_Register use record
      MiniDone      at 16#0# range 0 .. 0;
      Reserved_1_7  at 16#0# range 1 .. 7;
      MstDone       at 16#0# range 8 .. 8;
      Reserved_9_31 at 16#0# range 9 .. 31;
   end record;

   ----------------------
   -- PllCtl1_Register --
   ----------------------

   subtype PllCtl1_PllMul_Field is TMS570LC43xx.Short;
   subtype PllCtl1_RefClkDiv_Field is TMS570LC43xx.UInt6;
   subtype PllCtl1_Reserved_22_22_Field is TMS570LC43xx.Bit;
   subtype PllCtl1_Rof_Field is TMS570LC43xx.Bit;
   subtype PllCtl1_PllDiv_Field is TMS570LC43xx.UInt5;
   subtype PllCtl1_BPos_Field is TMS570LC43xx.UInt2;
   subtype PllCtl1_Ros_Field is TMS570LC43xx.Bit;

   --  Pll Control Register 1
   type PllCtl1_Register is record
      --  PLL Multiplication Factor
      PllMul         : PllCtl1_PllMul_Field := 16#0#;
      --  Reference Clock Divider
      RefClkDiv      : PllCtl1_RefClkDiv_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_22_22 : PllCtl1_Reserved_22_22_Field := 16#0#;
      --  Reset on Oscillator Fail
      Rof            : PllCtl1_Rof_Field := 16#0#;
      --  PLL Output Clock Divider
      PllDiv         : PllCtl1_PllDiv_Field := 16#0#;
      --  Bypass of PLL Slip
      BPos           : PllCtl1_BPos_Field := 16#0#;
      --  Reset on PLL Slip
      Ros            : PllCtl1_Ros_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PllCtl1_Register use record
      PllMul         at 16#0# range 0 .. 15;
      RefClkDiv      at 16#0# range 16 .. 21;
      Reserved_22_22 at 16#0# range 22 .. 22;
      Rof            at 16#0# range 23 .. 23;
      PllDiv         at 16#0# range 24 .. 28;
      BPos           at 16#0# range 29 .. 30;
      Ros            at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- PllCtl2_Register --
   ----------------------

   subtype PllCtl2_SprAmount_Field is TMS570LC43xx.UInt9;
   subtype PllCtl2_ODPll_Field is TMS570LC43xx.UInt3;
   subtype PllCtl2_MulMod_Field is TMS570LC43xx.UInt9;
   subtype PllCtl2_Reserved_21_21_Field is TMS570LC43xx.Bit;
   subtype PllCtl2_SprRate_Field is TMS570LC43xx.UInt9;
   subtype PllCtl2_FMEna_Field is TMS570LC43xx.Bit;

   --  Pll Control Register 2
   type PllCtl2_Register is record
      --  Spreading Amount.
      SprAmount      : PllCtl2_SprAmount_Field := 16#0#;
      --  Internal PLL Output Divider.
      ODPll          : PllCtl2_ODPll_Field := 16#0#;
      --  Multiplier Correction when Frequency Modulation is enabled.
      MulMod         : PllCtl2_MulMod_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_21_21 : PllCtl2_Reserved_21_21_Field := 16#0#;
      --  NS = SPREADINGRATE + 1
      SprRate        : PllCtl2_SprRate_Field := 16#0#;
      --  Frequency Modulation Enable
      FMEna          : PllCtl2_FMEna_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PllCtl2_Register use record
      SprAmount      at 16#0# range 0 .. 8;
      ODPll          at 16#0# range 9 .. 11;
      MulMod         at 16#0# range 12 .. 20;
      Reserved_21_21 at 16#0# range 21 .. 21;
      SprRate        at 16#0# range 22 .. 30;
      FMEna          at 16#0# range 31 .. 31;
   end record;

   ----------------------
   -- SysPc10_Register --
   ----------------------

   subtype SysPc10_EcpClkSlew_Field is TMS570LC43xx.Bit;
   subtype SysPc10_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Sys Pin Control Register 10
   type SysPc10_Register is record
      --  ECPCLK slew control. Controls between the fast or slow slew mode.
      EcpClkSlew    : SysPc10_EcpClkSlew_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : SysPc10_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysPc10_Register use record
      EcpClkSlew    at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- DieIdL_Register --
   ---------------------

   subtype DieIdL_X_Wafer_Coord_Field is TMS570LC43xx.Byte;
   subtype DieIdL_Y_Wafer_Coord_Field is TMS570LC43xx.Byte;
   subtype DieIdL_WaferNr_Field is TMS570LC43xx.UInt6;
   subtype DieIdL_LotNrLower_Field is TMS570LC43xx.UInt10;

   --  Die Identification Register, Lower Word
   type DieIdL_Register is record
      --  These read only bits contain the X wafer coordinate of the device
      X_Wafer_Coord : DieIdL_X_Wafer_Coord_Field := 16#0#;
      --  These read only bits contain the Y wafer coordinate of the device
      Y_Wafer_Coord : DieIdL_Y_Wafer_Coord_Field := 16#0#;
      --  These read only bits contain the wafer number of the device.
      WaferNr       : DieIdL_WaferNr_Field := 16#0#;
      --  These read only bits contain the lower 10 bits of the device lot
      --  number.
      LotNrLower    : DieIdL_LotNrLower_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DieIdL_Register use record
      X_Wafer_Coord at 16#0# range 0 .. 7;
      Y_Wafer_Coord at 16#0# range 8 .. 15;
      WaferNr       at 16#0# range 16 .. 21;
      LotNrLower    at 16#0# range 22 .. 31;
   end record;

   ---------------------
   -- DieIdH_Register --
   ---------------------

   subtype DieIdH_LotNrUpper_Field is TMS570LC43xx.UInt14;
   subtype DieIdH_Reserved_14_31_Field is TMS570LC43xx.UInt18;

   --  Die Identification Register Upper Word
   type DieIdH_Register is record
      --  This read-only register contains the upper 14 bits of the device lot
      --  number.
      LotNrUpper     : DieIdH_LotNrUpper_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_14_31 : DieIdH_Reserved_14_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DieIdH_Register use record
      LotNrUpper     at 16#0# range 0 .. 13;
      Reserved_14_31 at 16#0# range 14 .. 31;
   end record;

   ------------------------
   -- LpoMonCtl_Register --
   ------------------------

   subtype LpoMonCtl_LfTrim_Field is TMS570LC43xx.UInt5;
   subtype LpoMonCtl_Reserved_5_7_Field is TMS570LC43xx.UInt3;
   subtype LpoMonCtl_HfTrim_Field is TMS570LC43xx.UInt5;
   subtype LpoMonCtl_Reserved_13_15_Field is TMS570LC43xx.UInt3;
   subtype LpoMonCtl_OscFrqConfigCnt_Field is TMS570LC43xx.Bit;
   subtype LpoMonCtl_Reserved_17_23_Field is TMS570LC43xx.UInt7;
   subtype LpoMonCtl_BiasEnable_Field is TMS570LC43xx.Bit;
   subtype LpoMonCtl_Reserved_25_31_Field is TMS570LC43xx.UInt7;

   --  Lpo/Clock Monitor Control Register
   type LpoMonCtl_Register is record
      --  Low frequency oscillator trim value.
      LfTrim          : LpoMonCtl_LfTrim_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_5_7    : LpoMonCtl_Reserved_5_7_Field := 16#0#;
      --  High frequency oscillator trim value.
      HfTrim          : LpoMonCtl_HfTrim_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_13_15  : LpoMonCtl_Reserved_13_15_Field := 16#0#;
      --  Configures the counter based on OSC frequency.
      OscFrqConfigCnt : LpoMonCtl_OscFrqConfigCnt_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_17_23  : LpoMonCtl_Reserved_17_23_Field := 16#0#;
      --  Bias Enable.
      BiasEnable      : LpoMonCtl_BiasEnable_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_25_31  : LpoMonCtl_Reserved_25_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for LpoMonCtl_Register use record
      LfTrim          at 16#0# range 0 .. 4;
      Reserved_5_7    at 16#0# range 5 .. 7;
      HfTrim          at 16#0# range 8 .. 12;
      Reserved_13_15  at 16#0# range 13 .. 15;
      OscFrqConfigCnt at 16#0# range 16 .. 16;
      Reserved_17_23  at 16#0# range 17 .. 23;
      BiasEnable      at 16#0# range 24 .. 24;
      Reserved_25_31  at 16#0# range 25 .. 31;
   end record;

   ----------------------
   -- ClkTest_Register --
   ----------------------

   subtype ClkTest_SelEcpPin_Field is TMS570LC43xx.UInt4;
   subtype ClkTest_Reserved_4_7_Field is TMS570LC43xx.UInt4;
   subtype ClkTest_SelGioPin_Field is TMS570LC43xx.UInt4;
   subtype ClkTest_Reserved_12_15_Field is TMS570LC43xx.UInt4;
   subtype ClkTest_ClkTestEn_Field is TMS570LC43xx.UInt4;
   subtype ClkTest_Reserved_20_23_Field is TMS570LC43xx.UInt4;
   subtype ClkTest_RangeDetEnAsSel_Field is TMS570LC43xx.Bit;
   subtype ClkTest_RangeDetCtrl_Field is TMS570LC43xx.Bit;
   subtype ClkTest_Test_Field is TMS570LC43xx.Bit;
   subtype ClkTest_Reserved_27_31_Field is TMS570LC43xx.UInt5;

   --  Clock Test Register
   type ClkTest_Register is record
      --  ECLK pin clock source select.
      SelEcpPin       : ClkTest_SelEcpPin_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_7    : ClkTest_Reserved_4_7_Field := 16#0#;
      --  GIOB[0] pin clock source valid, clock source select.
      SelGioPin       : ClkTest_SelGioPin_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_12_15  : ClkTest_Reserved_12_15_Field := 16#0#;
      --  Clock test enable.
      ClkTestEn       : ClkTest_ClkTestEn_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_20_23  : ClkTest_Reserved_20_23_Field := 16#0#;
      --  Selects range detection enable.
      RangeDetEnAsSel : ClkTest_RangeDetEnAsSel_Field := 16#0#;
      --  Range detection control.
      RangeDetCtrl    : ClkTest_RangeDetCtrl_Field := 16#0#;
      --  This bit is used for test purposes. It must be written to 0.
      Test            : ClkTest_Test_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_27_31  : ClkTest_Reserved_27_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ClkTest_Register use record
      SelEcpPin       at 16#0# range 0 .. 3;
      Reserved_4_7    at 16#0# range 4 .. 7;
      SelGioPin       at 16#0# range 8 .. 11;
      Reserved_12_15  at 16#0# range 12 .. 15;
      ClkTestEn       at 16#0# range 16 .. 19;
      Reserved_20_23  at 16#0# range 20 .. 23;
      RangeDetEnAsSel at 16#0# range 24 .. 24;
      RangeDetCtrl    at 16#0# range 25 .. 25;
      Test            at 16#0# range 26 .. 26;
      Reserved_27_31  at 16#0# range 27 .. 31;
   end record;

   -------------------------
   -- DftCtrlReg_Register --
   -------------------------

   subtype DftCtrlReg_TestModeKey_Field is TMS570LC43xx.UInt4;
   subtype DftCtrlReg_Reserved_4_7_Field is TMS570LC43xx.UInt4;
   subtype DftCtrlReg_DftRead_Field is TMS570LC43xx.UInt2;
   subtype DftCtrlReg_Reserved_10_11_Field is TMS570LC43xx.UInt2;
   subtype DftCtrlReg_DftWrite_Field is TMS570LC43xx.UInt2;
   subtype DftCtrlReg_Reserved_14_31_Field is TMS570LC43xx.UInt18;

   --  DFT Control Register
   type DftCtrlReg_Register is record
      --  Test mode key. Internal TI use only.
      TestModeKey    : DftCtrlReg_TestModeKey_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_7   : DftCtrlReg_Reserved_4_7_Field := 16#0#;
      --  DFT logic access.
      DftRead        : DftCtrlReg_DftRead_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_10_11 : DftCtrlReg_Reserved_10_11_Field := 16#0#;
      --  DFT logic access.
      DftWrite       : DftCtrlReg_DftWrite_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_14_31 : DftCtrlReg_Reserved_14_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DftCtrlReg_Register use record
      TestModeKey    at 16#0# range 0 .. 3;
      Reserved_4_7   at 16#0# range 4 .. 7;
      DftRead        at 16#0# range 8 .. 9;
      Reserved_10_11 at 16#0# range 10 .. 11;
      DftWrite       at 16#0# range 12 .. 13;
      Reserved_14_31 at 16#0# range 14 .. 31;
   end record;

   --------------------------
   -- DftCtrlReg2_Register --
   --------------------------

   subtype DftCtrlReg2_ImpDf_Field is TMS570LC43xx.UInt4;
   subtype DftCtrlReg2_TestModeKey_Field is TMS570LC43xx.UInt28;

   --  DFT Control Register 2
   type DftCtrlReg2_Register is record
      --  DFT Implementation defined bits.
      ImpDf       : DftCtrlReg2_ImpDf_Field := 16#0#;
      --  Test mode key. Internal TI use only.
      TestModeKey : DftCtrlReg2_TestModeKey_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DftCtrlReg2_Register use record
      ImpDf       at 16#0# range 0 .. 3;
      TestModeKey at 16#0# range 4 .. 31;
   end record;

   ---------------------
   -- GPREG1_Register --
   ---------------------

   subtype GPREG1_Reserved_0_15_Field is TMS570LC43xx.Short;
   subtype GPREG1_Pll1FbSlipFilterKey_Field is TMS570LC43xx.UInt4;
   subtype GPREG1_Pll1FbSlipFilterCnt_Field is TMS570LC43xx.UInt6;
   subtype GPREG1_Reserved_26_31_Field is TMS570LC43xx.UInt6;

   --  General Purpose Register
   type GPREG1_Register is record
      --  Read returns 0. Writes have no effect.
      Reserved_0_15       : GPREG1_Reserved_0_15_Field := 16#0#;
      --  System response when a FBSLIP is indicated by the PLL macro..
      Pll1FbSlipFilterKey : GPREG1_Pll1FbSlipFilterKey_Field := 16#0#;
      --  FBSLIP down counter programmed value.
      Pll1FbSlipFilterCnt : GPREG1_Pll1FbSlipFilterCnt_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_26_31      : GPREG1_Reserved_26_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPREG1_Register use record
      Reserved_0_15       at 16#0# range 0 .. 15;
      Pll1FbSlipFilterKey at 16#0# range 16 .. 19;
      Pll1FbSlipFilterCnt at 16#0# range 20 .. 25;
      Reserved_26_31      at 16#0# range 26 .. 31;
   end record;

   --------------------
   -- SSIr1_Register --
   --------------------

   subtype SSIr1_SsData1_Field is TMS570LC43xx.Byte;
   subtype SSIr1_SsKey1_Field is TMS570LC43xx.Byte;
   subtype SSIr1_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  System Software Interrupt Request 1 Register
   type SSIr1_Register is record
      --  System software interrupt data.
      SsData1        : SSIr1_SsData1_Field := 16#0#;
      --  System software interrupt request key.
      SsKey1         : SSIr1_SsKey1_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_16_31 : SSIr1_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSIr1_Register use record
      SsData1        at 16#0# range 0 .. 7;
      SsKey1         at 16#0# range 8 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   --------------------
   -- SSIr2_Register --
   --------------------

   subtype SSIr2_SsData2_Field is TMS570LC43xx.Byte;
   subtype SSIr2_SsKey2_Field is TMS570LC43xx.Byte;
   subtype SSIr2_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  System Software Interrupt Request 2 Register
   type SSIr2_Register is record
      --  System software interrupt data.
      SsData2        : SSIr2_SsData2_Field := 16#0#;
      --  System software interrupt request key.
      SsKey2         : SSIr2_SsKey2_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_16_31 : SSIr2_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSIr2_Register use record
      SsData2        at 16#0# range 0 .. 7;
      SsKey2         at 16#0# range 8 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   --------------------
   -- SSIr3_Register --
   --------------------

   subtype SSIr3_SsData3_Field is TMS570LC43xx.Byte;
   subtype SSIr3_SsKey3_Field is TMS570LC43xx.Byte;
   subtype SSIr3_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  System Software Interrupt Request 3 Register
   type SSIr3_Register is record
      --  System software interrupt data.
      SsData3        : SSIr3_SsData3_Field := 16#0#;
      --  System software interrupt request key.
      SsKey3         : SSIr3_SsKey3_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_16_31 : SSIr3_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSIr3_Register use record
      SsData3        at 16#0# range 0 .. 7;
      SsKey3         at 16#0# range 8 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   --------------------
   -- SSIr4_Register --
   --------------------

   subtype SSIr4_SsData4_Field is TMS570LC43xx.Byte;
   subtype SSIr4_SsKey4_Field is TMS570LC43xx.Byte;
   subtype SSIr4_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  System Software Interrupt Request 4 Register
   type SSIr4_Register is record
      --  System software interrupt data.
      SsData4        : SSIr4_SsData4_Field := 16#0#;
      --  System software interrupt request key.
      SsKey4         : SSIr4_SsKey4_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_16_31 : SSIr4_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSIr4_Register use record
      SsData4        at 16#0# range 0 .. 7;
      SsKey4         at 16#0# range 8 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   -------------------------
   -- RamGlbCtrl_Register --
   -------------------------

   subtype RamGlbCtrl_Reserved_0_15_Field is TMS570LC43xx.Short;
   subtype RamGlbCtrl_RamDftEn_Field is TMS570LC43xx.UInt4;
   subtype RamGlbCtrl_Reserved_20_31_Field is TMS570LC43xx.UInt12;

   --  Ram Control Register
   type RamGlbCtrl_Register is record
      --  Read returns 0. Writes have no effect.
      Reserved_0_15  : RamGlbCtrl_Reserved_0_15_Field := 16#0#;
      --  Functional mode RAM DFT (Design For Test) port enable key.
      RamDftEn       : RamGlbCtrl_RamDftEn_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_20_31 : RamGlbCtrl_Reserved_20_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for RamGlbCtrl_Register use record
      Reserved_0_15  at 16#0# range 0 .. 15;
      RamDftEn       at 16#0# range 16 .. 19;
      Reserved_20_31 at 16#0# range 20 .. 31;
   end record;

   ---------------------
   -- BmmCr1_Register --
   ---------------------

   subtype BmmCr1_MemSw_Field is TMS570LC43xx.UInt4;
   subtype BmmCr1_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  Bus Matrix Module Control Register1
   type BmmCr1_Register is record
      --  Memory swap key.
      MemSw         : BmmCr1_MemSw_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_31 : BmmCr1_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BmmCr1_Register use record
      MemSw         at 16#0# range 0 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   ----------------------
   -- ClkCntl_Register --
   ----------------------

   subtype ClkCntl_Reserved_0_7_Field is TMS570LC43xx.Byte;
   subtype ClkCntl_PEna_Field is TMS570LC43xx.Bit;
   subtype ClkCntl_Reserved_9_15_Field is TMS570LC43xx.UInt7;
   subtype ClkCntl_VClkR_Field is TMS570LC43xx.UInt4;
   subtype ClkCntl_Reserved_20_23_Field is TMS570LC43xx.UInt4;
   subtype ClkCntl_VClk2R_Field is TMS570LC43xx.UInt4;
   subtype ClkCntl_Reserved_28_31_Field is TMS570LC43xx.UInt4;

   --  Clock Control Register
   type ClkCntl_Register is record
      --  Read returns 0. Writes have no effect.
      Reserved_0_7   : ClkCntl_Reserved_0_7_Field := 16#0#;
      --  Peripheral enable bit.
      PEna           : ClkCntl_PEna_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_9_15  : ClkCntl_Reserved_9_15_Field := 16#0#;
      --  VBUS clock ratio.
      VClkR          : ClkCntl_VClkR_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_20_23 : ClkCntl_Reserved_20_23_Field := 16#0#;
      --  VBUS clock 2 ratio.
      VClk2R         : ClkCntl_VClk2R_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_28_31 : ClkCntl_Reserved_28_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for ClkCntl_Register use record
      Reserved_0_7   at 16#0# range 0 .. 7;
      PEna           at 16#0# range 8 .. 8;
      Reserved_9_15  at 16#0# range 9 .. 15;
      VClkR          at 16#0# range 16 .. 19;
      Reserved_20_23 at 16#0# range 20 .. 23;
      VClk2R         at 16#0# range 24 .. 27;
      Reserved_28_31 at 16#0# range 28 .. 31;
   end record;

   ----------------------
   -- EcpCntl_Register --
   ----------------------

   subtype EcpCntl_EcpDiv_Field is TMS570LC43xx.Short;
   subtype EcpCntl_Reserved_16_22_Field is TMS570LC43xx.UInt7;
   subtype EcpCntl_EcpCos_Field is TMS570LC43xx.Bit;
   subtype EcpCntl_EcpSsel_Field is TMS570LC43xx.Bit;
   subtype EcpCntl_Reserved_25_31_Field is TMS570LC43xx.UInt7;

   --  ECP Control Register
   type EcpCntl_Register is record
      --  ECP divider value.
      EcpDiv         : EcpCntl_EcpDiv_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_16_22 : EcpCntl_Reserved_16_22_Field := 16#0#;
      --  ECP continue on suspend.
      EcpCos         : EcpCntl_EcpCos_Field := 16#0#;
      --  Select between VCLK and OSCIN as clock source for ECLK.
      EcpSsel        : EcpCntl_EcpSsel_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_25_31 : EcpCntl_Reserved_25_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for EcpCntl_Register use record
      EcpDiv         at 16#0# range 0 .. 15;
      Reserved_16_22 at 16#0# range 16 .. 22;
      EcpCos         at 16#0# range 23 .. 23;
      EcpSsel        at 16#0# range 24 .. 24;
      Reserved_25_31 at 16#0# range 25 .. 31;
   end record;

   ---------------------
   -- DevCr1_Register --
   ---------------------

   subtype DevCr1_DevParSel_Field is TMS570LC43xx.UInt4;
   subtype DevCr1_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  DEV Parity Control Register1
   type DevCr1_Register is record
      --  Device parity select bit key.
      DevParSel     : DevCr1_DevParSel_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_31 : DevCr1_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DevCr1_Register use record
      DevParSel     at 16#0# range 0 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   ---------------------
   -- SysEcr_Register --
   ---------------------

   subtype SysEcr_Reserved_0_13_Field is TMS570LC43xx.UInt14;
   subtype SysEcr_Reset_Field is TMS570LC43xx.UInt2;
   subtype SysEcr_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  System Exception Control Register
   type SysEcr_Register is record
      --  Read returns 0. Writes have no effect.
      Reserved_0_13  : SysEcr_Reserved_0_13_Field := 16#0#;
      --  Software reset bits.
      Reset          : SysEcr_Reset_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_16_31 : SysEcr_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysEcr_Register use record
      Reserved_0_13  at 16#0# range 0 .. 13;
      Reset          at 16#0# range 14 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ---------------------
   -- SysEsr_Register --
   ---------------------

   subtype SysEsr_MpMode_Field is TMS570LC43xx.Bit;
   subtype SysEsr_Reserved_1_2_Field is TMS570LC43xx.UInt2;
   subtype SysEsr_ExtRst_Field is TMS570LC43xx.Bit;
   subtype SysEsr_SwRst_Field is TMS570LC43xx.Bit;
   subtype SysEsr_CpuRst_Field is TMS570LC43xx.Bit;
   subtype SysEsr_Reserved_6_6_Field is TMS570LC43xx.Bit;
   subtype SysEsr_IcstRst_Field is TMS570LC43xx.Bit;
   subtype SysEsr_Reserved_8_10_Field is TMS570LC43xx.UInt3;
   subtype SysEsr_DbgRst_Field is TMS570LC43xx.Bit;
   subtype SysEsr_Wd2Rst_Field is TMS570LC43xx.Bit;
   subtype SysEsr_WdRst_Field is TMS570LC43xx.Bit;
   subtype SysEsr_OscRst_Field is TMS570LC43xx.Bit;
   subtype SysEsr_PoRst_Field is TMS570LC43xx.Bit;
   subtype SysEsr_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  System Exception Status Register
   type SysEsr_Register is record
      --  Memory protection unit (MPU) mode.
      MpMode         : SysEsr_MpMode_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_2   : SysEsr_Reserved_1_2_Field := 16#0#;
      --  External reset flag.
      ExtRst         : SysEsr_ExtRst_Field := 16#0#;
      --  Software reset flag.
      SwRst          : SysEsr_SwRst_Field := 16#0#;
      --  CPU reset flag.
      CpuRst         : SysEsr_CpuRst_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_6   : SysEsr_Reserved_6_6_Field := 16#0#;
      --  Interconnect reset flag.
      IcstRst        : SysEsr_IcstRst_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_10  : SysEsr_Reserved_8_10_Field := 16#0#;
      --  Debug reset flag.
      DbgRst         : SysEsr_DbgRst_Field := 16#0#;
      --  Watchdog 2 reset flag.
      Wd2Rst         : SysEsr_Wd2Rst_Field := 16#0#;
      --  Watchdog reset flag.
      WdRst          : SysEsr_WdRst_Field := 16#0#;
      --  Reset caused by an oscillator failure or PLL cycle slip.
      OscRst         : SysEsr_OscRst_Field := 16#0#;
      --  Power-on reset. flag.
      PoRst          : SysEsr_PoRst_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_16_31 : SysEsr_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysEsr_Register use record
      MpMode         at 16#0# range 0 .. 0;
      Reserved_1_2   at 16#0# range 1 .. 2;
      ExtRst         at 16#0# range 3 .. 3;
      SwRst          at 16#0# range 4 .. 4;
      CpuRst         at 16#0# range 5 .. 5;
      Reserved_6_6   at 16#0# range 6 .. 6;
      IcstRst        at 16#0# range 7 .. 7;
      Reserved_8_10  at 16#0# range 8 .. 10;
      DbgRst         at 16#0# range 11 .. 11;
      Wd2Rst         at 16#0# range 12 .. 12;
      WdRst          at 16#0# range 13 .. 13;
      OscRst         at 16#0# range 14 .. 14;
      PoRst          at 16#0# range 15 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   ----------------------
   -- SysTasr_Register --
   ----------------------

   subtype SysTasr_EFuseAbort_Field is TMS570LC43xx.UInt5;
   subtype SysTasr_Reserved_5_31_Field is TMS570LC43xx.UInt27;

   --  System Test Abort Status Register
   type SysTasr_Register is record
      --  Set when test abort occurred.
      EFuseAbort    : SysTasr_EFuseAbort_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_5_31 : SysTasr_Reserved_5_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SysTasr_Register use record
      EFuseAbort    at 16#0# range 0 .. 4;
      Reserved_5_31 at 16#0# range 5 .. 31;
   end record;

   ----------------------
   -- GlbStat_Register --
   ----------------------

   subtype GlbStat_OscFail_Field is TMS570LC43xx.Bit;
   subtype GlbStat_Reserved_1_7_Field is TMS570LC43xx.UInt7;
   subtype GlbStat_RfSlip_Field is TMS570LC43xx.Bit;
   subtype GlbStat_FbSlip_Field is TMS570LC43xx.Bit;
   subtype GlbStat_Reserved_10_31_Field is TMS570LC43xx.UInt22;

   --  Global Status Register
   type GlbStat_Register is record
      --  Oscillator fail flag bit.
      OscFail        : GlbStat_OscFail_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_7   : GlbStat_Reserved_1_7_Field := 16#0#;
      --  PLL under cycle slip detection.
      RfSlip         : GlbStat_RfSlip_Field := 16#0#;
      --  PLL over cycle slip detection.
      FbSlip         : GlbStat_FbSlip_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_10_31 : GlbStat_Reserved_10_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GlbStat_Register use record
      OscFail        at 16#0# range 0 .. 0;
      Reserved_1_7   at 16#0# range 1 .. 7;
      RfSlip         at 16#0# range 8 .. 8;
      FbSlip         at 16#0# range 9 .. 9;
      Reserved_10_31 at 16#0# range 10 .. 31;
   end record;

   --------------------
   -- DevId_Register --
   --------------------

   subtype DevId_PlatformID_Field is TMS570LC43xx.UInt3;
   subtype DevId_Version_Field is TMS570LC43xx.UInt5;
   subtype DevId_RamEcc_Field is TMS570LC43xx.Bit;
   subtype DevId_FlashEcc_Field is TMS570LC43xx.UInt2;
   subtype DevId_PeriphParity_Field is TMS570LC43xx.Bit;
   subtype DevId_IoVoltage_Field is TMS570LC43xx.Bit;
   subtype DevId_Tech_Field is TMS570LC43xx.UInt4;
   subtype DevId_UniqueID_Field is TMS570LC43xx.UInt14;
   subtype DevId_CP15_Field is TMS570LC43xx.Bit;

   --  Device Identification Register
   type DevId_Register is record
      --  The TMS570Px ID is always 5h.
      PlatformID   : DevId_PlatformID_Field := 16#0#;
      --  These bits provide the revision of the device.
      Version      : DevId_Version_Field := 16#0#;
      --  This bit indicates whether or not RAM memory ECC is present.
      RamEcc       : DevId_RamEcc_Field := 16#0#;
      --  These bits indicate which parity is present for the program memory.
      FlashEcc     : DevId_FlashEcc_Field := 16#0#;
      --  This bit indicates whether or not peripheral memory parity is
      --  present.
      PeriphParity : DevId_PeriphParity_Field := 16#0#;
      --  Input/output voltage. This bit defines the I/O voltage of the device.
      IoVoltage    : DevId_IoVoltage_Field := 16#0#;
      --  These bits define the process technology by which the device was
      --  manufactured.
      Tech         : DevId_Tech_Field := 16#0#;
      --  The device ID is unique by device configuration.
      UniqueID     : DevId_UniqueID_Field := 16#0#;
      --  This bit indicates whether the CPU has a coprocessor 15.
      CP15         : DevId_CP15_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DevId_Register use record
      PlatformID   at 16#0# range 0 .. 2;
      Version      at 16#0# range 3 .. 7;
      RamEcc       at 16#0# range 8 .. 8;
      FlashEcc     at 16#0# range 9 .. 10;
      PeriphParity at 16#0# range 11 .. 11;
      IoVoltage    at 16#0# range 12 .. 12;
      Tech         at 16#0# range 13 .. 16;
      UniqueID     at 16#0# range 17 .. 30;
      CP15         at 16#0# range 31 .. 31;
   end record;

   ---------------------
   -- SSiVec_Register --
   ---------------------

   subtype SSiVec_SSiVect_Field is TMS570LC43xx.Byte;
   subtype SSiVec_SSiData_Field is TMS570LC43xx.Byte;
   subtype SSiVec_Reserved_16_31_Field is TMS570LC43xx.Short;

   --  Software Interrupt Vector Register
   type SSiVec_Register is record
      --  Source for the system software interrupt.
      SSiVect        : SSiVec_SSiVect_Field := 16#0#;
      --  System software interrupt data key.
      SSiData        : SSiVec_SSiData_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_16_31 : SSiVec_Reserved_16_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSiVec_Register use record
      SSiVect        at 16#0# range 0 .. 7;
      SSiData        at 16#0# range 8 .. 15;
      Reserved_16_31 at 16#0# range 16 .. 31;
   end record;

   -------------------
   -- SSIf_Register --
   -------------------

   subtype SSIf_SSiFlag_Field is TMS570LC43xx.UInt4;
   subtype SSIf_Reserved_4_31_Field is TMS570LC43xx.UInt28;

   --  System Software Interrupt Flag Register
   type SSIf_Register is record
      --  System software interrupt flag[4-1].
      SSiFlag       : SSIf_SSiFlag_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_4_31 : SSIf_Reserved_4_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SSIf_Register use record
      SSiFlag       at 16#0# range 0 .. 3;
      Reserved_4_31 at 16#0# range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  System Modules
   type Sys_Peripheral is record
      --  Sys Pin Control Register 1
      SysPc1       : SysPc1_Register;
      --  Sys Pin Control Register 2
      SysPc2       : SysPc2_Register;
      --  Sys Pin Control Register 3
      SysPc3       : SysPc3_Register;
      --  Sys Pin Control Register 4
      SysPc4       : SysPc4_Register;
      --  Sys Pin Control Register 5
      SysPc5       : SysPc5_Register;
      --  Sys Pin Control Register 6
      SysPc6       : SysPc6_Register;
      --  Sys Pin Control Register 7
      SysPc7       : SysPc7_Register;
      --  Sys Pin Control Register 8
      SysPc8       : SysPc8_Register;
      --  Sys Pin Control Register 9
      SysPc9       : SysPc9_Register;
      --  Clock Source Disable Register
      CsDis        : CsDis_Register;
      --  Clock Source Disable Set Register
      CsDisSet     : CsDisSet_Register;
      --  Clock Source Disable Clear Register
      CsDisClr     : CsDisClr_Register;
      --  Clock Domain Disable Register
      CdDis        : CdDis_Register;
      --  Clock Domain Disable Set Register
      CdDisSet     : CdDisSet_Register;
      --  Clock Domain Disable Clear Register
      CdDisClr     : CdDisClr_Register;
      --  GClk, HClk, VClk, and VClk2 Source Register
      GhvSrc       : GhvSrc_Register;
      --  Peripheral Asynchronous Clock Source Register
      VClkASrc     : VClkASrc_Register;
      --  RTI Clock Source Register
      RclkSrc      : RclkSrc_Register;
      --  Clock Source Valid Status Register
      CsVStat      : CsVStat_Register;
      --  Memory Self-Test Global Control Register
      MstGlbCtrl   : MstGlbCtrl_Register;
      --  Memory Hardware Initialization Global Control Register
      MinitGlbCtrl : MinitGlbCtrl_Register;
      --  MBIST Controller/Memory Initialization Enable Register
      MsInEna      : TMS570LC43xx.Word;
      --  Memory Self-Test Fail Status Register
      MstFail      : TMS570LC43xx.Word;
      --  MstC Global Status Register
      MstCgStat    : MstCgStat_Register;
      --  Memory Hardware Initialization Status Register
      MIniStat     : TMS570LC43xx.Word;
      --  Pll Control Register 1
      PllCtl1      : PllCtl1_Register;
      --  Pll Control Register 2
      PllCtl2      : PllCtl2_Register;
      --  Sys Pin Control Register 10
      SysPc10      : SysPc10_Register;
      --  Die Identification Register, Lower Word
      DieIdL       : DieIdL_Register;
      --  Die Identification Register Upper Word
      DieIdH       : DieIdH_Register;
      --  Lpo/Clock Monitor Control Register
      LpoMonCtl    : LpoMonCtl_Register;
      --  Clock Test Register
      ClkTest      : ClkTest_Register;
      --  DFT Control Register
      DftCtrlReg   : DftCtrlReg_Register;
      --  DFT Control Register 2
      DftCtrlReg2  : DftCtrlReg2_Register;
      --  General Purpose Register
      GPREG1       : GPREG1_Register;
      --  Imprecise Fault Status Register
      ImpFaSts     : TMS570LC43xx.Word;
      --  Imprecise Fault Write Address Register
      ImpFtAdd     : TMS570LC43xx.Word;
      --  System Software Interrupt Request 1 Register
      SSIr1        : SSIr1_Register;
      --  System Software Interrupt Request 2 Register
      SSIr2        : SSIr2_Register;
      --  System Software Interrupt Request 3 Register
      SSIr3        : SSIr3_Register;
      --  System Software Interrupt Request 4 Register
      SSIr4        : SSIr4_Register;
      --  Ram Control Register
      RamGlbCtrl   : RamGlbCtrl_Register;
      --  Bus Matrix Module Control Register1
      BmmCr1       : BmmCr1_Register;
      --  Bus Matrix Module Control Register2
      BmmCr2       : TMS570LC43xx.Word;
      --  Mmu Global Control Register
      MmuGlbCtrl   : TMS570LC43xx.Word;
      --  Clock Control Register
      ClkCntl      : ClkCntl_Register;
      --  ECP Control Register
      EcpCntl      : EcpCntl_Register;
      --  DEV Parity Control Register1
      DevCr1       : DevCr1_Register;
      --  System Exception Control Register
      SysEcr       : SysEcr_Register;
      --  System Exception Status Register
      SysEsr       : SysEsr_Register;
      --  System Test Abort Status Register
      SysTasr      : SysTasr_Register;
      --  Global Status Register
      GlbStat      : GlbStat_Register;
      --  Device Identification Register
      DevId        : DevId_Register;
      --  Software Interrupt Vector Register
      SSiVec       : SSiVec_Register;
      --  System Software Interrupt Flag Register
      SSIf         : SSIf_Register;
   end record
     with Volatile;

   for Sys_Peripheral use record
      SysPc1       at 16#0# range 0 .. 31;
      SysPc2       at 16#4# range 0 .. 31;
      SysPc3       at 16#8# range 0 .. 31;
      SysPc4       at 16#C# range 0 .. 31;
      SysPc5       at 16#10# range 0 .. 31;
      SysPc6       at 16#14# range 0 .. 31;
      SysPc7       at 16#18# range 0 .. 31;
      SysPc8       at 16#1C# range 0 .. 31;
      SysPc9       at 16#20# range 0 .. 31;
      CsDis        at 16#30# range 0 .. 31;
      CsDisSet     at 16#34# range 0 .. 31;
      CsDisClr     at 16#38# range 0 .. 31;
      CdDis        at 16#3C# range 0 .. 31;
      CdDisSet     at 16#40# range 0 .. 31;
      CdDisClr     at 16#44# range 0 .. 31;
      GhvSrc       at 16#48# range 0 .. 31;
      VClkASrc     at 16#4C# range 0 .. 31;
      RclkSrc      at 16#50# range 0 .. 31;
      CsVStat      at 16#54# range 0 .. 31;
      MstGlbCtrl   at 16#58# range 0 .. 31;
      MinitGlbCtrl at 16#5C# range 0 .. 31;
      MsInEna      at 16#60# range 0 .. 31;
      MstFail      at 16#64# range 0 .. 31;
      MstCgStat    at 16#68# range 0 .. 31;
      MIniStat     at 16#6C# range 0 .. 31;
      PllCtl1      at 16#70# range 0 .. 31;
      PllCtl2      at 16#74# range 0 .. 31;
      SysPc10      at 16#78# range 0 .. 31;
      DieIdL       at 16#7C# range 0 .. 31;
      DieIdH       at 16#80# range 0 .. 31;
      LpoMonCtl    at 16#88# range 0 .. 31;
      ClkTest      at 16#8C# range 0 .. 31;
      DftCtrlReg   at 16#90# range 0 .. 31;
      DftCtrlReg2  at 16#94# range 0 .. 31;
      GPREG1       at 16#A0# range 0 .. 31;
      ImpFaSts     at 16#A8# range 0 .. 31;
      ImpFtAdd     at 16#AC# range 0 .. 31;
      SSIr1        at 16#B0# range 0 .. 31;
      SSIr2        at 16#B4# range 0 .. 31;
      SSIr3        at 16#B8# range 0 .. 31;
      SSIr4        at 16#BC# range 0 .. 31;
      RamGlbCtrl   at 16#C0# range 0 .. 31;
      BmmCr1       at 16#C4# range 0 .. 31;
      BmmCr2       at 16#C8# range 0 .. 31;
      MmuGlbCtrl   at 16#CC# range 0 .. 31;
      ClkCntl      at 16#D0# range 0 .. 31;
      EcpCntl      at 16#D4# range 0 .. 31;
      DevCr1       at 16#DC# range 0 .. 31;
      SysEcr       at 16#E0# range 0 .. 31;
      SysEsr       at 16#E4# range 0 .. 31;
      SysTasr      at 16#E8# range 0 .. 31;
      GlbStat      at 16#EC# range 0 .. 31;
      DevId        at 16#F0# range 0 .. 31;
      SSiVec       at 16#F4# range 0 .. 31;
      SSIf         at 16#F8# range 0 .. 31;
   end record;

   --  System Modules
   Sys_Periph : aliased Sys_Peripheral
     with Import, Address => Sys_Base;

end TMS570LC43xx.Sys;
