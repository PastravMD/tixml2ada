--  This spec has been automatically generated from hercules_pmm_tms570lc43xx.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.PMM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Power Management Module
   type PMM_Peripheral is record
      --  Logic Power Domain Control Register
      LogicPDCtrl0       : TMS570LC43xx.Word;
      --  Logic Power Domain Control Register
      LogicPDCtrl1       : TMS570LC43xx.Word;
      --  Logic Power Domain Control Register
      LogicPDCtrl2       : TMS570LC43xx.Word;
      --  Logic Power Domain Control Register
      LogicPDCtrl3       : TMS570LC43xx.Word;
      --  Memory Power Domain Control Register
      MemPDCtrl0         : TMS570LC43xx.Word;
      --  Memory Power Domain Control Register
      MemPDCtrl1         : TMS570LC43xx.Word;
      --  Power Domain Clock Disable Register
      PDClkDis           : TMS570LC43xx.Word;
      --  Power Domain Clock Disable SET Register
      PDClkDisSet        : TMS570LC43xx.Word;
      --  Power Domain Clock Disable CLEAR Register
      PDClkDisClr        : TMS570LC43xx.Word;
      --  Isolation Extension Register
      IsoExtend          : TMS570LC43xx.Word;
      --  Isolation Extension SET Register
      IsoExtendSet       : TMS570LC43xx.Word;
      --  Isolation Extension CLEAR Register
      IsoExtendClr       : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat0    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat1    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat2    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat3    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat4    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat5    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat6    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat7    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat8    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat9    : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat10   : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat11   : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat12   : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat13   : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat14   : TMS570LC43xx.Word;
      --  Logic Power Domain Power Status
      LogicPDPwrStat15   : TMS570LC43xx.Word;
      --  Memory Power Domain Power Status
      MemPwrStat0        : TMS570LC43xx.Word;
      --  Memory Power Domain Power Status
      MemPwrStat1        : TMS570LC43xx.Word;
      --  Memory Power Domain Power Status
      MemPwrStat2        : TMS570LC43xx.Word;
      --  Memory Power Domain Power Status
      MemPwrStat3        : TMS570LC43xx.Word;
      --  Memory Power Domain Power Status
      MemPwrStat4        : TMS570LC43xx.Word;
      --  Memory Power Domain Power Status
      MemPwrStat5        : TMS570LC43xx.Word;
      --  Memory Power Domain Power Status
      MemPwrStat6        : TMS570LC43xx.Word;
      --  Memory Power Domain Power Status
      MemPwrStat7        : TMS570LC43xx.Word;
      --  Global Control Register1
      GlobalCtrl1        : TMS570LC43xx.Word;
      --  Global Control Register2
      GlobalCtrl2        : TMS570LC43xx.Word;
      --  Global Status Register
      GlobalStatus       : TMS570LC43xx.Word;
      --  PSCON Diagnostic Compare Key Register
      PsconDiagCompKey   : TMS570LC43xx.Word;
      --  LogicPD PSCON Diagnostic Compare Status Register1
      PsconDiagCompStat1 : TMS570LC43xx.Word;
      --  LogicPD PSCON Diagnostic Compare Status Register2
      PsconDiagCompStat2 : TMS570LC43xx.Word;
      --  Memory PD PSCON Diagnostic Compare Status Register1
      MPDDiaCompStat1    : TMS570LC43xx.Word;
      --  Memory PD PSCON Diagnostic Compare Status Register2
      MPDDiaCompStat2    : TMS570LC43xx.Word;
      --  Isolation Diagnostic Status
      IsoDiaStat         : TMS570LC43xx.Word;
   end record
     with Volatile;

   for PMM_Peripheral use record
      LogicPDCtrl0       at 16#0# range 0 .. 31;
      LogicPDCtrl1       at 16#4# range 0 .. 31;
      LogicPDCtrl2       at 16#8# range 0 .. 31;
      LogicPDCtrl3       at 16#C# range 0 .. 31;
      MemPDCtrl0         at 16#10# range 0 .. 31;
      MemPDCtrl1         at 16#14# range 0 .. 31;
      PDClkDis           at 16#20# range 0 .. 31;
      PDClkDisSet        at 16#24# range 0 .. 31;
      PDClkDisClr        at 16#28# range 0 .. 31;
      IsoExtend          at 16#30# range 0 .. 31;
      IsoExtendSet       at 16#34# range 0 .. 31;
      IsoExtendClr       at 16#38# range 0 .. 31;
      LogicPDPwrStat0    at 16#40# range 0 .. 31;
      LogicPDPwrStat1    at 16#44# range 0 .. 31;
      LogicPDPwrStat2    at 16#48# range 0 .. 31;
      LogicPDPwrStat3    at 16#4C# range 0 .. 31;
      LogicPDPwrStat4    at 16#50# range 0 .. 31;
      LogicPDPwrStat5    at 16#54# range 0 .. 31;
      LogicPDPwrStat6    at 16#58# range 0 .. 31;
      LogicPDPwrStat7    at 16#5C# range 0 .. 31;
      LogicPDPwrStat8    at 16#60# range 0 .. 31;
      LogicPDPwrStat9    at 16#64# range 0 .. 31;
      LogicPDPwrStat10   at 16#68# range 0 .. 31;
      LogicPDPwrStat11   at 16#6C# range 0 .. 31;
      LogicPDPwrStat12   at 16#70# range 0 .. 31;
      LogicPDPwrStat13   at 16#74# range 0 .. 31;
      LogicPDPwrStat14   at 16#78# range 0 .. 31;
      LogicPDPwrStat15   at 16#7C# range 0 .. 31;
      MemPwrStat0        at 16#80# range 0 .. 31;
      MemPwrStat1        at 16#84# range 0 .. 31;
      MemPwrStat2        at 16#88# range 0 .. 31;
      MemPwrStat3        at 16#8C# range 0 .. 31;
      MemPwrStat4        at 16#90# range 0 .. 31;
      MemPwrStat5        at 16#94# range 0 .. 31;
      MemPwrStat6        at 16#98# range 0 .. 31;
      MemPwrStat7        at 16#9C# range 0 .. 31;
      GlobalCtrl1        at 16#A0# range 0 .. 31;
      GlobalCtrl2        at 16#A4# range 0 .. 31;
      GlobalStatus       at 16#A8# range 0 .. 31;
      PsconDiagCompKey   at 16#AC# range 0 .. 31;
      PsconDiagCompStat1 at 16#B0# range 0 .. 31;
      PsconDiagCompStat2 at 16#B4# range 0 .. 31;
      MPDDiaCompStat1    at 16#B8# range 0 .. 31;
      MPDDiaCompStat2    at 16#BC# range 0 .. 31;
      IsoDiaStat         at 16#C0# range 0 .. 31;
   end record;

   --  Power Management Module
   PMM_Periph : aliased PMM_Peripheral
     with Import, Address => PMM_Base;

end TMS570LC43xx.PMM;
