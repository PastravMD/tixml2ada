--  This spec has been automatically generated from hercules_awm_spec_1.2.5_no_lut.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Adm is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Analog to Digital Module
   type MibAdc1_Peripheral is record
      --  Reset Control Register
      RstCtrl          : TMS570LC43xx.Word;
      --  Operation Mode Control Register
      OpModeCtrl       : TMS570LC43xx.Word;
      --  Clock Prescaler
      ClckCtrl         : TMS570LC43xx.Word;
      --  Calibration Control Register
      CalCtrl          : TMS570LC43xx.Word;
      --  Ev Mode Control Register
      EvModeCtrl       : TMS570LC43xx.Word;
      --  G1 Mode Control Register
      G1ModeCtrl       : TMS570LC43xx.Word;
      --  G2 Mode Control Register
      G2ModeCtrl       : TMS570LC43xx.Word;
      --  Event Group Trigger Source Select
      EvSrc            : TMS570LC43xx.Word;
      --  Group 1 Trigger Source Select
      G1Src            : TMS570LC43xx.Word;
      --  Group 2 Trigger Source Select
      G2Src            : TMS570LC43xx.Word;
      --  Event Group Interrupt Enable
      EvIntEna         : TMS570LC43xx.Word;
      --  Group 1 Interrupt Enable
      G1IntEna         : TMS570LC43xx.Word;
      --  Group 2 Interrupt Enable
      G2IntEna         : TMS570LC43xx.Word;
      --  Event Group Interrupt Flg
      EvIntFlg         : TMS570LC43xx.Word;
      --  Group 1 Interrupt Flg
      G1IntFlg         : TMS570LC43xx.Word;
      --  Group 2 Interrupt Flg
      G2IntFlg         : TMS570LC43xx.Word;
      --  Event Group Interrupt Threshold Counter
      EvIntCtrl        : TMS570LC43xx.Word;
      --  Group 1 Interrupt Threshold Counter
      G1IntCtrl        : TMS570LC43xx.Word;
      --  Group 2 Interrupt Threshold Counter
      G2IntCtrl        : TMS570LC43xx.Word;
      --  Event Group Dma Control Register
      EvDmaCtrl        : TMS570LC43xx.Word;
      --  Group 1 Dma Control Register
      G1DmaCtrl        : TMS570LC43xx.Word;
      --  Group 2 Dma Control Register
      G2DmaCtrl        : TMS570LC43xx.Word;
      --  Buffer Boundary Control Register
      BndCtrl          : TMS570LC43xx.Word;
      --  Buffer End Boundary
      BndEnd           : TMS570LC43xx.Word;
      --  Event Group Sample Window
      EvSamp           : TMS570LC43xx.Word;
      --  Group 1 Sample Window
      G1Samp           : TMS570LC43xx.Word;
      --  Group 2 Sample Window
      G2Samp           : TMS570LC43xx.Word;
      --  Event Group Status Register
      EvSr             : TMS570LC43xx.Word;
      --  Group 1 Status Register
      G1Sr             : TMS570LC43xx.Word;
      --  Group 2 Status Register
      G2Sr             : TMS570LC43xx.Word;
      --  Event Group select register
      EvSel            : TMS570LC43xx.Word;
      --  Group 1 select register
      G1Sel            : TMS570LC43xx.Word;
      --  Group 2 select register
      G2Sel            : TMS570LC43xx.Word;
      --  Calibration Register
      CalR             : TMS570LC43xx.Word;
      --  State Macine Current State
      SmState          : TMS570LC43xx.Word;
      --  Last Conversion
      LastConv         : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer1        : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer2        : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer3        : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer4        : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer5        : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer6        : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer7        : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer8        : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer1        : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer2        : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer3        : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer4        : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer5        : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer6        : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer7        : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer8        : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer1        : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer2        : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer3        : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer4        : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer5        : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer6        : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer7        : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer8        : TMS570LC43xx.Word;
      --  Event Group Emu Buffer
      EvEmuBuffer      : TMS570LC43xx.Word;
      --  Group 1 Emu Buffer
      G1EmuBuffer      : TMS570LC43xx.Word;
      --  Group 2 Emu Buffer
      G2EmuBuffer      : TMS570LC43xx.Word;
      --  Event Group pin direction selection
      EvDir            : TMS570LC43xx.Word;
      --  Event Group pin data output
      EvDOut           : TMS570LC43xx.Word;
      --  Event Group pin input value
      EvDIn            : TMS570LC43xx.Word;
      --  Event Group pin set
      EvDSet           : TMS570LC43xx.Word;
      --  Event Group pin clear
      EvDClr           : TMS570LC43xx.Word;
      --  Event Group pin open-drain enable
      EvPDr            : TMS570LC43xx.Word;
      --  Event Group pin pull control enable
      EvPDis           : TMS570LC43xx.Word;
      --  Event Group pull select
      EvPSel           : TMS570LC43xx.Word;
      --  Event Group Discharge Control
      EvSampDisEn      : TMS570LC43xx.Word;
      --  Group 1 Discharge Control
      G1SampDisEn      : TMS570LC43xx.Word;
      --  Group 2 Discharge Control
      G2SampDisEn      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl1      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt1Msk       : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl2      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt2Msk       : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl3      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt3Msk       : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl4      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt4Msk       : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl5      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt5Msk       : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl6      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt6Msk       : TMS570LC43xx.Word;
      --  Magnitude Interrupt Enable Set
      MagThrIntEnaSet  : TMS570LC43xx.Word;
      --  Magnitude Interrupt Enable Clear
      MagThrIntEnaClr  : TMS570LC43xx.Word;
      --  Magnitude Interrupt Enable Flag
      MagThrIntFlg     : TMS570LC43xx.Word;
      --  Magnitude Interrupt Offset
      MagThrIntOffst   : TMS570LC43xx.Word;
      --  Event Group FIFO Reset Control
      EvFifoRstCtrl    : TMS570LC43xx.Word;
      --  Group 1 FIFO Reset Control
      G1FifoRstCtrl    : TMS570LC43xx.Word;
      --  Group 2 FIFO Reset Control
      G2FifoRstCtrl    : TMS570LC43xx.Word;
      --  Event Group RAM Pointer
      EvRamAddr        : TMS570LC43xx.Word;
      --  Group 1 RAM Pointer
      G1RamAddr        : TMS570LC43xx.Word;
      --  Group 2 RAM Pointer
      G2RamAddr        : TMS570LC43xx.Word;
      --  Parity Control
      ParCtrl          : TMS570LC43xx.Word;
      --  Parity Address
      ParAddr          : TMS570LC43xx.Word;
      --  Power up DLY Control
      PwrupDlyCtrl     : TMS570LC43xx.Word;
      --  Event Group Channel Selection Mode Control
      EvChnSelModeCtrl : TMS570LC43xx.Word;
      --  Group1 Channel Selection Mode Control
      G1ChnSelModeCtrl : TMS570LC43xx.Word;
      --  Group2 Channel Selection Mode Control
      G2ChnSelModeCtrl : TMS570LC43xx.Word;
      --  Event Group Current Count
      EvCurrCount      : TMS570LC43xx.Word;
      --  Group 1 Current Count
      G1CurrCount      : TMS570LC43xx.Word;
      --  Group 2 Current Count
      G2CurrCount      : TMS570LC43xx.Word;
      --  Event Group Max Count
      EvMaxCount       : TMS570LC43xx.Word;
      --  Group 1 Max Count
      G1MaxCount       : TMS570LC43xx.Word;
      --  Group 2 Max Count
      G2MaxCount       : TMS570LC43xx.Word;
   end record
     with Volatile;

   for MibAdc1_Peripheral use record
      RstCtrl          at 16#0# range 0 .. 31;
      OpModeCtrl       at 16#4# range 0 .. 31;
      ClckCtrl         at 16#8# range 0 .. 31;
      CalCtrl          at 16#C# range 0 .. 31;
      EvModeCtrl       at 16#10# range 0 .. 31;
      G1ModeCtrl       at 16#14# range 0 .. 31;
      G2ModeCtrl       at 16#18# range 0 .. 31;
      EvSrc            at 16#1C# range 0 .. 31;
      G1Src            at 16#20# range 0 .. 31;
      G2Src            at 16#24# range 0 .. 31;
      EvIntEna         at 16#28# range 0 .. 31;
      G1IntEna         at 16#2C# range 0 .. 31;
      G2IntEna         at 16#30# range 0 .. 31;
      EvIntFlg         at 16#34# range 0 .. 31;
      G1IntFlg         at 16#38# range 0 .. 31;
      G2IntFlg         at 16#3C# range 0 .. 31;
      EvIntCtrl        at 16#40# range 0 .. 31;
      G1IntCtrl        at 16#44# range 0 .. 31;
      G2IntCtrl        at 16#48# range 0 .. 31;
      EvDmaCtrl        at 16#4C# range 0 .. 31;
      G1DmaCtrl        at 16#50# range 0 .. 31;
      G2DmaCtrl        at 16#54# range 0 .. 31;
      BndCtrl          at 16#58# range 0 .. 31;
      BndEnd           at 16#5C# range 0 .. 31;
      EvSamp           at 16#60# range 0 .. 31;
      G1Samp           at 16#64# range 0 .. 31;
      G2Samp           at 16#68# range 0 .. 31;
      EvSr             at 16#6C# range 0 .. 31;
      G1Sr             at 16#70# range 0 .. 31;
      G2Sr             at 16#74# range 0 .. 31;
      EvSel            at 16#78# range 0 .. 31;
      G1Sel            at 16#7C# range 0 .. 31;
      G2Sel            at 16#80# range 0 .. 31;
      CalR             at 16#84# range 0 .. 31;
      SmState          at 16#88# range 0 .. 31;
      LastConv         at 16#8C# range 0 .. 31;
      EvBuffer1        at 16#90# range 0 .. 31;
      EvBuffer2        at 16#94# range 0 .. 31;
      EvBuffer3        at 16#98# range 0 .. 31;
      EvBuffer4        at 16#9C# range 0 .. 31;
      EvBuffer5        at 16#A0# range 0 .. 31;
      EvBuffer6        at 16#A4# range 0 .. 31;
      EvBuffer7        at 16#A8# range 0 .. 31;
      EvBuffer8        at 16#AC# range 0 .. 31;
      G1Buffer1        at 16#B0# range 0 .. 31;
      G1Buffer2        at 16#B4# range 0 .. 31;
      G1Buffer3        at 16#B8# range 0 .. 31;
      G1Buffer4        at 16#BC# range 0 .. 31;
      G1Buffer5        at 16#C0# range 0 .. 31;
      G1Buffer6        at 16#C4# range 0 .. 31;
      G1Buffer7        at 16#C8# range 0 .. 31;
      G1Buffer8        at 16#CC# range 0 .. 31;
      G2Buffer1        at 16#D0# range 0 .. 31;
      G2Buffer2        at 16#D4# range 0 .. 31;
      G2Buffer3        at 16#D8# range 0 .. 31;
      G2Buffer4        at 16#DC# range 0 .. 31;
      G2Buffer5        at 16#E0# range 0 .. 31;
      G2Buffer6        at 16#E4# range 0 .. 31;
      G2Buffer7        at 16#E8# range 0 .. 31;
      G2Buffer8        at 16#EC# range 0 .. 31;
      EvEmuBuffer      at 16#F0# range 0 .. 31;
      G1EmuBuffer      at 16#F4# range 0 .. 31;
      G2EmuBuffer      at 16#F8# range 0 .. 31;
      EvDir            at 16#FC# range 0 .. 31;
      EvDOut           at 16#100# range 0 .. 31;
      EvDIn            at 16#104# range 0 .. 31;
      EvDSet           at 16#108# range 0 .. 31;
      EvDClr           at 16#10C# range 0 .. 31;
      EvPDr            at 16#110# range 0 .. 31;
      EvPDis           at 16#114# range 0 .. 31;
      EvPSel           at 16#118# range 0 .. 31;
      EvSampDisEn      at 16#11C# range 0 .. 31;
      G1SampDisEn      at 16#120# range 0 .. 31;
      G2SampDisEn      at 16#124# range 0 .. 31;
      MagIntCtrl1      at 16#128# range 0 .. 31;
      MagInt1Msk       at 16#12C# range 0 .. 31;
      MagIntCtrl2      at 16#130# range 0 .. 31;
      MagInt2Msk       at 16#134# range 0 .. 31;
      MagIntCtrl3      at 16#138# range 0 .. 31;
      MagInt3Msk       at 16#13C# range 0 .. 31;
      MagIntCtrl4      at 16#140# range 0 .. 31;
      MagInt4Msk       at 16#144# range 0 .. 31;
      MagIntCtrl5      at 16#148# range 0 .. 31;
      MagInt5Msk       at 16#14C# range 0 .. 31;
      MagIntCtrl6      at 16#150# range 0 .. 31;
      MagInt6Msk       at 16#154# range 0 .. 31;
      MagThrIntEnaSet  at 16#158# range 0 .. 31;
      MagThrIntEnaClr  at 16#15C# range 0 .. 31;
      MagThrIntFlg     at 16#160# range 0 .. 31;
      MagThrIntOffst   at 16#164# range 0 .. 31;
      EvFifoRstCtrl    at 16#168# range 0 .. 31;
      G1FifoRstCtrl    at 16#16C# range 0 .. 31;
      G2FifoRstCtrl    at 16#170# range 0 .. 31;
      EvRamAddr        at 16#174# range 0 .. 31;
      G1RamAddr        at 16#178# range 0 .. 31;
      G2RamAddr        at 16#17C# range 0 .. 31;
      ParCtrl          at 16#180# range 0 .. 31;
      ParAddr          at 16#184# range 0 .. 31;
      PwrupDlyCtrl     at 16#188# range 0 .. 31;
      EvChnSelModeCtrl at 16#190# range 0 .. 31;
      G1ChnSelModeCtrl at 16#194# range 0 .. 31;
      G2ChnSelModeCtrl at 16#198# range 0 .. 31;
      EvCurrCount      at 16#19C# range 0 .. 31;
      G1CurrCount      at 16#1A0# range 0 .. 31;
      G2CurrCount      at 16#1A4# range 0 .. 31;
      EvMaxCount       at 16#1A8# range 0 .. 31;
      G1MaxCount       at 16#1AC# range 0 .. 31;
      G2MaxCount       at 16#1B0# range 0 .. 31;
   end record;

   --  Analog to Digital Module
   MibAdc1_Periph : aliased MibAdc1_Peripheral
     with Import, Address => MibAdc1_Base;

   --  Analog to Digital Module
   type MibAdc2_Peripheral is record
      --  Reset Control Register
      RstCtrl         : TMS570LC43xx.Word;
      --  Operation Mode Control Register
      OpModeCtrl      : TMS570LC43xx.Word;
      --  Clock Prescaler
      ClckCtrl        : TMS570LC43xx.Word;
      --  Calibration Control Register
      CalCtrl         : TMS570LC43xx.Word;
      --  Ev Mode Control Register
      EvModeCtrl      : TMS570LC43xx.Word;
      --  G1 Mode Control Register
      G1ModeCtrl      : TMS570LC43xx.Word;
      --  G2 Mode Control Register
      G2ModeCtrl      : TMS570LC43xx.Word;
      --  Event Group Trigger Source Select
      EvSrc           : TMS570LC43xx.Word;
      --  Group 1 Trigger Source Select
      G1Src           : TMS570LC43xx.Word;
      --  Group 2 Trigger Source Select
      G2Src           : TMS570LC43xx.Word;
      --  Event Group Interrupt Enable
      EvIntEna        : TMS570LC43xx.Word;
      --  Group 1 Interrupt Enable
      G1IntEna        : TMS570LC43xx.Word;
      --  Group 2 Interrupt Enable
      G2IntEna        : TMS570LC43xx.Word;
      --  Event Group Interrupt Flg
      EvIntFlg        : TMS570LC43xx.Word;
      --  Group 1 Interrupt Flg
      G1IntFlg        : TMS570LC43xx.Word;
      --  Group 2 Interrupt Flg
      G2IntFlg        : TMS570LC43xx.Word;
      --  Event Group Interrupt Threshold Counter
      EvIntCtrl       : TMS570LC43xx.Word;
      --  Group 1 Interrupt Threshold Counter
      G1IntCtrl       : TMS570LC43xx.Word;
      --  Group 2 Interrupt Threshold Counter
      G2IntCtrl       : TMS570LC43xx.Word;
      --  Event Group Dma Control Register
      EvDmaCtrl       : TMS570LC43xx.Word;
      --  Group 1 Dma Control Register
      G1DmaCtrl       : TMS570LC43xx.Word;
      --  Group 2 Dma Control Register
      G2DmaCtrl       : TMS570LC43xx.Word;
      --  Buffer Boundary Control Register
      BndCtrl         : TMS570LC43xx.Word;
      --  Buffer End Boundary
      BndEnd          : TMS570LC43xx.Word;
      --  Event Group Sample Window
      EvSamp          : TMS570LC43xx.Word;
      --  Group 1 Sample Window
      G1Samp          : TMS570LC43xx.Word;
      --  Group 2 Sample Window
      G2Samp          : TMS570LC43xx.Word;
      --  Event Group Status Register
      EvSr            : TMS570LC43xx.Word;
      --  Group 1 Status Register
      G1Sr            : TMS570LC43xx.Word;
      --  Group 2 Status Register
      G2Sr            : TMS570LC43xx.Word;
      --  Event Group select register
      EvSel           : TMS570LC43xx.Word;
      --  Group 1 select register
      G1Sel           : TMS570LC43xx.Word;
      --  Group 2 select register
      G2Sel           : TMS570LC43xx.Word;
      --  Calibration Register
      CalR            : TMS570LC43xx.Word;
      --  State Macine Current State
      SmState         : TMS570LC43xx.Word;
      --  Last Conversion
      LastConv        : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer1       : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer2       : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer3       : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer4       : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer5       : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer6       : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer7       : TMS570LC43xx.Word;
      --  Event Group Buffer
      EvBuffer8       : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer1       : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer2       : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer3       : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer4       : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer5       : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer6       : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer7       : TMS570LC43xx.Word;
      --  Group 1 Buffer
      G1Buffer8       : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer1       : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer2       : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer3       : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer4       : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer5       : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer6       : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer7       : TMS570LC43xx.Word;
      --  Group 2 Buffer
      G2Buffer8       : TMS570LC43xx.Word;
      --  Event Group Emu Buffer
      EvEmuBuffer     : TMS570LC43xx.Word;
      --  Group 1 Emu Buffer
      G1EmuBuffer     : TMS570LC43xx.Word;
      --  Group 2 Emu Buffer
      G2EmuBuffer     : TMS570LC43xx.Word;
      --  Event Group pin direction selection
      EvDir           : TMS570LC43xx.Word;
      --  Event Group pin data output
      EvDOut          : TMS570LC43xx.Word;
      --  Event Group pin input value
      EvDIn           : TMS570LC43xx.Word;
      --  Event Group pin set
      EvDSet          : TMS570LC43xx.Word;
      --  Event Group pin clear
      EvDClr          : TMS570LC43xx.Word;
      --  Event Group pin open-drain enable
      EvPDr           : TMS570LC43xx.Word;
      --  Event Group pin pull control enable
      EvPDis          : TMS570LC43xx.Word;
      --  Event Group pull select
      EvPSel          : TMS570LC43xx.Word;
      --  Event Group Discharge Control
      EvSampDisEn     : TMS570LC43xx.Word;
      --  Group 1 Discharge Control
      G1SampDisEn     : TMS570LC43xx.Word;
      --  Group 2 Discharge Control
      G2SampDisEn     : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl1     : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt1Msk      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl2     : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt2Msk      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl3     : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt3Msk      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl4     : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt4Msk      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl5     : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt5Msk      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Control
      MagIntCtrl6     : TMS570LC43xx.Word;
      --  Magnitude Interrupt Mask
      MagInt6Msk      : TMS570LC43xx.Word;
      --  Magnitude Interrupt Enable Set
      MagThrIntEnaSet : TMS570LC43xx.Word;
      --  Magnitude Interrupt Enable Clear
      MagThrIntEnaClr : TMS570LC43xx.Word;
      --  Magnitude Interrupt Enable Flag
      MagThrIntFlg    : TMS570LC43xx.Word;
      --  Magnitude Interrupt Offset
      MagThrIntOffst  : TMS570LC43xx.Word;
      --  Event Group FIFO Reset Control
      EvFifoRstCtrl   : TMS570LC43xx.Word;
      --  Group 1 FIFO Reset Control
      G1FifoRstCtrl   : TMS570LC43xx.Word;
      --  Group 2 FIFO Reset Control
      G2FifoRstCtrl   : TMS570LC43xx.Word;
      --  Event Group RAM Pointer
      EvRamAddr       : TMS570LC43xx.Word;
      --  Group 1 RAM Pointer
      G1RamAddr       : TMS570LC43xx.Word;
      --  Group 2 RAM Pointer
      G2RamAddr       : TMS570LC43xx.Word;
      --  Parity Control
      ParCtrl         : TMS570LC43xx.Word;
      --  Parity Address
      ParAddr         : TMS570LC43xx.Word;
      --  Power up DLY Control
      PwrupDlyCtrl    : TMS570LC43xx.Word;
   end record
     with Volatile;

   for MibAdc2_Peripheral use record
      RstCtrl         at 16#0# range 0 .. 31;
      OpModeCtrl      at 16#4# range 0 .. 31;
      ClckCtrl        at 16#8# range 0 .. 31;
      CalCtrl         at 16#C# range 0 .. 31;
      EvModeCtrl      at 16#10# range 0 .. 31;
      G1ModeCtrl      at 16#14# range 0 .. 31;
      G2ModeCtrl      at 16#18# range 0 .. 31;
      EvSrc           at 16#1C# range 0 .. 31;
      G1Src           at 16#20# range 0 .. 31;
      G2Src           at 16#24# range 0 .. 31;
      EvIntEna        at 16#28# range 0 .. 31;
      G1IntEna        at 16#2C# range 0 .. 31;
      G2IntEna        at 16#30# range 0 .. 31;
      EvIntFlg        at 16#34# range 0 .. 31;
      G1IntFlg        at 16#38# range 0 .. 31;
      G2IntFlg        at 16#3C# range 0 .. 31;
      EvIntCtrl       at 16#40# range 0 .. 31;
      G1IntCtrl       at 16#44# range 0 .. 31;
      G2IntCtrl       at 16#48# range 0 .. 31;
      EvDmaCtrl       at 16#4C# range 0 .. 31;
      G1DmaCtrl       at 16#50# range 0 .. 31;
      G2DmaCtrl       at 16#54# range 0 .. 31;
      BndCtrl         at 16#58# range 0 .. 31;
      BndEnd          at 16#5C# range 0 .. 31;
      EvSamp          at 16#60# range 0 .. 31;
      G1Samp          at 16#64# range 0 .. 31;
      G2Samp          at 16#68# range 0 .. 31;
      EvSr            at 16#6C# range 0 .. 31;
      G1Sr            at 16#70# range 0 .. 31;
      G2Sr            at 16#74# range 0 .. 31;
      EvSel           at 16#78# range 0 .. 31;
      G1Sel           at 16#7C# range 0 .. 31;
      G2Sel           at 16#80# range 0 .. 31;
      CalR            at 16#84# range 0 .. 31;
      SmState         at 16#88# range 0 .. 31;
      LastConv        at 16#8C# range 0 .. 31;
      EvBuffer1       at 16#90# range 0 .. 31;
      EvBuffer2       at 16#94# range 0 .. 31;
      EvBuffer3       at 16#98# range 0 .. 31;
      EvBuffer4       at 16#9C# range 0 .. 31;
      EvBuffer5       at 16#A0# range 0 .. 31;
      EvBuffer6       at 16#A4# range 0 .. 31;
      EvBuffer7       at 16#A8# range 0 .. 31;
      EvBuffer8       at 16#AC# range 0 .. 31;
      G1Buffer1       at 16#B0# range 0 .. 31;
      G1Buffer2       at 16#B4# range 0 .. 31;
      G1Buffer3       at 16#B8# range 0 .. 31;
      G1Buffer4       at 16#BC# range 0 .. 31;
      G1Buffer5       at 16#C0# range 0 .. 31;
      G1Buffer6       at 16#C4# range 0 .. 31;
      G1Buffer7       at 16#C8# range 0 .. 31;
      G1Buffer8       at 16#CC# range 0 .. 31;
      G2Buffer1       at 16#D0# range 0 .. 31;
      G2Buffer2       at 16#D4# range 0 .. 31;
      G2Buffer3       at 16#D8# range 0 .. 31;
      G2Buffer4       at 16#DC# range 0 .. 31;
      G2Buffer5       at 16#E0# range 0 .. 31;
      G2Buffer6       at 16#E4# range 0 .. 31;
      G2Buffer7       at 16#E8# range 0 .. 31;
      G2Buffer8       at 16#EC# range 0 .. 31;
      EvEmuBuffer     at 16#F0# range 0 .. 31;
      G1EmuBuffer     at 16#F4# range 0 .. 31;
      G2EmuBuffer     at 16#F8# range 0 .. 31;
      EvDir           at 16#FC# range 0 .. 31;
      EvDOut          at 16#100# range 0 .. 31;
      EvDIn           at 16#104# range 0 .. 31;
      EvDSet          at 16#108# range 0 .. 31;
      EvDClr          at 16#10C# range 0 .. 31;
      EvPDr           at 16#110# range 0 .. 31;
      EvPDis          at 16#114# range 0 .. 31;
      EvPSel          at 16#118# range 0 .. 31;
      EvSampDisEn     at 16#11C# range 0 .. 31;
      G1SampDisEn     at 16#120# range 0 .. 31;
      G2SampDisEn     at 16#124# range 0 .. 31;
      MagIntCtrl1     at 16#128# range 0 .. 31;
      MagInt1Msk      at 16#12C# range 0 .. 31;
      MagIntCtrl2     at 16#130# range 0 .. 31;
      MagInt2Msk      at 16#134# range 0 .. 31;
      MagIntCtrl3     at 16#138# range 0 .. 31;
      MagInt3Msk      at 16#13C# range 0 .. 31;
      MagIntCtrl4     at 16#140# range 0 .. 31;
      MagInt4Msk      at 16#144# range 0 .. 31;
      MagIntCtrl5     at 16#148# range 0 .. 31;
      MagInt5Msk      at 16#14C# range 0 .. 31;
      MagIntCtrl6     at 16#150# range 0 .. 31;
      MagInt6Msk      at 16#154# range 0 .. 31;
      MagThrIntEnaSet at 16#158# range 0 .. 31;
      MagThrIntEnaClr at 16#15C# range 0 .. 31;
      MagThrIntFlg    at 16#160# range 0 .. 31;
      MagThrIntOffst  at 16#164# range 0 .. 31;
      EvFifoRstCtrl   at 16#168# range 0 .. 31;
      G1FifoRstCtrl   at 16#16C# range 0 .. 31;
      G2FifoRstCtrl   at 16#170# range 0 .. 31;
      EvRamAddr       at 16#174# range 0 .. 31;
      G1RamAddr       at 16#178# range 0 .. 31;
      G2RamAddr       at 16#17C# range 0 .. 31;
      ParCtrl         at 16#180# range 0 .. 31;
      ParAddr         at 16#184# range 0 .. 31;
      PwrupDlyCtrl    at 16#188# range 0 .. 31;
   end record;

   --  Analog to Digital Module
   MibAdc2_Periph : aliased MibAdc2_Peripheral
     with Import, Address => MibAdc2_Base;

end TMS570LC43xx.Adm;
