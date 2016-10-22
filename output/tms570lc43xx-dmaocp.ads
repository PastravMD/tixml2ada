--  This spec has been automatically generated from hercules_dmaocp_spec_0.2.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.DMAOCP is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Direct Memory Access
   type Dma_Peripheral is record
      --  Global Control Register
      GlbCtrl         : TMS570LC43xx.Word;
      --  Channel Pending Register
      ChnPnd          : TMS570LC43xx.Word;
      --  Status Register
      Stat            : TMS570LC43xx.Word;
      --  H/W Channel Enable Set and Status Register
      HWChnEnaSet     : TMS570LC43xx.Word;
      --  H/W Channel Enable Reset and Status Register
      HWChnEnaRst     : TMS570LC43xx.Word;
      --  S/W Channel Enable Set and Status Register
      SWChnEnaSet     : TMS570LC43xx.Word;
      --  S/W Channel Enable Reset and Status Register
      SWChnEnaRst     : TMS570LC43xx.Word;
      --  Channel Priority Set Register
      ChnPrioSet      : TMS570LC43xx.Word;
      --  Channel Priority Reset
      ChnPrioRst      : TMS570LC43xx.Word;
      --  Global Channel Interrupt Enable Set
      GlbChnIntEnaSet : TMS570LC43xx.Word;
      --  Global Channel Interrupt Enable Reset
      GlbChnIntEnaRst : TMS570LC43xx.Word;
      --  Request Assignment Register 0
      ReqAssg0        : TMS570LC43xx.Word;
      --  Request Assignment Register 1
      ReqAssg1        : TMS570LC43xx.Word;
      --  Request Assignment Register 2
      ReqAssg2        : TMS570LC43xx.Word;
      --  Request Assignment Register 3
      ReqAssg3        : TMS570LC43xx.Word;
      --  Request Assignment Register 4
      ReqAssg4        : TMS570LC43xx.Word;
      --  Request Assignment Register 5
      ReqAssg5        : TMS570LC43xx.Word;
      --  Request Assignment Register 6
      ReqAssg6        : TMS570LC43xx.Word;
      --  Request Assignment Register 7
      ReqAssg7        : TMS570LC43xx.Word;
      --  Port Assignment Register 0
      PrtAssg0        : TMS570LC43xx.Word;
      --  Port Assignment Register 1
      PrtAssg1        : TMS570LC43xx.Word;
      --  Port Assignment Register 2
      PrtAssg2        : TMS570LC43xx.Word;
      --  Port Assignment Register 3
      PrtAssg3        : TMS570LC43xx.Word;
      --  FTC Interrupt Mapping Register
      FTCMap          : TMS570LC43xx.Word;
      --  LFS Interrupt Mapping Register
      LFSMap          : TMS570LC43xx.Word;
      --  HBC Interrupt Mapping Register
      HBCMap          : TMS570LC43xx.Word;
      --  BTC Interrupt Mapping Register
      BTCMap          : TMS570LC43xx.Word;
      --  BER Interrupt Mapping Register
      BERMap          : TMS570LC43xx.Word;
      --  FTC Interrupt Enable Set
      FTCIntEnaSet    : TMS570LC43xx.Word;
      --  FTC Interrupt Enable Reset
      FTCIntEnaRst    : TMS570LC43xx.Word;
      --  LFS Interrupt Enable Set
      LFSIntEnaSet    : TMS570LC43xx.Word;
      --  LFS Interrupt Enable Reset
      LFSIntEnaRst    : TMS570LC43xx.Word;
      --  HBC Interrupt Enable Set
      HBCIntEnaSet    : TMS570LC43xx.Word;
      --  HBC Interrupt Enable Reset
      HBCIntEnaRst    : TMS570LC43xx.Word;
      --  BTC Interrupt Enable Set
      BTCIntEnaSet    : TMS570LC43xx.Word;
      --  BTC Interrupt Enable Reset
      BTCIntEnaRst    : TMS570LC43xx.Word;
      --  Global Interrupt Flg Register
      GlbIntFlg       : TMS570LC43xx.Word;
      --  FTC Interrupt Flag Register
      FTCIntFlg       : TMS570LC43xx.Word;
      --  LFS Interrupt Flag Register
      LFSIntFlg       : TMS570LC43xx.Word;
      --  HBC Interrupt Flag Register
      HBCIntFlg       : TMS570LC43xx.Word;
      --  BER Interrupt Flag Register
      BTCIntFlg       : TMS570LC43xx.Word;
      --  BER Interrupt Flag Register
      BERIntFlg       : TMS570LC43xx.Word;
      --  FTCA Interrupt Channel Offset Register
      FTCAOffst       : TMS570LC43xx.Word;
      --  LFSA Interrupt Channel Offset Register
      LFSAOffst       : TMS570LC43xx.Word;
      --  HBCA Interrupt Channel Offset Register
      HBCAOffst       : TMS570LC43xx.Word;
      --  BTCA Interrupt Channel Offset Register
      BTCAOffst       : TMS570LC43xx.Word;
      --  BERA Interrupt Channel Offset Register
      BERAOffst       : TMS570LC43xx.Word;
      --  FTCB Interrupt Channel Offset Register
      FTCBOffst       : TMS570LC43xx.Word;
      --  LFSB Interrupt Channel Offset Register
      LSFBOffst       : TMS570LC43xx.Word;
      --  HBCB Interrupt Channel Offset Register
      HBCBOffst       : TMS570LC43xx.Word;
      --  BTCB Interrupt Channel Offset Register
      BTCBOffst       : TMS570LC43xx.Word;
      --  BERB Interrupt Channel Offset Register
      BERBOffst       : TMS570LC43xx.Word;
      --  Port Control Register
      PrtCtrl         : TMS570LC43xx.Word;
      --  RAM TEST Control
      RamTstCtrl      : TMS570LC43xx.Word;
      --  Debug Control
      DbgCtrl         : TMS570LC43xx.Word;
      --  Watchpoint Register
      WpReg           : TMS570LC43xx.Word;
      --  Watchpoint Mask Register
      WpMsk           : TMS570LC43xx.Word;
      --  Port A Active Channel Source Address Register
      PrtAChnSrcAddr  : TMS570LC43xx.Word;
      --  Port A Active Channel Destination Address Register
      PrtAChnDstAddr  : TMS570LC43xx.Word;
      --  Port A Active Channel Transfer Count Register
      PrtAChnTrCnt    : TMS570LC43xx.Word;
      --  Port B Active Channel Source Address Register
      PrtBChnSrcAddr  : TMS570LC43xx.Word;
      --  Port B Active Channel Destination Address Register
      PrtBChnDestAddr : TMS570LC43xx.Word;
      --  Port B Active Channel Transfer Count Register
      PrtBChnTrCnt    : TMS570LC43xx.Word;
      --  Parity Control Register
      ParCtrl         : TMS570LC43xx.Word;
      --  Parity Error Address Register
      ParErrAddr      : TMS570LC43xx.Word;
      --  Memory Protection Control Register
      MpCtrl          : TMS570LC43xx.Word;
      --  Memory Protection Status Register
      MpStat          : TMS570LC43xx.Word;
      --  Start Address of region 0
      Pr0Strt         : TMS570LC43xx.Word;
      --  End Address of region 0
      Pr0End          : TMS570LC43xx.Word;
      --  Start Address of region 0
      Pr1Strt         : TMS570LC43xx.Word;
      --  End Address of region 1
      Pr1End          : TMS570LC43xx.Word;
      --  Start Address of region 2
      Pr2Strt         : TMS570LC43xx.Word;
      --  End Address of region 2
      Pr2End          : TMS570LC43xx.Word;
      --  Start Address of region 3
      Pr3Strt         : TMS570LC43xx.Word;
      --  End Address of region 3
      Pr3End          : TMS570LC43xx.Word;
      --  Memory Protection Control Register2
      MpCtrl2         : TMS570LC43xx.Word;
      --  Memory Protection Status Register2
      MpStat2         : TMS570LC43xx.Word;
      --  Start Address of region 4
      Pr4Strt         : TMS570LC43xx.Word;
      --  End Address of region 4
      Pr4End          : TMS570LC43xx.Word;
      --  Start Address of region 5
      Pr5Strt         : TMS570LC43xx.Word;
      --  End Address of region 5
      Pr5End          : TMS570LC43xx.Word;
      --  Start Address of region 6
      Pr6Strt         : TMS570LC43xx.Word;
      --  End Address of region 6
      Pr6End          : TMS570LC43xx.Word;
      --  Start Address of region 7
      Pr7Strt         : TMS570LC43xx.Word;
      --  End Address of region 7
      Pr7End          : TMS570LC43xx.Word;
      --  Pattern Fill Control Register
      PFCtrl          : TMS570LC43xx.Word;
      --  Upper Pattern Fill Register
      UPFReg          : TMS570LC43xx.Word;
      --  Lower Pattern Fill Register
      LPFReg          : TMS570LC43xx.Word;
      --  Pattern Mask Control Register
      PMCtrl          : TMS570LC43xx.Word;
      --  Upper Pattern Mask Register
      UPMReg          : TMS570LC43xx.Word;
      --  Lower Pattern Mask Register
      LPMReg          : TMS570LC43xx.Word;
      --  Cull Configuration Register
      CullConReg      : TMS570LC43xx.Word;
      --  Single Bit ECC Control Register
      SEccCtrl        : TMS570LC43xx.Word;
      --  Single Bit ECC Error Address Register
      SEccAddr        : TMS570LC43xx.Word;
      --  Fifo A Status Register
      FifoAStat       : TMS570LC43xx.Word;
      --  Fifo B Status Register
      FifoBStat       : TMS570LC43xx.Word;
      --  FTC Interrupt Mapping Register 0
      FTCMap0         : TMS570LC43xx.Word;
      --  FTC Interrupt Mapping Register 1
      FTCMap1         : TMS570LC43xx.Word;
      --  LFS Interrupt Mapping Register 0
      LFSMap0         : TMS570LC43xx.Word;
      --  LFS Interrupt Mapping Register 1
      LFSMap1         : TMS570LC43xx.Word;
      --  HBC Interrupt Mapping Register 0
      HBCMap0         : TMS570LC43xx.Word;
      --  HBC Interrupt Mapping Register 1
      HBCMap1         : TMS570LC43xx.Word;
      --  BTC Interrupt Mapping Register 0
      BTCMap0         : TMS570LC43xx.Word;
      --  BTC Interrupt Mapping Register 1
      BTCMap1         : TMS570LC43xx.Word;
      --  BER Interrupt Mapping Register 0
      BERMap0         : TMS570LC43xx.Word;
      --  BER Interrupt Mapping Register 1
      BERMap1         : TMS570LC43xx.Word;
      --  FTC Interrupt Channel Offset Register for CPU3
      FTCCOffSet      : TMS570LC43xx.Word;
      --  LFS Interrupt Channel Offset Register for CPU3
      LFSCOffSet      : TMS570LC43xx.Word;
      --  HBC Interrupt Channel Offset Register for CPU3
      HBCCOffSet      : TMS570LC43xx.Word;
      --  BTC Interrupt Channel Offset Register for CPU3
      BTCCOffSet      : TMS570LC43xx.Word;
      --  BER Interrupt Channel Offset Register for CPU3
      BERCOffSet      : TMS570LC43xx.Word;
      --  FTC Interrupt Channel Offset Register for CPU4
      FTCDOffSet      : TMS570LC43xx.Word;
      --  LFS Interrupt Channel Offset Register for CPU4
      LFSDOffSet      : TMS570LC43xx.Word;
      --  HBC Interrupt Channel Offset Register for CPU4
      HBCDOffSet      : TMS570LC43xx.Word;
      --  BTC Interrupt Channel Offset Register for CPU4
      BTCDOffSet      : TMS570LC43xx.Word;
      --  BER Interrupt Channel Offset Register for CPU4
      BERDOffSet      : TMS570LC43xx.Word;
      --  Request Polarity Select Register1
      ReqPolSel1      : TMS570LC43xx.Word;
      --  Request Polarity Select Register0
      ReqPolSel0      : TMS570LC43xx.Word;
      --  TER Event Control Register
      TEREvtCtrl      : TMS570LC43xx.Word;
      --  TER Event Flag Register
      TEREvtFlag      : TMS570LC43xx.Word;
      --  TER Event Offset Register
      TEREvtOffset    : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Dma_Peripheral use record
      GlbCtrl         at 16#0# range 0 .. 31;
      ChnPnd          at 16#4# range 0 .. 31;
      Stat            at 16#C# range 0 .. 31;
      HWChnEnaSet     at 16#14# range 0 .. 31;
      HWChnEnaRst     at 16#1C# range 0 .. 31;
      SWChnEnaSet     at 16#24# range 0 .. 31;
      SWChnEnaRst     at 16#2C# range 0 .. 31;
      ChnPrioSet      at 16#34# range 0 .. 31;
      ChnPrioRst      at 16#3C# range 0 .. 31;
      GlbChnIntEnaSet at 16#44# range 0 .. 31;
      GlbChnIntEnaRst at 16#4C# range 0 .. 31;
      ReqAssg0        at 16#54# range 0 .. 31;
      ReqAssg1        at 16#58# range 0 .. 31;
      ReqAssg2        at 16#5C# range 0 .. 31;
      ReqAssg3        at 16#60# range 0 .. 31;
      ReqAssg4        at 16#64# range 0 .. 31;
      ReqAssg5        at 16#68# range 0 .. 31;
      ReqAssg6        at 16#6C# range 0 .. 31;
      ReqAssg7        at 16#70# range 0 .. 31;
      PrtAssg0        at 16#94# range 0 .. 31;
      PrtAssg1        at 16#98# range 0 .. 31;
      PrtAssg2        at 16#9C# range 0 .. 31;
      PrtAssg3        at 16#A0# range 0 .. 31;
      FTCMap          at 16#B4# range 0 .. 31;
      LFSMap          at 16#BC# range 0 .. 31;
      HBCMap          at 16#C4# range 0 .. 31;
      BTCMap          at 16#CC# range 0 .. 31;
      BERMap          at 16#D4# range 0 .. 31;
      FTCIntEnaSet    at 16#DC# range 0 .. 31;
      FTCIntEnaRst    at 16#E4# range 0 .. 31;
      LFSIntEnaSet    at 16#EC# range 0 .. 31;
      LFSIntEnaRst    at 16#F4# range 0 .. 31;
      HBCIntEnaSet    at 16#FC# range 0 .. 31;
      HBCIntEnaRst    at 16#104# range 0 .. 31;
      BTCIntEnaSet    at 16#10C# range 0 .. 31;
      BTCIntEnaRst    at 16#114# range 0 .. 31;
      GlbIntFlg       at 16#11C# range 0 .. 31;
      FTCIntFlg       at 16#124# range 0 .. 31;
      LFSIntFlg       at 16#12C# range 0 .. 31;
      HBCIntFlg       at 16#134# range 0 .. 31;
      BTCIntFlg       at 16#13C# range 0 .. 31;
      BERIntFlg       at 16#144# range 0 .. 31;
      FTCAOffst       at 16#14C# range 0 .. 31;
      LFSAOffst       at 16#150# range 0 .. 31;
      HBCAOffst       at 16#154# range 0 .. 31;
      BTCAOffst       at 16#158# range 0 .. 31;
      BERAOffst       at 16#15C# range 0 .. 31;
      FTCBOffst       at 16#160# range 0 .. 31;
      LSFBOffst       at 16#164# range 0 .. 31;
      HBCBOffst       at 16#168# range 0 .. 31;
      BTCBOffst       at 16#16C# range 0 .. 31;
      BERBOffst       at 16#170# range 0 .. 31;
      PrtCtrl         at 16#178# range 0 .. 31;
      RamTstCtrl      at 16#17C# range 0 .. 31;
      DbgCtrl         at 16#180# range 0 .. 31;
      WpReg           at 16#184# range 0 .. 31;
      WpMsk           at 16#188# range 0 .. 31;
      PrtAChnSrcAddr  at 16#18C# range 0 .. 31;
      PrtAChnDstAddr  at 16#190# range 0 .. 31;
      PrtAChnTrCnt    at 16#194# range 0 .. 31;
      PrtBChnSrcAddr  at 16#198# range 0 .. 31;
      PrtBChnDestAddr at 16#19C# range 0 .. 31;
      PrtBChnTrCnt    at 16#1A0# range 0 .. 31;
      ParCtrl         at 16#1A8# range 0 .. 31;
      ParErrAddr      at 16#1AC# range 0 .. 31;
      MpCtrl          at 16#1B0# range 0 .. 31;
      MpStat          at 16#1B4# range 0 .. 31;
      Pr0Strt         at 16#1B8# range 0 .. 31;
      Pr0End          at 16#1BC# range 0 .. 31;
      Pr1Strt         at 16#1C0# range 0 .. 31;
      Pr1End          at 16#1C4# range 0 .. 31;
      Pr2Strt         at 16#1C8# range 0 .. 31;
      Pr2End          at 16#1CC# range 0 .. 31;
      Pr3Strt         at 16#1D0# range 0 .. 31;
      Pr3End          at 16#1D4# range 0 .. 31;
      MpCtrl2         at 16#1D8# range 0 .. 31;
      MpStat2         at 16#1DC# range 0 .. 31;
      Pr4Strt         at 16#1E0# range 0 .. 31;
      Pr4End          at 16#1E4# range 0 .. 31;
      Pr5Strt         at 16#1E8# range 0 .. 31;
      Pr5End          at 16#1EC# range 0 .. 31;
      Pr6Strt         at 16#1F0# range 0 .. 31;
      Pr6End          at 16#1F4# range 0 .. 31;
      Pr7Strt         at 16#1F8# range 0 .. 31;
      Pr7End          at 16#1FC# range 0 .. 31;
      PFCtrl          at 16#200# range 0 .. 31;
      UPFReg          at 16#204# range 0 .. 31;
      LPFReg          at 16#208# range 0 .. 31;
      PMCtrl          at 16#210# range 0 .. 31;
      UPMReg          at 16#214# range 0 .. 31;
      LPMReg          at 16#218# range 0 .. 31;
      CullConReg      at 16#220# range 0 .. 31;
      SEccCtrl        at 16#228# range 0 .. 31;
      SEccAddr        at 16#230# range 0 .. 31;
      FifoAStat       at 16#240# range 0 .. 31;
      FifoBStat       at 16#244# range 0 .. 31;
      FTCMap0         at 16#254# range 0 .. 31;
      FTCMap1         at 16#258# range 0 .. 31;
      LFSMap0         at 16#25C# range 0 .. 31;
      LFSMap1         at 16#260# range 0 .. 31;
      HBCMap0         at 16#264# range 0 .. 31;
      HBCMap1         at 16#268# range 0 .. 31;
      BTCMap0         at 16#26C# range 0 .. 31;
      BTCMap1         at 16#270# range 0 .. 31;
      BERMap0         at 16#274# range 0 .. 31;
      BERMap1         at 16#278# range 0 .. 31;
      FTCCOffSet      at 16#2FC# range 0 .. 31;
      LFSCOffSet      at 16#300# range 0 .. 31;
      HBCCOffSet      at 16#304# range 0 .. 31;
      BTCCOffSet      at 16#308# range 0 .. 31;
      BERCOffSet      at 16#30C# range 0 .. 31;
      FTCDOffSet      at 16#310# range 0 .. 31;
      LFSDOffSet      at 16#314# range 0 .. 31;
      HBCDOffSet      at 16#318# range 0 .. 31;
      BTCDOffSet      at 16#31C# range 0 .. 31;
      BERDOffSet      at 16#320# range 0 .. 31;
      ReqPolSel1      at 16#330# range 0 .. 31;
      ReqPolSel0      at 16#334# range 0 .. 31;
      TEREvtCtrl      at 16#340# range 0 .. 31;
      TEREvtFlag      at 16#344# range 0 .. 31;
      TEREvtOffset    at 16#348# range 0 .. 31;
   end record;

   --  Direct Memory Access
   Dma_Periph : aliased Dma_Peripheral
     with Import, Address => Dma_Base;

end TMS570LC43xx.DMAOCP;
