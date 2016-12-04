--  This spec has been automatically generated from hercules_scm_spec_0.2.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.SCM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  SCR Control Module
   type Scm_Peripheral is record
      --  SCM REVID Register
      ScmRevID      : TMS570LC43xx.Word;
      --  SCM Control Register
      ScmCntrl      : TMS570LC43xx.Word;
      --  SCM Compare Threshold Counter Register
      ScmThreshold  : TMS570LC43xx.Word;
      --  SCM Inittiator Error0 Status Register
      ScmIaErr0Stat : TMS570LC43xx.Word;
      --  SCM Initiator Error1 Status Register
      ScmIaErr1Stat : TMS570LC43xx.Word;
      --  SCM Initiator Active Status Register
      ScmIaStat     : TMS570LC43xx.Word;
      --  SCM Target Active Status Register
      ScmTaStat     : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Scm_Peripheral use record
      ScmRevID      at 16#0# range 0 .. 31;
      ScmCntrl      at 16#4# range 0 .. 31;
      ScmThreshold  at 16#8# range 0 .. 31;
      ScmIaErr0Stat at 16#10# range 0 .. 31;
      ScmIaErr1Stat at 16#14# range 0 .. 31;
      ScmIaStat     at 16#18# range 0 .. 31;
      ScmTaStat     at 16#20# range 0 .. 31;
   end record;

   --  SCR Control Module
   Scm_Periph : aliased Scm_Peripheral
     with Import, Address => Scm_Base;

end TMS570LC43xx.SCM;
