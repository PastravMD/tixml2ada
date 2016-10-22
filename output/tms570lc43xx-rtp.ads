--  This spec has been automatically generated from hercules_rtp_spec_2.5.2.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Rtp is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Ram Trace Port
   type Rtp_Peripheral is record
      --  Global Control Register
      GlbCtrl   : TMS570LC43xx.Word;
      --  Trace Enable Register
      TrEna     : TMS570LC43xx.Word;
      --  Global Status Register
      Gsr       : TMS570LC43xx.Word;
      --  Ram 1 Trace Region 1 Register
      Ram1Reg1  : TMS570LC43xx.Word;
      --  Ram 1 Trace Region 2 Register
      Ram1Reg2  : TMS570LC43xx.Word;
      --  Ram 2 Trace Region 1 Register
      Ram2Reg1  : TMS570LC43xx.Word;
      --  Ram 2 Trace Region 2 Register
      Ram2Reg2  : TMS570LC43xx.Word;
      --  Ram 3 Trace Region 1 Register
      Ram3Reg1  : TMS570LC43xx.Word;
      --  Ram 3 Trace Region 2 Register
      Ram3Reg2  : TMS570LC43xx.Word;
      --  Peripheral Trace Region 1 Register
      PerReg1   : TMS570LC43xx.Word;
      --  Peripheral Trace Region 2 Register
      PerReg2   : TMS570LC43xx.Word;
      --  Direct Data Mode Write Register
      DdmW      : TMS570LC43xx.Word;
      --  Pin Control 0
      Fun       : TMS570LC43xx.Word;
      --  Pin Control 1
      Dir       : TMS570LC43xx.Word;
      --  Pin Control 2
      DIn       : TMS570LC43xx.Word;
      --  Pin Control 3
      DOut      : TMS570LC43xx.Word;
      --  Pin Control 4
      DSet      : TMS570LC43xx.Word;
      --  Pin Control 5
      DClr      : TMS570LC43xx.Word;
      --  Pin Control 6
      PDr       : TMS570LC43xx.Word;
      --  Pin Control 7
      PDis      : TMS570LC43xx.Word;
      --  Pin Control 8
      PSel      : TMS570LC43xx.Word;
      --  IODFT CONTROL
      IoDftCtrl : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Rtp_Peripheral use record
      GlbCtrl   at 16#0# range 0 .. 31;
      TrEna     at 16#4# range 0 .. 31;
      Gsr       at 16#8# range 0 .. 31;
      Ram1Reg1  at 16#C# range 0 .. 31;
      Ram1Reg2  at 16#10# range 0 .. 31;
      Ram2Reg1  at 16#14# range 0 .. 31;
      Ram2Reg2  at 16#18# range 0 .. 31;
      Ram3Reg1  at 16#1C# range 0 .. 31;
      Ram3Reg2  at 16#20# range 0 .. 31;
      PerReg1   at 16#24# range 0 .. 31;
      PerReg2   at 16#28# range 0 .. 31;
      DdmW      at 16#2C# range 0 .. 31;
      Fun       at 16#34# range 0 .. 31;
      Dir       at 16#38# range 0 .. 31;
      DIn       at 16#3C# range 0 .. 31;
      DOut      at 16#40# range 0 .. 31;
      DSet      at 16#44# range 0 .. 31;
      DClr      at 16#48# range 0 .. 31;
      PDr       at 16#4C# range 0 .. 31;
      PDis      at 16#50# range 0 .. 31;
      PSel      at 16#54# range 0 .. 31;
      IoDftCtrl at 16#58# range 0 .. 31;
   end record;

   --  Ram Trace Port
   Rtp_Periph : aliased Rtp_Peripheral
     with Import, Address => Rtp_Base;

end TMS570LC43xx.Rtp;
