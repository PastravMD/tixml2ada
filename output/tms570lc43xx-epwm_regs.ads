--  This spec has been automatically generated from hercules_ePWM_Type1_Registers_be.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.EPWM_REGS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  EPWM REGS Registers
   type EPWM_REGS_Peripheral is record
      --  Time Base Status Register
      TBSTS        : TMS570LC43xx.Short;
      --  Time Base Control Register
      TBCTL        : TMS570LC43xx.Short;
      --  Time Base Phase Register
      TBPHS        : TMS570LC43xx.Short;
      --  Time Base Period Register
      TBPRD        : TMS570LC43xx.Short;
      --  Time Base Counter Register
      TBCTR        : TMS570LC43xx.Short;
      --  Counter Compare Control Register
      CMPCTL       : TMS570LC43xx.Short;
      --  Counter Compare A Register
      CMPA         : TMS570LC43xx.Short;
      --  Action Qualifier Control Register For Output A
      AQCTLA       : TMS570LC43xx.Short;
      --  Counter Compare B Register
      CMPB         : TMS570LC43xx.Short;
      --  Action Qualifier Software Force Register
      AQSFRC       : TMS570LC43xx.Short;
      --  Action Qualifier Control Register For Output B
      AQCTLB       : TMS570LC43xx.Short;
      --  Dead-Band Generator Control Register
      DBCTL        : TMS570LC43xx.Short;
      --  Action Qualifier Continuous S/W Force Register
      AQCSFRC      : TMS570LC43xx.Short;
      --  Dead-Band Generator Falling Edge Delay Count Register
      DBFED        : TMS570LC43xx.Short;
      --  Dead-Band Generator Rising Edge Delay Count Register
      DBRED        : TMS570LC43xx.Short;
      --  Trip Zone Digital Comparator Select Register
      TZDCSEL      : TMS570LC43xx.Short;
      --  Trip Zone Select Register
      TZSEL        : TMS570LC43xx.Short;
      --  Trip Zone Enable Interrupt Register
      TZEINT       : TMS570LC43xx.Short;
      --  Trip Zone Control Register
      TZCTL        : TMS570LC43xx.Short;
      --  Trip Zone Clear Register
      TZCLR        : TMS570LC43xx.Short;
      --  Trip Zone Flag Register
      TZFLG        : TMS570LC43xx.Short;
      --  Event Trigger Selection Register
      ETSEL        : TMS570LC43xx.Short;
      --  Trip Zone Force Register
      TZFRC        : TMS570LC43xx.Short;
      --  Event Trigger Flag Register
      ETFLG        : TMS570LC43xx.Short;
      --  Event Trigger Pre-Scale Register
      ETPS         : TMS570LC43xx.Short;
      --  Event Trigger Force Register
      ETFRC        : TMS570LC43xx.Short;
      --  Event Trigger Clear Register
      ETCLR        : TMS570LC43xx.Short;
      --  PWM Chopper Control Register
      PCCTL        : TMS570LC43xx.Short;
      --  Digital Compare A Control Register
      DCACTL       : TMS570LC43xx.Short;
      --  Digital Compare Trip Select Register
      DCTRIPSEL    : TMS570LC43xx.Short;
      --  Digital Compare Filter Control Register
      DCFCTL       : TMS570LC43xx.Short;
      --  Digital Compare B Control Register
      DCBCTL       : TMS570LC43xx.Short;
      --  Digital Compare Filter Offset Register
      DCFOFFSET    : TMS570LC43xx.Short;
      --  Digital Compare Capture Control Register
      DCCAPCTL     : TMS570LC43xx.Short;
      --  Digital Compare Filter Window Register
      DCFWINDOW    : TMS570LC43xx.Short;
      --  Digital Compare Filter Offset Counter Register
      DCFOFFSETCNT : TMS570LC43xx.Short;
      --  Digital Compare Counter Capture Register
      DCCAP        : TMS570LC43xx.Short;
      --  Digital Compare Filter Window Counter Register
      DCFWINDOWCNT : TMS570LC43xx.Short;
   end record
     with Volatile;

   for EPWM_REGS_Peripheral use record
      TBSTS        at 16#0# range 0 .. 15;
      TBCTL        at 16#2# range 0 .. 15;
      TBPHS        at 16#4# range 0 .. 15;
      TBPRD        at 16#8# range 0 .. 15;
      TBCTR        at 16#A# range 0 .. 15;
      CMPCTL       at 16#C# range 0 .. 15;
      CMPA         at 16#10# range 0 .. 15;
      AQCTLA       at 16#14# range 0 .. 15;
      CMPB         at 16#16# range 0 .. 15;
      AQSFRC       at 16#18# range 0 .. 15;
      AQCTLB       at 16#1A# range 0 .. 15;
      DBCTL        at 16#1C# range 0 .. 15;
      AQCSFRC      at 16#1E# range 0 .. 15;
      DBFED        at 16#20# range 0 .. 15;
      DBRED        at 16#22# range 0 .. 15;
      TZDCSEL      at 16#24# range 0 .. 15;
      TZSEL        at 16#26# range 0 .. 15;
      TZEINT       at 16#28# range 0 .. 15;
      TZCTL        at 16#2A# range 0 .. 15;
      TZCLR        at 16#2C# range 0 .. 15;
      TZFLG        at 16#2E# range 0 .. 15;
      ETSEL        at 16#30# range 0 .. 15;
      TZFRC        at 16#32# range 0 .. 15;
      ETFLG        at 16#34# range 0 .. 15;
      ETPS         at 16#36# range 0 .. 15;
      ETFRC        at 16#38# range 0 .. 15;
      ETCLR        at 16#3A# range 0 .. 15;
      PCCTL        at 16#3E# range 0 .. 15;
      DCACTL       at 16#60# range 0 .. 15;
      DCTRIPSEL    at 16#62# range 0 .. 15;
      DCFCTL       at 16#64# range 0 .. 15;
      DCBCTL       at 16#66# range 0 .. 15;
      DCFOFFSET    at 16#68# range 0 .. 15;
      DCCAPCTL     at 16#6A# range 0 .. 15;
      DCFWINDOW    at 16#6C# range 0 .. 15;
      DCFOFFSETCNT at 16#6E# range 0 .. 15;
      DCCAP        at 16#70# range 0 .. 15;
      DCFWINDOWCNT at 16#72# range 0 .. 15;
   end record;

   --  EPWM REGS Registers
   ePWM1_Periph : aliased EPWM_REGS_Peripheral
     with Import, Address => ePWM1_Base;

   --  EPWM REGS Registers
   ePWM2_Periph : aliased EPWM_REGS_Peripheral
     with Import, Address => ePWM2_Base;

   --  EPWM REGS Registers
   ePWM3_Periph : aliased EPWM_REGS_Peripheral
     with Import, Address => ePWM3_Base;

   --  EPWM REGS Registers
   ePWM4_Periph : aliased EPWM_REGS_Peripheral
     with Import, Address => ePWM4_Base;

   --  EPWM REGS Registers
   ePWM5_Periph : aliased EPWM_REGS_Peripheral
     with Import, Address => ePWM5_Base;

   --  EPWM REGS Registers
   ePWM6_Periph : aliased EPWM_REGS_Peripheral
     with Import, Address => ePWM6_Base;

   --  EPWM REGS Registers
   ePWM7_Periph : aliased EPWM_REGS_Peripheral
     with Import, Address => ePWM7_Base;

end TMS570LC43xx.EPWM_REGS;
