--  This spec has been automatically generated from hercules_htu_spec_1.1.1d.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.HTU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  HET Transfer Unit
   type HTU_Peripheral is record
      --  Global Control Register
      GlbCtrl    : TMS570LC43xx.Word;
      --  Control Packet Enable Register
      CPEna      : TMS570LC43xx.Word;
      --  Control Packet (CP) Busy Register 0
      Busy0      : TMS570LC43xx.Word;
      --  Control Packet (CP) Busy Register 1
      Busy1      : TMS570LC43xx.Word;
      --  Control Packet (CP) Busy Register 2
      Busy2      : TMS570LC43xx.Word;
      --  Control Packet (CP) Busy Register 3
      Busy3      : TMS570LC43xx.Word;
      --  Active Control Packet Register
      ACp        : TMS570LC43xx.Word;
      --  Request Lost and Bus Error Control Register
      RLBECtrl   : TMS570LC43xx.Word;
      --  Buffer Full Interrupt Enable Set Register
      BFIntSet   : TMS570LC43xx.Word;
      --  Buffer Full Interrupt Enable Clear Register
      BFIntClr   : TMS570LC43xx.Word;
      --  Interrupt Mapping Register
      IntMap     : TMS570LC43xx.Word;
      --  Interrupt Offset Register 0
      IntOffst0  : TMS570LC43xx.Word;
      --  Interrupt Offset Register 1
      IntOffst1  : TMS570LC43xx.Word;
      --  Buffer Initialization Mode Register
      BIm        : TMS570LC43xx.Word;
      --  Request Lost Flag Register
      RLostFlg   : TMS570LC43xx.Word;
      --  Buffer Full Interrupt Flag Register
      BFIntFlg   : TMS570LC43xx.Word;
      --  BER Interrupt Flag Register
      BerIntFlg  : TMS570LC43xx.Word;
      --  Memory Protection 1 Start Address
      Mp1Strt    : TMS570LC43xx.Word;
      --  Memory Protection 1 End Address
      Mp1End     : TMS570LC43xx.Word;
      --  Debug Control Register
      DbgCtrl    : TMS570LC43xx.Word;
      --  Watch Point Register
      WpReg      : TMS570LC43xx.Word;
      --  Watch Mask Register
      WpMsk      : TMS570LC43xx.Word;
      --  Module Identification Register
      Id         : TMS570LC43xx.Word;
      --  Parity Control Register
      ParCtrl    : TMS570LC43xx.Word;
      --  Parity Address Register
      ParAddr    : TMS570LC43xx.Word;
      --  Memory Protection Control and Status Register
      MpCtrlStat : TMS570LC43xx.Word;
      --  Memory Protection Start Address Register
      Mp0Strt    : TMS570LC43xx.Word;
      --  Memory Protection End Address Register
      Mp0End     : TMS570LC43xx.Word;
   end record
     with Volatile;

   for HTU_Peripheral use record
      GlbCtrl    at 16#0# range 0 .. 31;
      CPEna      at 16#4# range 0 .. 31;
      Busy0      at 16#8# range 0 .. 31;
      Busy1      at 16#C# range 0 .. 31;
      Busy2      at 16#10# range 0 .. 31;
      Busy3      at 16#14# range 0 .. 31;
      ACp        at 16#18# range 0 .. 31;
      RLBECtrl   at 16#20# range 0 .. 31;
      BFIntSet   at 16#24# range 0 .. 31;
      BFIntClr   at 16#28# range 0 .. 31;
      IntMap     at 16#2C# range 0 .. 31;
      IntOffst0  at 16#34# range 0 .. 31;
      IntOffst1  at 16#38# range 0 .. 31;
      BIm        at 16#3C# range 0 .. 31;
      RLostFlg   at 16#40# range 0 .. 31;
      BFIntFlg   at 16#44# range 0 .. 31;
      BerIntFlg  at 16#48# range 0 .. 31;
      Mp1Strt    at 16#4C# range 0 .. 31;
      Mp1End     at 16#50# range 0 .. 31;
      DbgCtrl    at 16#54# range 0 .. 31;
      WpReg      at 16#58# range 0 .. 31;
      WpMsk      at 16#5C# range 0 .. 31;
      Id         at 16#60# range 0 .. 31;
      ParCtrl    at 16#64# range 0 .. 31;
      ParAddr    at 16#68# range 0 .. 31;
      MpCtrlStat at 16#70# range 0 .. 31;
      Mp0Strt    at 16#74# range 0 .. 31;
      Mp0End     at 16#78# range 0 .. 31;
   end record;

   --  HET Transfer Unit
   Htu1_Periph : aliased HTU_Peripheral
     with Import, Address => Htu1_Base;

   --  HET Transfer Unit
   Htu2_Periph : aliased HTU_Peripheral
     with Import, Address => Htu2_Base;

end TMS570LC43xx.HTU;
