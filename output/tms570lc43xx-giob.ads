--  This spec has been automatically generated from hercules_gio_port_b_spec_1.2.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.GioB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- Dir_Register --
   ------------------

   subtype Dir_GioDir0_Field is TMS570LC43xx.Bit;
   subtype Dir_GioDir1_Field is TMS570LC43xx.Bit;
   subtype Dir_GioDir2_Field is TMS570LC43xx.Bit;
   subtype Dir_GioDir3_Field is TMS570LC43xx.Bit;
   subtype Dir_GioDir4_Field is TMS570LC43xx.Bit;
   subtype Dir_GioDir5_Field is TMS570LC43xx.Bit;
   subtype Dir_GioDir6_Field is TMS570LC43xx.Bit;
   subtype Dir_GioDir7_Field is TMS570LC43xx.Bit;
   subtype Dir_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Direction Gio B
   type Dir_Register is record
      --  GIO data direction of port n
      GioDir0       : Dir_GioDir0_Field := 16#0#;
      --  GIO data direction of port n
      GioDir1       : Dir_GioDir1_Field := 16#0#;
      --  GIO data direction of port n
      GioDir2       : Dir_GioDir2_Field := 16#0#;
      --  GIO data direction of port n
      GioDir3       : Dir_GioDir3_Field := 16#0#;
      --  GIO data direction of port n
      GioDir4       : Dir_GioDir4_Field := 16#0#;
      --  GIO data direction of port n
      GioDir5       : Dir_GioDir5_Field := 16#0#;
      --  GIO data direction of port n
      GioDir6       : Dir_GioDir6_Field := 16#0#;
      --  GIO data direction of port n
      GioDir7       : Dir_GioDir7_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : Dir_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Dir_Register use record
      GioDir0       at 16#0# range 0 .. 0;
      GioDir1       at 16#0# range 1 .. 1;
      GioDir2       at 16#0# range 2 .. 2;
      GioDir3       at 16#0# range 3 .. 3;
      GioDir4       at 16#0# range 4 .. 4;
      GioDir5       at 16#0# range 5 .. 5;
      GioDir6       at 16#0# range 6 .. 6;
      GioDir7       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ------------------
   -- DIn_Register --
   ------------------

   subtype DIn_GioDIn0_Field is TMS570LC43xx.Bit;
   subtype DIn_GioDIn1_Field is TMS570LC43xx.Bit;
   subtype DIn_GioDIn2_Field is TMS570LC43xx.Bit;
   subtype DIn_GioDIn3_Field is TMS570LC43xx.Bit;
   subtype DIn_GioDIn4_Field is TMS570LC43xx.Bit;
   subtype DIn_GioDIn5_Field is TMS570LC43xx.Bit;
   subtype DIn_GioDIn6_Field is TMS570LC43xx.Bit;
   subtype DIn_GioDIn7_Field is TMS570LC43xx.Bit;
   subtype DIn_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Input Gio B
   type DIn_Register is record
      --  GIO data input of port n
      GioDIn0       : DIn_GioDIn0_Field := 16#0#;
      --  GIO data input of port n
      GioDIn1       : DIn_GioDIn1_Field := 16#0#;
      --  GIO data input of port n
      GioDIn2       : DIn_GioDIn2_Field := 16#0#;
      --  GIO data input of port n
      GioDIn3       : DIn_GioDIn3_Field := 16#0#;
      --  GIO data input of port n
      GioDIn4       : DIn_GioDIn4_Field := 16#0#;
      --  GIO data input of port n
      GioDIn5       : DIn_GioDIn5_Field := 16#0#;
      --  GIO data input of port n
      GioDIn6       : DIn_GioDIn6_Field := 16#0#;
      --  GIO data input of port n
      GioDIn7       : DIn_GioDIn7_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : DIn_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIn_Register use record
      GioDIn0       at 16#0# range 0 .. 0;
      GioDIn1       at 16#0# range 1 .. 1;
      GioDIn2       at 16#0# range 2 .. 2;
      GioDIn3       at 16#0# range 3 .. 3;
      GioDIn4       at 16#0# range 4 .. 4;
      GioDIn5       at 16#0# range 5 .. 5;
      GioDIn6       at 16#0# range 6 .. 6;
      GioDIn7       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- DOut_Register --
   -------------------

   subtype DOut_GioDOut0_Field is TMS570LC43xx.Bit;
   subtype DOut_GioDOut1_Field is TMS570LC43xx.Bit;
   subtype DOut_GioDOut2_Field is TMS570LC43xx.Bit;
   subtype DOut_GioDOut3_Field is TMS570LC43xx.Bit;
   subtype DOut_GioDOut4_Field is TMS570LC43xx.Bit;
   subtype DOut_GioDOut5_Field is TMS570LC43xx.Bit;
   subtype DOut_GioDOut6_Field is TMS570LC43xx.Bit;
   subtype DOut_GioDOut7_Field is TMS570LC43xx.Bit;
   subtype DOut_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Output Gio B
   type DOut_Register is record
      --  GIO data output of port n
      GioDOut0      : DOut_GioDOut0_Field := 16#0#;
      --  GIO data output of port n
      GioDOut1      : DOut_GioDOut1_Field := 16#0#;
      --  GIO data output of port n
      GioDOut2      : DOut_GioDOut2_Field := 16#0#;
      --  GIO data output of port n
      GioDOut3      : DOut_GioDOut3_Field := 16#0#;
      --  GIO data output of port n
      GioDOut4      : DOut_GioDOut4_Field := 16#0#;
      --  GIO data output of port n
      GioDOut5      : DOut_GioDOut5_Field := 16#0#;
      --  GIO data output of port n
      GioDOut6      : DOut_GioDOut6_Field := 16#0#;
      --  GIO data output of port n
      GioDOut7      : DOut_GioDOut7_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : DOut_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOut_Register use record
      GioDOut0      at 16#0# range 0 .. 0;
      GioDOut1      at 16#0# range 1 .. 1;
      GioDOut2      at 16#0# range 2 .. 2;
      GioDOut3      at 16#0# range 3 .. 3;
      GioDOut4      at 16#0# range 4 .. 4;
      GioDOut5      at 16#0# range 5 .. 5;
      GioDOut6      at 16#0# range 6 .. 6;
      GioDOut7      at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- DSet_Register --
   -------------------

   subtype DSet_GioDSet0_Field is TMS570LC43xx.Bit;
   subtype DSet_GioDSet1_Field is TMS570LC43xx.Bit;
   subtype DSet_GioDSet2_Field is TMS570LC43xx.Bit;
   subtype DSet_GioDSet3_Field is TMS570LC43xx.Bit;
   subtype DSet_GioDSet4_Field is TMS570LC43xx.Bit;
   subtype DSet_GioDSet5_Field is TMS570LC43xx.Bit;
   subtype DSet_GioDSet6_Field is TMS570LC43xx.Bit;
   subtype DSet_GioDSet7_Field is TMS570LC43xx.Bit;
   subtype DSet_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Set Gio B
   type DSet_Register is record
      --  GIO data set for port n. Drives the output of GIO pin high.
      GioDSet0      : DSet_GioDSet0_Field := 16#0#;
      --  GIO data set for port n. Drives the output of GIO pin high.
      GioDSet1      : DSet_GioDSet1_Field := 16#0#;
      --  GIO data set for port n. Drives the output of GIO pin high.
      GioDSet2      : DSet_GioDSet2_Field := 16#0#;
      --  GIO data set for port n. Drives the output of GIO pin high.
      GioDSet3      : DSet_GioDSet3_Field := 16#0#;
      --  GIO data set for port n. Drives the output of GIO pin high.
      GioDSet4      : DSet_GioDSet4_Field := 16#0#;
      --  GIO data set for port n. Drives the output of GIO pin high.
      GioDSet5      : DSet_GioDSet5_Field := 16#0#;
      --  GIO data set for port n. Drives the output of GIO pin high.
      GioDSet6      : DSet_GioDSet6_Field := 16#0#;
      --  GIO data output of port n. Drives the output of GIO pin high.
      GioDSet7      : DSet_GioDSet7_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : DSet_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSet_Register use record
      GioDSet0      at 16#0# range 0 .. 0;
      GioDSet1      at 16#0# range 1 .. 1;
      GioDSet2      at 16#0# range 2 .. 2;
      GioDSet3      at 16#0# range 3 .. 3;
      GioDSet4      at 16#0# range 4 .. 4;
      GioDSet5      at 16#0# range 5 .. 5;
      GioDSet6      at 16#0# range 6 .. 6;
      GioDSet7      at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- DClr_Register --
   -------------------

   subtype DClr_GioDClr0_Field is TMS570LC43xx.Bit;
   subtype DClr_GioDClr1_Field is TMS570LC43xx.Bit;
   subtype DClr_GioDClr2_Field is TMS570LC43xx.Bit;
   subtype DClr_GioDClr3_Field is TMS570LC43xx.Bit;
   subtype DClr_GioDClr4_Field is TMS570LC43xx.Bit;
   subtype DClr_GioDClr5_Field is TMS570LC43xx.Bit;
   subtype DClr_GioDClr6_Field is TMS570LC43xx.Bit;
   subtype DClr_GioDClr7_Field is TMS570LC43xx.Bit;
   subtype DClr_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Clear Gio B
   type DClr_Register is record
      --  GIO data clear for port n. Drives the output of GIO pin low.
      GioDClr0      : DClr_GioDClr0_Field := 16#0#;
      --  GIO data clear for port n. Drives the output of GIO pin low.
      GioDClr1      : DClr_GioDClr1_Field := 16#0#;
      --  GIO data clear for port n. Drives the output of GIO pin low.
      GioDClr2      : DClr_GioDClr2_Field := 16#0#;
      --  GIO data clear for port n. Drives the output of GIO pin low.
      GioDClr3      : DClr_GioDClr3_Field := 16#0#;
      --  GIO data clear for port n. Drives the output of GIO pin low.
      GioDClr4      : DClr_GioDClr4_Field := 16#0#;
      --  GIO data clear for port n. Drives the output of GIO pin low.
      GioDClr5      : DClr_GioDClr5_Field := 16#0#;
      --  GIO data clear for port n. Drives the output of GIO pin low.
      GioDClr6      : DClr_GioDClr6_Field := 16#0#;
      --  GIO data output of port n. Drives the output of GIO pin low.
      GioDClr7      : DClr_GioDClr7_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : DClr_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DClr_Register use record
      GioDClr0      at 16#0# range 0 .. 0;
      GioDClr1      at 16#0# range 1 .. 1;
      GioDClr2      at 16#0# range 2 .. 2;
      GioDClr3      at 16#0# range 3 .. 3;
      GioDClr4      at 16#0# range 4 .. 4;
      GioDClr5      at 16#0# range 5 .. 5;
      GioDClr6      at 16#0# range 6 .. 6;
      GioDClr7      at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ------------------
   -- PDr_Register --
   ------------------

   subtype PDr_GioPDr0_Field is TMS570LC43xx.Bit;
   subtype PDr_GioPDr1_Field is TMS570LC43xx.Bit;
   subtype PDr_GioPDr2_Field is TMS570LC43xx.Bit;
   subtype PDr_GioPDr3_Field is TMS570LC43xx.Bit;
   subtype PDr_GioPDr4_Field is TMS570LC43xx.Bit;
   subtype PDr_GioPDr5_Field is TMS570LC43xx.Bit;
   subtype PDr_GioPDr6_Field is TMS570LC43xx.Bit;
   subtype PDr_GioPDr7_Field is TMS570LC43xx.Bit;
   subtype PDr_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Open Drain Gio B
   type PDr_Register is record
      --  GIO open drain for port n
      GioPDr0       : PDr_GioPDr0_Field := 16#0#;
      --  GIO open drain for port n
      GioPDr1       : PDr_GioPDr1_Field := 16#0#;
      --  GIO open drain for port n
      GioPDr2       : PDr_GioPDr2_Field := 16#0#;
      --  GIO open drain for port n
      GioPDr3       : PDr_GioPDr3_Field := 16#0#;
      --  GIO open drain for port n
      GioPDr4       : PDr_GioPDr4_Field := 16#0#;
      --  GIO open drain for port n
      GioPDr5       : PDr_GioPDr5_Field := 16#0#;
      --  GIO open drain for port n
      GioPDr6       : PDr_GioPDr6_Field := 16#0#;
      --  GIO open drain for port n
      GioPDr7       : PDr_GioPDr7_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : PDr_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDr_Register use record
      GioPDr0       at 16#0# range 0 .. 0;
      GioPDr1       at 16#0# range 1 .. 1;
      GioPDr2       at 16#0# range 2 .. 2;
      GioPDr3       at 16#0# range 3 .. 3;
      GioPDr4       at 16#0# range 4 .. 4;
      GioPDr5       at 16#0# range 5 .. 5;
      GioPDr6       at 16#0# range 6 .. 6;
      GioPDr7       at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- PDis_Register --
   -------------------

   subtype PDis_GioPDis0_Field is TMS570LC43xx.Bit;
   subtype PDis_GioPDis1_Field is TMS570LC43xx.Bit;
   subtype PDis_GioPDis2_Field is TMS570LC43xx.Bit;
   subtype PDis_GioPDis3_Field is TMS570LC43xx.Bit;
   subtype PDis_GioPDis4_Field is TMS570LC43xx.Bit;
   subtype PDis_GioPDis5_Field is TMS570LC43xx.Bit;
   subtype PDis_GioPDis6_Field is TMS570LC43xx.Bit;
   subtype PDis_GioPDis7_Field is TMS570LC43xx.Bit;
   subtype PDis_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Pull Disable Gio B
   type PDis_Register is record
      --  GIO pull disable for port n
      GioPDis0      : PDis_GioPDis0_Field := 16#0#;
      --  GIO pull disable for port n
      GioPDis1      : PDis_GioPDis1_Field := 16#0#;
      --  GIO pull disable for port n
      GioPDis2      : PDis_GioPDis2_Field := 16#0#;
      --  GIO pull disable for port n
      GioPDis3      : PDis_GioPDis3_Field := 16#0#;
      --  GIO pull disable for port n
      GioPDis4      : PDis_GioPDis4_Field := 16#0#;
      --  GIO pull disable for port n
      GioPDis5      : PDis_GioPDis5_Field := 16#0#;
      --  GIO pull disable for port n
      GioPDis6      : PDis_GioPDis6_Field := 16#0#;
      --  GIO pull disable for port n
      GioPDis7      : PDis_GioPDis7_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : PDis_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDis_Register use record
      GioPDis0      at 16#0# range 0 .. 0;
      GioPDis1      at 16#0# range 1 .. 1;
      GioPDis2      at 16#0# range 2 .. 2;
      GioPDis3      at 16#0# range 3 .. 3;
      GioPDis4      at 16#0# range 4 .. 4;
      GioPDis5      at 16#0# range 5 .. 5;
      GioPDis6      at 16#0# range 6 .. 6;
      GioPDis7      at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- PSel_Register --
   -------------------

   subtype PSel_GioPSel0_Field is TMS570LC43xx.Bit;
   subtype PSel_GioPSel1_Field is TMS570LC43xx.Bit;
   subtype PSel_GioPSel2_Field is TMS570LC43xx.Bit;
   subtype PSel_GioPSel3_Field is TMS570LC43xx.Bit;
   subtype PSel_GioPSel4_Field is TMS570LC43xx.Bit;
   subtype PSel_GioPSel5_Field is TMS570LC43xx.Bit;
   subtype PSel_GioPSel6_Field is TMS570LC43xx.Bit;
   subtype PSel_GioPSel7_Field is TMS570LC43xx.Bit;
   subtype PSel_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Pull Select Gio B
   type PSel_Register is record
      --  GIO pull disable for port n
      GioPSel0      : PSel_GioPSel0_Field := 16#0#;
      --  GIO pull disable for port n
      GioPSel1      : PSel_GioPSel1_Field := 16#0#;
      --  GIO pull disable for port n
      GioPSel2      : PSel_GioPSel2_Field := 16#0#;
      --  GIO pull disable for port n
      GioPSel3      : PSel_GioPSel3_Field := 16#0#;
      --  GIO pull disable for port n
      GioPSel4      : PSel_GioPSel4_Field := 16#0#;
      --  GIO pull disable for port n
      GioPSel5      : PSel_GioPSel5_Field := 16#0#;
      --  GIO pull disable for port n
      GioPSel6      : PSel_GioPSel6_Field := 16#0#;
      --  GIO pull disable for port n
      GioPSel7      : PSel_GioPSel7_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : PSel_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSel_Register use record
      GioPSel0      at 16#0# range 0 .. 0;
      GioPSel1      at 16#0# range 1 .. 1;
      GioPSel2      at 16#0# range 2 .. 2;
      GioPSel3      at 16#0# range 3 .. 3;
      GioPSel4      at 16#0# range 4 .. 4;
      GioPSel5      at 16#0# range 5 .. 5;
      GioPSel6      at 16#0# range 6 .. 6;
      GioPSel7      at 16#0# range 7 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Input Output
   type GioB_Peripheral is record
      --  Data Direction Gio B
      Dir  : Dir_Register;
      --  Data Input Gio B
      DIn  : DIn_Register;
      --  Data Output Gio B
      DOut : DOut_Register;
      --  Data Set Gio B
      DSet : DSet_Register;
      --  Data Clear Gio B
      DClr : DClr_Register;
      --  Open Drain Gio B
      PDr  : PDr_Register;
      --  Pull Disable Gio B
      PDis : PDis_Register;
      --  Pull Select Gio B
      PSel : PSel_Register;
      --  Slew Rate Select Gio B
      Srs  : TMS570LC43xx.Word;
   end record
     with Volatile;

   for GioB_Peripheral use record
      Dir  at 16#54# range 0 .. 31;
      DIn  at 16#58# range 0 .. 31;
      DOut at 16#5C# range 0 .. 31;
      DSet at 16#60# range 0 .. 31;
      DClr at 16#64# range 0 .. 31;
      PDr  at 16#68# range 0 .. 31;
      PDis at 16#6C# range 0 .. 31;
      PSel at 16#70# range 0 .. 31;
      Srs  at 16#138# range 0 .. 31;
   end record;

   --  General Purpose Input Output
   GioB_Periph : aliased GioB_Peripheral
     with Import, Address => GioB_Base;

end TMS570LC43xx.GioB;
