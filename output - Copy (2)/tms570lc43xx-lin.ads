--  This spec has been automatically generated from hercules_sciblin_spec_2.1.2.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Lin is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Communications Interface
   type Lin_Peripheral is record
      --  global control register
      GlbCtrl0    : TMS570LC43xx.Word;
      --  global control register
      GlbCtrl1    : TMS570LC43xx.Word;
      --  global control register
      GlbCtrl2    : TMS570LC43xx.Word;
      --  Set Interrupt Register
      SetInt      : TMS570LC43xx.Word;
      --  Clear Interrupt Register
      ClearInt    : TMS570LC43xx.Word;
      --  Set Interrupt Level Register
      SetIntLVL   : TMS570LC43xx.Word;
      --  Clear Interrupt Level Register
      ClearIntLVL : TMS570LC43xx.Word;
      --  Flags Register
      Flr         : TMS570LC43xx.Word;
      --  Interrupt Vector Offset 0
      IntVect0    : TMS570LC43xx.Word;
      --  Interrupt Vector Offset 1
      IntVect1    : TMS570LC43xx.Word;
      --  Format Control Register
      Format      : TMS570LC43xx.Word;
      --  Baud Rate Selection Register
      Brsr        : TMS570LC43xx.Word;
      --  SCI Data Buffer
      Ed          : TMS570LC43xx.Word;
      --  SCI Data Buffer
      Rd          : TMS570LC43xx.Word;
      --  SCI Data Buffer
      Td          : TMS570LC43xx.Word;
      --  Pin Control 0
      Fun         : TMS570LC43xx.Word;
      --  Pin Control 1
      Dir         : TMS570LC43xx.Word;
      --  Pin Control 2
      DIn         : TMS570LC43xx.Word;
      --  Pin Control 3
      DOut        : TMS570LC43xx.Word;
      --  Pin Control 4
      DSet        : TMS570LC43xx.Word;
      --  Pin Control 5
      DClr        : TMS570LC43xx.Word;
      --  Pin Control 6
      PDr         : TMS570LC43xx.Word;
      --  Pin Control 7
      PDis        : TMS570LC43xx.Word;
      --  Pin Control 8
      PSel        : TMS570LC43xx.Word;
      --  BLinCompARE Register
      LinComp     : TMS570LC43xx.Word;
      --  LinRd0 Register
      LinRd0      : TMS570LC43xx.Word;
      --  LinRd1 Register
      LinRd1      : TMS570LC43xx.Word;
      --  LinMask Register
      LinMask     : TMS570LC43xx.Word;
      --  LinId Register
      LinId       : TMS570LC43xx.Word;
      --  LIntD0 Register
      LinTd0      : TMS570LC43xx.Word;
      --  LIntD1 Register
      LinTd1      : TMS570LC43xx.Word;
      --  Maximum Baud Rate Selection Register
      MBrsr       : TMS570LC43xx.Word;
      --  Slew Rate Control Register
      SrSel       : TMS570LC43xx.Word;
      --  IODFT for BLin moduler
      IoDftCtrl   : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Lin_Peripheral use record
      GlbCtrl0    at 16#0# range 0 .. 31;
      GlbCtrl1    at 16#4# range 0 .. 31;
      GlbCtrl2    at 16#8# range 0 .. 31;
      SetInt      at 16#C# range 0 .. 31;
      ClearInt    at 16#10# range 0 .. 31;
      SetIntLVL   at 16#14# range 0 .. 31;
      ClearIntLVL at 16#18# range 0 .. 31;
      Flr         at 16#1C# range 0 .. 31;
      IntVect0    at 16#20# range 0 .. 31;
      IntVect1    at 16#24# range 0 .. 31;
      Format      at 16#28# range 0 .. 31;
      Brsr        at 16#2C# range 0 .. 31;
      Ed          at 16#30# range 0 .. 31;
      Rd          at 16#34# range 0 .. 31;
      Td          at 16#38# range 0 .. 31;
      Fun         at 16#3C# range 0 .. 31;
      Dir         at 16#40# range 0 .. 31;
      DIn         at 16#44# range 0 .. 31;
      DOut        at 16#48# range 0 .. 31;
      DSet        at 16#4C# range 0 .. 31;
      DClr        at 16#50# range 0 .. 31;
      PDr         at 16#54# range 0 .. 31;
      PDis        at 16#58# range 0 .. 31;
      PSel        at 16#5C# range 0 .. 31;
      LinComp     at 16#60# range 0 .. 31;
      LinRd0      at 16#64# range 0 .. 31;
      LinRd1      at 16#68# range 0 .. 31;
      LinMask     at 16#6C# range 0 .. 31;
      LinId       at 16#70# range 0 .. 31;
      LinTd0      at 16#74# range 0 .. 31;
      LinTd1      at 16#78# range 0 .. 31;
      MBrsr       at 16#7C# range 0 .. 31;
      SrSel       at 16#80# range 0 .. 31;
      IoDftCtrl   at 16#90# range 0 .. 31;
   end record;

   --  Serial Communications Interface
   Lin1_Periph : aliased Lin_Peripheral
     with Import, Address => Lin1_Base;

   --  Serial Communications Interface
   Sci3_Periph : aliased Lin_Peripheral
     with Import, Address => Sci3_Base;

   --  Serial Communications Interface
   Lin2_Periph : aliased Lin_Peripheral
     with Import, Address => Lin2_Base;

   --  Serial Communications Interface
   Sci4_Periph : aliased Lin_Peripheral
     with Import, Address => Sci4_Base;

end TMS570LC43xx.Lin;
