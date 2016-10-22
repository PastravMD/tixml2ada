--  This spec has been automatically generated from hercules_mibspip_spec_3.9.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.MibSpi is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Multibuffered Serial Peripheral Interface
   type MibSpi_Peripheral is record
      --  Global control register 0
      GlbCtrl0           : TMS570LC43xx.Word;
      --  Global control register 1
      GlbCtrl1           : TMS570LC43xx.Word;
      --  Interrupt Register
      Int0               : TMS570LC43xx.Word;
      --  Interrupt Level Register
      IntLvl             : TMS570LC43xx.Word;
      --  Flag Register
      IntFlg             : TMS570LC43xx.Word;
      --  Pin Control 0
      Fun                : TMS570LC43xx.Word;
      --  Pin Control 1
      Dir                : TMS570LC43xx.Word;
      --  Pin Control 2
      DIn                : TMS570LC43xx.Word;
      --  Pin Control 3
      DOut               : TMS570LC43xx.Word;
      --  Pin Control 4
      DSet               : TMS570LC43xx.Word;
      --  Pin Control 5
      DClr               : TMS570LC43xx.Word;
      --  Pin Control 6
      PDr                : TMS570LC43xx.Word;
      --  Pin Control 7
      PDis               : TMS570LC43xx.Word;
      --  Pin Control 8
      PSel               : TMS570LC43xx.Word;
      --  Transmit Data Register 0
      TxDat0             : TMS570LC43xx.Word;
      --  Transmit Data Register 1
      TxDat1             : TMS570LC43xx.Word;
      --  Receive Buffer Register
      RxBuf              : TMS570LC43xx.Word;
      --  Emulation Register
      Emu                : TMS570LC43xx.Word;
      --  Delay Register
      Delay_k            : TMS570LC43xx.Word;
      --  Default Chip select Register
      DefCs              : TMS570LC43xx.Word;
      --  Data Format Register 0
      DatFmt0            : TMS570LC43xx.Word;
      --  Data Format Register 1
      DatFmt1            : TMS570LC43xx.Word;
      --  Data Format Register 2
      DatFmt2            : TMS570LC43xx.Word;
      --  Data Format Register 3
      DatFmt3            : TMS570LC43xx.Word;
      --  Transfer Group Interrupt Vector Register 0
      TgIntVec0          : TMS570LC43xx.Word;
      --  Transfer Group Interrupt Vector Register 1
      TgIntVec1          : TMS570LC43xx.Word;
      --  Pin Control Register 9
      SrSel              : TMS570LC43xx.Word;
      --  Parallel/Modulo Mode Control Register
      PmCtrl             : TMS570LC43xx.Word;
      --  MibSPI Enable Register
      MibSpiEna          : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Interrupt Enable Set Register
      TgIntEnaSet        : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Interrupt Enable Clear Register
      TgIntEnaClr        : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Interrupt Level Set Register
      TgIntLvlSet        : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Interrupt Level Clear Register
      TgIntLvlClr        : TMS570LC43xx.Word;
      --  Transfer Group Interrupt Flag Register
      TgIntFlg           : TMS570LC43xx.Word;
      --  Tick Cnt Register
      TickCnt            : TMS570LC43xx.Word;
      --  Last Transfer Group End Pointer
      LTgPend            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 0
      Tg0Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 1
      Tg1Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 2
      Tg2Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 3
      Tg3Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 4
      Tg4Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 5
      Tg5Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 6
      Tg6Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 7
      Tg7Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 8
      Tg8Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 9
      Tg9Ctrl            : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 10
      Tg10Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 11
      Tg11Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 12
      Tg12Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 13
      Tg13Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 14
      Tg14Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Transfer Group Control Register 15
      Tg15Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Dma Channel Control Register 0
      Dma0Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Dma Channel Control Register 1
      Dma1Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Dma Channel Control Register 2
      Dma2Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Dma Channel Control Register 3
      Dma3Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Dma Channel Control Register 4
      Dma4Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Dma Channel Control Register 5
      Dma5Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Dma Channel Control Register 6
      Dma6Ctrl           : TMS570LC43xx.Word;
      --  MibSPI Dma Channel Control Register 7
      Dma7Ctrl           : TMS570LC43xx.Word;
      --  ICnt Register 0
      Dma0Cnt            : TMS570LC43xx.Word;
      --  ICnt Register 1
      Dma1Cnt            : TMS570LC43xx.Word;
      --  ICnt Register 2
      Dma2Cnt            : TMS570LC43xx.Word;
      --  ICnt Register 3
      Dma3Cnt            : TMS570LC43xx.Word;
      --  ICnt Register 4
      Dma4Cnt            : TMS570LC43xx.Word;
      --  ICnt Register 5
      Dma5Cnt            : TMS570LC43xx.Word;
      --  ICnt Register 6
      Dma6Cnt            : TMS570LC43xx.Word;
      --  ICnt Register 7
      Dma7Cnt            : TMS570LC43xx.Word;
      --  Dma LARGE Cnt register
      DmaCntLen          : TMS570LC43xx.Word;
      --  Uncorrectable Parity Error Control Register
      UErrCtrl           : TMS570LC43xx.Word;
      --  Uncorrectable Parity Error Status Register
      UErrStat           : TMS570LC43xx.Word;
      --  Uncorrectable Parity Error Address Register
      UErrAddr1          : TMS570LC43xx.Word;
      --  Uncorrectable Parity Error Address Register
      UErrAddr0          : TMS570LC43xx.Word;
      --  Receive RAM Overrun Buffer Address Register
      RxOvrNBufAddr      : TMS570LC43xx.Word;
      --  IO Loopback Test Control Register
      IoLpbkTstCtrl      : TMS570LC43xx.Word;
      --  Extended Prescale Register 1
      EXTENDED_PRESCALE1 : TMS570LC43xx.Word;
      --  Extended Prescale Register 2
      EXTENDED_PRESCALE2 : TMS570LC43xx.Word;
      --  ECC Control register
      ECCDIAG_CTRL       : TMS570LC43xx.Word;
      --  ECC Diagnostic Status register
      ECCDIAG_STAT       : TMS570LC43xx.Word;
      --  Single Bit Error Address for RXRAM
      SBitErrAddr1       : TMS570LC43xx.Word;
      --  Single Bit Error Address for TXRAM
      SBitErrAddr0       : TMS570LC43xx.Word;
      --  Revision ID Register
      SPIREV             : TMS570LC43xx.Word;
   end record
     with Volatile;

   for MibSpi_Peripheral use record
      GlbCtrl0           at 16#0# range 0 .. 31;
      GlbCtrl1           at 16#4# range 0 .. 31;
      Int0               at 16#8# range 0 .. 31;
      IntLvl             at 16#C# range 0 .. 31;
      IntFlg             at 16#10# range 0 .. 31;
      Fun                at 16#14# range 0 .. 31;
      Dir                at 16#18# range 0 .. 31;
      DIn                at 16#1C# range 0 .. 31;
      DOut               at 16#20# range 0 .. 31;
      DSet               at 16#24# range 0 .. 31;
      DClr               at 16#28# range 0 .. 31;
      PDr                at 16#2C# range 0 .. 31;
      PDis               at 16#30# range 0 .. 31;
      PSel               at 16#34# range 0 .. 31;
      TxDat0             at 16#38# range 0 .. 31;
      TxDat1             at 16#3C# range 0 .. 31;
      RxBuf              at 16#40# range 0 .. 31;
      Emu                at 16#44# range 0 .. 31;
      Delay_k            at 16#48# range 0 .. 31;
      DefCs              at 16#4C# range 0 .. 31;
      DatFmt0            at 16#50# range 0 .. 31;
      DatFmt1            at 16#54# range 0 .. 31;
      DatFmt2            at 16#58# range 0 .. 31;
      DatFmt3            at 16#5C# range 0 .. 31;
      TgIntVec0          at 16#60# range 0 .. 31;
      TgIntVec1          at 16#64# range 0 .. 31;
      SrSel              at 16#68# range 0 .. 31;
      PmCtrl             at 16#6C# range 0 .. 31;
      MibSpiEna          at 16#70# range 0 .. 31;
      TgIntEnaSet        at 16#74# range 0 .. 31;
      TgIntEnaClr        at 16#78# range 0 .. 31;
      TgIntLvlSet        at 16#7C# range 0 .. 31;
      TgIntLvlClr        at 16#80# range 0 .. 31;
      TgIntFlg           at 16#84# range 0 .. 31;
      TickCnt            at 16#90# range 0 .. 31;
      LTgPend            at 16#94# range 0 .. 31;
      Tg0Ctrl            at 16#98# range 0 .. 31;
      Tg1Ctrl            at 16#9C# range 0 .. 31;
      Tg2Ctrl            at 16#A0# range 0 .. 31;
      Tg3Ctrl            at 16#A4# range 0 .. 31;
      Tg4Ctrl            at 16#A8# range 0 .. 31;
      Tg5Ctrl            at 16#AC# range 0 .. 31;
      Tg6Ctrl            at 16#B0# range 0 .. 31;
      Tg7Ctrl            at 16#B4# range 0 .. 31;
      Tg8Ctrl            at 16#B8# range 0 .. 31;
      Tg9Ctrl            at 16#BC# range 0 .. 31;
      Tg10Ctrl           at 16#C0# range 0 .. 31;
      Tg11Ctrl           at 16#C4# range 0 .. 31;
      Tg12Ctrl           at 16#C8# range 0 .. 31;
      Tg13Ctrl           at 16#CC# range 0 .. 31;
      Tg14Ctrl           at 16#D0# range 0 .. 31;
      Tg15Ctrl           at 16#D4# range 0 .. 31;
      Dma0Ctrl           at 16#D8# range 0 .. 31;
      Dma1Ctrl           at 16#DC# range 0 .. 31;
      Dma2Ctrl           at 16#E0# range 0 .. 31;
      Dma3Ctrl           at 16#E4# range 0 .. 31;
      Dma4Ctrl           at 16#E8# range 0 .. 31;
      Dma5Ctrl           at 16#EC# range 0 .. 31;
      Dma6Ctrl           at 16#F0# range 0 .. 31;
      Dma7Ctrl           at 16#F4# range 0 .. 31;
      Dma0Cnt            at 16#F8# range 0 .. 31;
      Dma1Cnt            at 16#FC# range 0 .. 31;
      Dma2Cnt            at 16#100# range 0 .. 31;
      Dma3Cnt            at 16#104# range 0 .. 31;
      Dma4Cnt            at 16#108# range 0 .. 31;
      Dma5Cnt            at 16#10C# range 0 .. 31;
      Dma6Cnt            at 16#110# range 0 .. 31;
      Dma7Cnt            at 16#114# range 0 .. 31;
      DmaCntLen          at 16#118# range 0 .. 31;
      UErrCtrl           at 16#120# range 0 .. 31;
      UErrStat           at 16#124# range 0 .. 31;
      UErrAddr1          at 16#128# range 0 .. 31;
      UErrAddr0          at 16#12C# range 0 .. 31;
      RxOvrNBufAddr      at 16#130# range 0 .. 31;
      IoLpbkTstCtrl      at 16#134# range 0 .. 31;
      EXTENDED_PRESCALE1 at 16#138# range 0 .. 31;
      EXTENDED_PRESCALE2 at 16#13C# range 0 .. 31;
      ECCDIAG_CTRL       at 16#140# range 0 .. 31;
      ECCDIAG_STAT       at 16#144# range 0 .. 31;
      SBitErrAddr1       at 16#148# range 0 .. 31;
      SBitErrAddr0       at 16#14C# range 0 .. 31;
      SPIREV             at 16#1FC# range 0 .. 31;
   end record;

   --  Multibuffered Serial Peripheral Interface
   MibSpi1_Periph : aliased MibSpi_Peripheral
     with Import, Address => MibSpi1_Base;

   --  Multibuffered Serial Peripheral Interface
   MibSpi2_Periph : aliased MibSpi_Peripheral
     with Import, Address => MibSpi2_Base;

   --  Multibuffered Serial Peripheral Interface
   MibSpi3_Periph : aliased MibSpi_Peripheral
     with Import, Address => MibSpi3_Base;

   --  Multibuffered Serial Peripheral Interface
   MibSpi4_Periph : aliased MibSpi_Peripheral
     with Import, Address => MibSpi4_Base;

   --  Multibuffered Serial Peripheral Interface
   MibSpip5_Periph : aliased MibSpi_Peripheral
     with Import, Address => MibSpip5_Base;

end TMS570LC43xx.MibSpi;
