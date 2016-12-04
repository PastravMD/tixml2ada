--  This spec has been automatically generated from hercules_epc_spec_0.0.12.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.EPC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   --  Error Profiling Controller
   type Epc_Peripheral is record
      --  EPC REVID Register
      EpcRevID      : TMS570LC43xx.Word;
      --  EPC Control Register
      EpcCntrl      : TMS570LC43xx.Word;
      --  Uncorrectable Error Status Register
      UerrStat      : TMS570LC43xx.Word;
      --  H/W Channel Enable Set and Status Register
      EpcErrStat    : TMS570LC43xx.Word;
      --  FIFO Full Status Register
      FifoFullStat  : TMS570LC43xx.Word;
      --  IP Interface FIFO Overflow Status Register
      OvrFlwStat    : TMS570LC43xx.Word;
      --  CAM Index Available Status Register
      CamAvailStat  : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 0
      UerrAddr0     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 1
      UerrAddr1     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 2
      UerrAddr2     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 3
      UerrAddr3     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 4
      UerrAddr4     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 5
      UerrAddr5     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 6
      UerrAddr6     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 7
      UerrAddr7     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 8
      UerrAddr8     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 9
      UerrAddr9     : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 10
      UerrAddr10    : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 11
      UerrAddr11    : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 12
      UerrAddr12    : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 13
      UerrAddr13    : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 14
      UerrAddr14    : TMS570LC43xx.Word;
      --  Uncorrectable Error Address Register 15
      UerrAddr15    : TMS570LC43xx.Word;
      --  CAM Content Update Register0
      CAM_Content0  : TMS570LC43xx.Word;
      --  CAM Content Update Register1
      CAM_Content1  : TMS570LC43xx.Word;
      --  CAM Content Update Register2
      CAM_Content2  : TMS570LC43xx.Word;
      --  CAM Content Update Register3
      CAM_Content3  : TMS570LC43xx.Word;
      --  CAM Content Update Register4
      CAM_Content4  : TMS570LC43xx.Word;
      --  CAM Content Update Register5
      CAM_Content5  : TMS570LC43xx.Word;
      --  CAM Content Update Register6
      CAM_Content6  : TMS570LC43xx.Word;
      --  CAM Content Update Register7
      CAM_Content7  : TMS570LC43xx.Word;
      --  CAM Content Update Register8
      CAM_Content8  : TMS570LC43xx.Word;
      --  CAM Content Update Register9
      CAM_Content9  : TMS570LC43xx.Word;
      --  CAM Content Update Register10
      CAM_Content10 : TMS570LC43xx.Word;
      --  CAM Content Update Register11
      CAM_Content11 : TMS570LC43xx.Word;
      --  CAM Content Update Register12
      CAM_Content12 : TMS570LC43xx.Word;
      --  CAM Content Update Register13
      CAM_Content13 : TMS570LC43xx.Word;
      --  CAM Content Update Register14
      CAM_Content14 : TMS570LC43xx.Word;
      --  CAM Content Update Register15
      CAM_Content15 : TMS570LC43xx.Word;
      --  CAM Content Update Register16
      CAM_Content16 : TMS570LC43xx.Word;
      --  CAM Content Update Register17
      CAM_Content17 : TMS570LC43xx.Word;
      --  CAM Content Update Register18
      CAM_Content18 : TMS570LC43xx.Word;
      --  CAM Content Update Register19
      CAM_Content19 : TMS570LC43xx.Word;
      --  CAM Content Update Register20
      CAM_Content20 : TMS570LC43xx.Word;
      --  CAM Content Update Register21
      CAM_Content21 : TMS570LC43xx.Word;
      --  CAM Content Update Register22
      CAM_Content22 : TMS570LC43xx.Word;
      --  CAM Content Update Register23
      CAM_Content23 : TMS570LC43xx.Word;
      --  CAM Content Update Register24
      CAM_Content24 : TMS570LC43xx.Word;
      --  CAM Content Update Register25
      CAM_Content25 : TMS570LC43xx.Word;
      --  CAM Content Update Register26
      CAM_Content26 : TMS570LC43xx.Word;
      --  CAM Content Update Register27
      CAM_Content27 : TMS570LC43xx.Word;
      --  CAM Content Update Register28
      CAM_Content28 : TMS570LC43xx.Word;
      --  CAM Content Update Register29
      CAM_Content29 : TMS570LC43xx.Word;
      --  CAM Content Update Register30
      CAM_Content30 : TMS570LC43xx.Word;
      --  CAM Content Update Register31
      CAM_Content31 : TMS570LC43xx.Word;
      --  CAM Index Register0
      CAM_Index0    : TMS570LC43xx.Word;
      --  CAM Index Register1
      CAM_Index1    : TMS570LC43xx.Word;
      --  CAM Index Register2
      CAM_Index2    : TMS570LC43xx.Word;
      --  CAM Index Register3
      CAM_Index3    : TMS570LC43xx.Word;
      --  CAM Index Register4
      CAM_Index4    : TMS570LC43xx.Word;
      --  CAM Index Register5
      CAM_Index5    : TMS570LC43xx.Word;
      --  CAM Index Register6
      CAM_Index6    : TMS570LC43xx.Word;
      --  CAM Index Register7
      CAM_Index7    : TMS570LC43xx.Word;
   end record
     with Volatile;

   for Epc_Peripheral use record
      EpcRevID      at 16#0# range 0 .. 31;
      EpcCntrl      at 16#4# range 0 .. 31;
      UerrStat      at 16#8# range 0 .. 31;
      EpcErrStat    at 16#C# range 0 .. 31;
      FifoFullStat  at 16#10# range 0 .. 31;
      OvrFlwStat    at 16#14# range 0 .. 31;
      CamAvailStat  at 16#18# range 0 .. 31;
      UerrAddr0     at 16#20# range 0 .. 31;
      UerrAddr1     at 16#24# range 0 .. 31;
      UerrAddr2     at 16#28# range 0 .. 31;
      UerrAddr3     at 16#2C# range 0 .. 31;
      UerrAddr4     at 16#30# range 0 .. 31;
      UerrAddr5     at 16#34# range 0 .. 31;
      UerrAddr6     at 16#38# range 0 .. 31;
      UerrAddr7     at 16#3C# range 0 .. 31;
      UerrAddr8     at 16#40# range 0 .. 31;
      UerrAddr9     at 16#44# range 0 .. 31;
      UerrAddr10    at 16#48# range 0 .. 31;
      UerrAddr11    at 16#4C# range 0 .. 31;
      UerrAddr12    at 16#50# range 0 .. 31;
      UerrAddr13    at 16#54# range 0 .. 31;
      UerrAddr14    at 16#58# range 0 .. 31;
      UerrAddr15    at 16#5C# range 0 .. 31;
      CAM_Content0  at 16#A0# range 0 .. 31;
      CAM_Content1  at 16#A4# range 0 .. 31;
      CAM_Content2  at 16#A8# range 0 .. 31;
      CAM_Content3  at 16#AC# range 0 .. 31;
      CAM_Content4  at 16#B0# range 0 .. 31;
      CAM_Content5  at 16#B4# range 0 .. 31;
      CAM_Content6  at 16#B8# range 0 .. 31;
      CAM_Content7  at 16#BC# range 0 .. 31;
      CAM_Content8  at 16#C0# range 0 .. 31;
      CAM_Content9  at 16#C4# range 0 .. 31;
      CAM_Content10 at 16#C8# range 0 .. 31;
      CAM_Content11 at 16#CC# range 0 .. 31;
      CAM_Content12 at 16#D0# range 0 .. 31;
      CAM_Content13 at 16#D4# range 0 .. 31;
      CAM_Content14 at 16#D8# range 0 .. 31;
      CAM_Content15 at 16#DC# range 0 .. 31;
      CAM_Content16 at 16#E0# range 0 .. 31;
      CAM_Content17 at 16#E4# range 0 .. 31;
      CAM_Content18 at 16#E8# range 0 .. 31;
      CAM_Content19 at 16#EC# range 0 .. 31;
      CAM_Content20 at 16#F0# range 0 .. 31;
      CAM_Content21 at 16#F4# range 0 .. 31;
      CAM_Content22 at 16#F8# range 0 .. 31;
      CAM_Content23 at 16#FC# range 0 .. 31;
      CAM_Content24 at 16#100# range 0 .. 31;
      CAM_Content25 at 16#104# range 0 .. 31;
      CAM_Content26 at 16#108# range 0 .. 31;
      CAM_Content27 at 16#10C# range 0 .. 31;
      CAM_Content28 at 16#110# range 0 .. 31;
      CAM_Content29 at 16#114# range 0 .. 31;
      CAM_Content30 at 16#118# range 0 .. 31;
      CAM_Content31 at 16#11C# range 0 .. 31;
      CAM_Index0    at 16#200# range 0 .. 31;
      CAM_Index1    at 16#204# range 0 .. 31;
      CAM_Index2    at 16#208# range 0 .. 31;
      CAM_Index3    at 16#20C# range 0 .. 31;
      CAM_Index4    at 16#210# range 0 .. 31;
      CAM_Index5    at 16#214# range 0 .. 31;
      CAM_Index6    at 16#218# range 0 .. 31;
      CAM_Index7    at 16#21C# range 0 .. 31;
   end record;

   --  Error Profiling Controller
   Epc_Periph : aliased Epc_Peripheral
     with Import, Address => Epc_Base;

end TMS570LC43xx.EPC;
