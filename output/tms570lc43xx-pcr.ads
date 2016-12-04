--  This spec has been automatically generated from hercules_pcr_spec_5.5.0.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Pcr is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -----------------
   -- Peripherals --
   -----------------

   type Pcr2_Disc is
     (
      Pcr2_Disc_1Mstid_H,
      Pcr2_Disc_3Mstid_H);

   type Pcr_Peripheral
     (Discriminent : Pcr2_Disc := Pcr2_Disc_1Mstid_H)
   is record
      --  Set-only register to Protect PCS frames 0 to 31
      PMProtSet0    : TMS570LC43xx.Word;
      --  Set-only register to Protect PCS frames 32 to 64
      PMProtSet1    : TMS570LC43xx.Word;
      --  Clear-only register to Protect PCS frames 0 to 31
      PMProtClr0    : TMS570LC43xx.Word;
      --  Clear-only register to Protect PCS frames 32 to 64
      PMProtClr1    : TMS570LC43xx.Word;
      --  Set-only register to Protect the 32 quadrants of PS0 to PS7
      PProtSet0     : TMS570LC43xx.Word;
      --  Set-only register to Protect the 32 quadrants of PS8 to PS15
      PProtSet1     : TMS570LC43xx.Word;
      --  Set-only register to Protect the 32 quadrants of PS16 to PS23
      PProtSet2     : TMS570LC43xx.Word;
      --  Set-only register to Protect the 32 quadrants of PS24 to PS31
      PProtSet3     : TMS570LC43xx.Word;
      --  clear-only register to Protect the quadrants of PS0 to PS7
      PProtClr0     : TMS570LC43xx.Word;
      --  clear-only register to Protect the quadrants of PS8 to PS15
      PProtClr1     : TMS570LC43xx.Word;
      --  clear-only register to Protect the quadrants of PS16 to PS23
      PProtClr2     : TMS570LC43xx.Word;
      --  clear-only register to Protect the quadrants of PS24 to PS31
      PProtClr3     : TMS570LC43xx.Word;
      PCSPwrDwnSet0 : TMS570LC43xx.Word;
      PCSPwrDwnSet1 : TMS570LC43xx.Word;
      PCSPwrDwnClr0 : TMS570LC43xx.Word;
      PCSPwrDwnClr1 : TMS570LC43xx.Word;
      PSPwrDwnSet0  : TMS570LC43xx.Word;
      PSPwrDwnSet1  : TMS570LC43xx.Word;
      PSPwrDwnSet2  : TMS570LC43xx.Word;
      PSPwrDwnSet3  : TMS570LC43xx.Word;
      PSPwrDwnClr0  : TMS570LC43xx.Word;
      PSPwrDwnClr1  : TMS570LC43xx.Word;
      PSPwrDwnClr2  : TMS570LC43xx.Word;
      PSPwrDwnClr3  : TMS570LC43xx.Word;
      --  Debug Frame Power Down Set register
      DbgPwrDwnSet  : TMS570LC43xx.Word;
      --  MasterID Protection Write Enable Register
      MstIdWrEna    : TMS570LC43xx.Word;
      --  MasterID Check Enable Register
      MstIdEna      : TMS570LC43xx.Word;
      --  MasterID Diagnostic Control Register
      MstIdDiagCtrl : TMS570LC43xx.Word;
      --  Peripheral Frame 0 (Quadrant 0 and 1) MasteriD Protection Register
      PS0MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 0 (Quadrant 2 and 3) MasteriD Protection Register
      PS0MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 1 (Quadrant 0 and 1) MasteriD Protection Register
      PS1MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 1 (Quadrant 2 and 3) MasteriD Protection Register
      PS1MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 2 (Quadrant 0 and 1) MasteriD Protection Register
      PS2MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 2 (Quadrant 2 and 3) MasteriD Protection Register
      PS2MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 3 (Quadrant 0 and 1) MasteriD Protection Register
      PS3MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 3 (Quadrant 2 and 3) MasteriD Protection Register
      PS3MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 4 (Quadrant 0 and 1) MasteriD Protection Register
      PS4MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 4 (Quadrant 2 and 3) MasteriD Protection Register
      PS4MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 5 (Quadrant 0 and 1) MasteriD Protection Register
      PS5MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 5 (Quadrant 2 and 3) MasteriD Protection Register
      PS5MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 6 (Quadrant 0 and 1) MasteriD Protection Register
      PS6MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 6 (Quadrant 2 and 3) MasteriD Protection Register
      PS6MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 7 (Quadrant 0 and 1) MasteriD Protection Register
      PS7MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 7 (Quadrant 2 and 3) MasteriD Protection Register
      PS7MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 8 (Quadrant 0 and 1) MasteriD Protection Register
      PS8MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 8 (Quadrant 2 and 3) MasteriD Protection Register
      PS8MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 9 (Quadrant 0 and 1) MasteriD Protection Register
      PS9MstId_L    : TMS570LC43xx.Word;
      --  Peripheral Frame 9 (Quadrant 2 and 3) MasteriD Protection Register
      PS9MstId_H    : TMS570LC43xx.Word;
      --  Peripheral Frame 10 (Quadrant 0 and 1) MasteriD Protection Register
      PS10MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 10(Quadrant 2 and 3) MasteriD Protection Register
      PS10MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 11 (Quadrant 0 and 1) MasteriD Protection Register
      PS11MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 11 (Quadrant 2 and 3) MasteriD Protection Register
      PS11MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 12 (Quadrant 0 and 1) MasteriD Protection Register
      PS12MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 12 (Quadrant 2 and 3) MasteriD Protection Register
      PS12MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 13 (Quadrant 0 and 1) MasteriD Protection Register
      PS13MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 13 (Quadrant 2 and 3) MasteriD Protection Register
      PS13MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 14 (Quadrant 0 and 1) MasteriD Protection Register
      PS14MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 14 (Quadrant 2 and 3) MasteriD Protection Register
      PS14MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 15 (Quadrant 0 and 1) MasteriD Protection Register
      PS15MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 15 (Quadrant 2 and 3) MasteriD Protection Register
      PS15MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 16 (Quadrant 0 and 1) MasteriD Protection Register
      PS16MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 16 (Quadrant 2 and 3) MasteriD Protection Register
      PS16MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 17 (Quadrant 0 and 1) MasteriD Protection Register
      PS17MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 17 (Quadrant 2 and 3) MasteriD Protection Register
      PS17MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 18 (Quadrant 0 and 1) MasteriD Protection Register
      PS18MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 18 (Quadrant 2 and 3) MasteriD Protection Register
      PS18MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 19 (Quadrant 0 and 1) MasteriD Protection Register
      PS19MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 19 (Quadrant 2 and 3) MasteriD Protection Register
      PS19MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 20 (Quadrant 0 and 1) MasteriD Protection Register
      PS20MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 20 (Quadrant 2 and 3) MasteriD Protection Register
      PS20MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 21 (Quadrant 0 and 1) MasteriD Protection Register
      PS21MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 21 (Quadrant 2 and 3) MasteriD Protection Register
      PS21MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 22 (Quadrant 0 and 1) MasteriD Protection Register
      PS22MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 22 (Quadrant 2 and 3) MasteriD Protection Register
      PS22MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 23 (Quadrant 0 and 1) MasteriD Protection Register
      PS23MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 23 (Quadrant 2 and 3) MasteriD Protection Register
      PS23MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 24 (Quadrant 0 and 1) MasteriD Protection Register
      PS24MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 24 (Quadrant 2 and 3) MasteriD Protection Register
      PS24MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 25 (Quadrant 0 and 1) MasteriD Protection Register
      PS25MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 25 (Quadrant 2 and 3) MasteriD Protection Register
      PS25MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 26 (Quadrant 0 and 1) MasteriD Protection Register
      PS26MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 26 (Quadrant 2 and 3) MasteriD Protection Register
      PS26MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 27 (Quadrant 0 and 1) MasteriD Protection Register
      PS27MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 27 (Quadrant 2 and 3) MasteriD Protection Register
      PS27MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 28 (Quadrant 0 and 1) MasteriD Protection Register
      PS28MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 28 (Quadrant 2 and 3) MasteriD Protection Register
      PS28MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 29 (Quadrant 0 and 1) MasteriD Protection Register
      PS29MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 29 (Quadrant 2 and 3) MasteriD Protection Register
      PS29MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 30 (Quadrant 0 and 1) MasteriD Protection Register
      PS30MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 30 (Quadrant 2 and 3) MasteriD Protection Register
      PS30MstId_H   : TMS570LC43xx.Word;
      --  Peripheral Frame 31 (Quadrant 0 and 1) MasteriD Protection Register
      PS31MstId_L   : TMS570LC43xx.Word;
      --  Peripheral Frame 31 (Quadrant 2 and 3) MasteriD Protection Register
      PS31MstId_H   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 0 (Quadrant 0 and 1) MasteriD Protection
      --  Register
      PPS0MstId_L   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 0 (Quadrant 2 and 3) MasteriD Protection
      --  Register
      PPS0MstId_H   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 1 (Quadrant 0 and 1) MasteriD Protection
      --  Register
      PPS1MstId_L   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 1 (Quadrant 2 and 3) MasteriD Protection
      --  Register
      PPS1MstId_H   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 2 (Quadrant 0 and 1) MasteriD Protection
      --  Register
      PPS2MstId_L   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 2 (Quadrant 2 and 3) MasteriD Protection
      --  Register
      PPS2MstId_H   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 3 (Quadrant 0 and 1) MasteriD Protection
      --  Register
      PPS3MstId_L   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 3 (Quadrant 2 and 3) MasteriD Protection
      --  Register
      PPS3MstId_H   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 4 (Quadrant 0 and 1) MasteriD Protection
      --  Register
      PPS4MstId_L   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 4 (Quadrant 2 and 3) MasteriD Protection
      --  Register
      PPS4MstId_H   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 5 (Quadrant 0 and 1) MasteriD Protection
      --  Register
      PPS5MstId_L   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 5 (Quadrant 2 and 3) MasteriD Protection
      --  Register
      PPS5MstId_H   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 6 (Quadrant 0 and 1) MasteriD Protection
      --  Register
      PPS6MstId_L   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 6 (Quadrant 2 and 3) MasteriD Protection
      --  Register
      PPS6MstId_H   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 7 (Quadrant 0 and 1) MasteriD Protection
      --  Register
      PPS7MstId_L   : TMS570LC43xx.Word;
      --  Privileged Peripheral Frame 7 (Quadrant 2 and 3) MasteriD Protection
      --  Register
      PPS7MstId_H   : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 0 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE0MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 0 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE0MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 1 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE1MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 1 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE1MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 2 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE2MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 2 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE2MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 3 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE3MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 3 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE3MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 4 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE4MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 4 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE4MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 5 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE5MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 5 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE5MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 6 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE6MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 6 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE6MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 7 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE7MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 7 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE7MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 8 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE8MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 8 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE8MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 9 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE9MstId_L  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 9 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE9MstId_H  : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 10 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE10MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 10 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE10MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 11 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE11MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 11 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE11MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 12 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE12MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 12 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE12MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 13 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE13MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 13 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE13MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 14 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE14MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 14 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE14MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 15 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE15MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 15 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE15MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 16 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE16MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 16 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE16MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 17 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE17MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 17 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE17MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 18 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE18MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 18 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE18MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 19 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE19MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 19 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE19MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 20 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE20MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 20 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE20MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 21 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE21MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 22 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE22MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 22 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE22MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 23 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE23MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 24 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE24MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 24 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE24MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 25 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE25MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 25 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE25MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 26 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE26MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 26 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE26MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 27 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE27MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 27 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE27MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 28 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE28MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 28 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE28MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 29 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE29MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 29 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE29MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 30 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE30MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 30 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE30MstId_H : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 31 (Quadrant 0 and 1) MasteriD
      --  Protection Register
      PPSE31MstId_L : TMS570LC43xx.Word;
      --  Privileged Peripheral Extended Frame 31 (Quadrant 2 and 3) MasteriD
      --  Protection Register
      PPSE31MstId_H : TMS570LC43xx.Word;
      --  Memory Frame 0 MasteriD Protection Register
      PCS0MstId     : TMS570LC43xx.Word;
      --  Memory Frame 1 MasteriD Protection Register
      PCS2MstId     : TMS570LC43xx.Word;
      --  Memory Frame 2 MasteriD Protection Register
      PCS4MstId     : TMS570LC43xx.Word;
      --  Memory Frame 3 MasteriD Protection Register
      PCS6MstId     : TMS570LC43xx.Word;
      --  Memory Frame 4 MasteriD Protection Register
      PCS8MstId     : TMS570LC43xx.Word;
      --  Memory Frame 5 MasteriD Protection Register
      PCS10MstId    : TMS570LC43xx.Word;
      --  Memory Frame 6 MasteriD Protection Register
      PCS12MstId    : TMS570LC43xx.Word;
      --  Memory Frame 7 MasteriD Protection Register
      PCS14MstId    : TMS570LC43xx.Word;
      --  Memory Frame 8 MasteriD Protection Register
      PCS16MstId    : TMS570LC43xx.Word;
      --  Memory Frame 9 MasteriD Protection Register
      PCS18MstId    : TMS570LC43xx.Word;
      --  Memory Frame 10 MasteriD Protection Register
      PCS20MstId    : TMS570LC43xx.Word;
      --  Memory Frame 11 MasteriD Protection Register
      PCS22MstId    : TMS570LC43xx.Word;
      --  Memory Frame 12 MasteriD Protection Register
      PCS24MstId    : TMS570LC43xx.Word;
      --  Memory Frame 13 MasteriD Protection Register
      PCS26MstId    : TMS570LC43xx.Word;
      --  Memory Frame 14 MasteriD Protection Register
      PCS28MstId    : TMS570LC43xx.Word;
      --  Memory Frame 15 MasteriD Protection Register
      PCS30MstId    : TMS570LC43xx.Word;
      --  Memory Frame 16 MasteriD Protection Register
      PCS32MstId    : TMS570LC43xx.Word;
      --  Memory Frame 17 MasteriD Protection Register
      PCS34MstId    : TMS570LC43xx.Word;
      --  Memory Frame 18 MasteriD Protection Register
      PCS36MstId    : TMS570LC43xx.Word;
      --  Memory Frame 19 MasteriD Protection Register
      PCS38MstId    : TMS570LC43xx.Word;
      --  Memory Frame 20 MasteriD Protection Register
      PCS40MstId    : TMS570LC43xx.Word;
      --  Memory Frame 21 MasteriD Protection Register
      PCS42MstId    : TMS570LC43xx.Word;
      --  Memory Frame 22 MasteriD Protection Register
      PCS44MstId    : TMS570LC43xx.Word;
      --  Memory Frame 23 MasteriD Protection Register
      PCS46MstId    : TMS570LC43xx.Word;
      --  Memory Frame 24 MasteriD Protection Register
      PCS48MstId    : TMS570LC43xx.Word;
      --  Memory Frame 25 MasteriD Protection Register
      PCS50MstId    : TMS570LC43xx.Word;
      --  Memory Frame 26 MasteriD Protection Register
      PCS52MstId    : TMS570LC43xx.Word;
      --  Memory Frame 27 MasteriD Protection Register
      PCS54MstId    : TMS570LC43xx.Word;
      --  Memory Frame 28 MasteriD Protection Register
      PCS56MstId    : TMS570LC43xx.Word;
      --  Memory Frame 29 MasteriD Protection Register
      PCS58MstId    : TMS570LC43xx.Word;
      --  Memory Frame 30 MasteriD Protection Register
      PCS60MstId    : TMS570LC43xx.Word;
      --  Memory Frame 31 MasteriD Protection Register
      PCS62MstId    : TMS570LC43xx.Word;
      --  Priviledged Memory Frame 0 MasteriD Protection Register
      PPCS0MstId    : TMS570LC43xx.Word;
      --  Priviledged Memory Frame 1 MasteriD Protection Register
      PPCS2MstId    : TMS570LC43xx.Word;
      --  Priviledged Memory Frame 2 MasteriD Protection Register
      PPCS4MstId    : TMS570LC43xx.Word;
      --  Priviledged Memory Frame 3 MasteriD Protection Register
      PPCS6MstId    : TMS570LC43xx.Word;
      --  Priviledged Memory Frame 4 MasteriD Protection Register
      PPCS8MstId    : TMS570LC43xx.Word;
      --  Priviledged Memory Frame 5 MasteriD Protection Register
      PPCS10MstId   : TMS570LC43xx.Word;
      --  Priviledged Memory Frame 6 MasteriD Protection Register
      PPCS12MstId   : TMS570LC43xx.Word;
      --  Priviledged Memory Frame 7 MasteriD Protection Register
      PPCS14MstId   : TMS570LC43xx.Word;
      --  Master-ID Protection Register for External PCR
      PCREXTMsTId   : TMS570LC43xx.Word;
      case Discriminent is
         when Pcr2_Disc_1Mstid_H =>
            --  Privileged Peripheral Extended Frame 21 (Quadrant 2 and 3)
            --  MasteriD Protection Register
            PPSE21MstId_H : TMS570LC43xx.Word;
         when Pcr2_Disc_3Mstid_H =>
            --  Privileged Peripheral Extended Frame 23 (Quadrant 2 and 3)
            --  MasteriD Protection Register
            PPSE23MstId_H : TMS570LC43xx.Word;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for Pcr_Peripheral use record
      PMProtSet0    at 16#0# range 0 .. 31;
      PMProtSet1    at 16#4# range 0 .. 31;
      PMProtClr0    at 16#10# range 0 .. 31;
      PMProtClr1    at 16#14# range 0 .. 31;
      PProtSet0     at 16#20# range 0 .. 31;
      PProtSet1     at 16#24# range 0 .. 31;
      PProtSet2     at 16#28# range 0 .. 31;
      PProtSet3     at 16#2C# range 0 .. 31;
      PProtClr0     at 16#40# range 0 .. 31;
      PProtClr1     at 16#44# range 0 .. 31;
      PProtClr2     at 16#48# range 0 .. 31;
      PProtClr3     at 16#4C# range 0 .. 31;
      PCSPwrDwnSet0 at 16#60# range 0 .. 31;
      PCSPwrDwnSet1 at 16#64# range 0 .. 31;
      PCSPwrDwnClr0 at 16#70# range 0 .. 31;
      PCSPwrDwnClr1 at 16#74# range 0 .. 31;
      PSPwrDwnSet0  at 16#80# range 0 .. 31;
      PSPwrDwnSet1  at 16#84# range 0 .. 31;
      PSPwrDwnSet2  at 16#88# range 0 .. 31;
      PSPwrDwnSet3  at 16#8C# range 0 .. 31;
      PSPwrDwnClr0  at 16#A0# range 0 .. 31;
      PSPwrDwnClr1  at 16#A4# range 0 .. 31;
      PSPwrDwnClr2  at 16#A8# range 0 .. 31;
      PSPwrDwnClr3  at 16#AC# range 0 .. 31;
      DbgPwrDwnSet  at 16#C0# range 0 .. 31;
      MstIdWrEna    at 16#200# range 0 .. 31;
      MstIdEna      at 16#204# range 0 .. 31;
      MstIdDiagCtrl at 16#208# range 0 .. 31;
      PS0MstId_L    at 16#300# range 0 .. 31;
      PS0MstId_H    at 16#304# range 0 .. 31;
      PS1MstId_L    at 16#308# range 0 .. 31;
      PS1MstId_H    at 16#30C# range 0 .. 31;
      PS2MstId_L    at 16#310# range 0 .. 31;
      PS2MstId_H    at 16#314# range 0 .. 31;
      PS3MstId_L    at 16#318# range 0 .. 31;
      PS3MstId_H    at 16#31C# range 0 .. 31;
      PS4MstId_L    at 16#320# range 0 .. 31;
      PS4MstId_H    at 16#324# range 0 .. 31;
      PS5MstId_L    at 16#328# range 0 .. 31;
      PS5MstId_H    at 16#32C# range 0 .. 31;
      PS6MstId_L    at 16#330# range 0 .. 31;
      PS6MstId_H    at 16#334# range 0 .. 31;
      PS7MstId_L    at 16#338# range 0 .. 31;
      PS7MstId_H    at 16#33C# range 0 .. 31;
      PS8MstId_L    at 16#340# range 0 .. 31;
      PS8MstId_H    at 16#344# range 0 .. 31;
      PS9MstId_L    at 16#348# range 0 .. 31;
      PS9MstId_H    at 16#34C# range 0 .. 31;
      PS10MstId_L   at 16#350# range 0 .. 31;
      PS10MstId_H   at 16#354# range 0 .. 31;
      PS11MstId_L   at 16#358# range 0 .. 31;
      PS11MstId_H   at 16#35C# range 0 .. 31;
      PS12MstId_L   at 16#360# range 0 .. 31;
      PS12MstId_H   at 16#364# range 0 .. 31;
      PS13MstId_L   at 16#368# range 0 .. 31;
      PS13MstId_H   at 16#36C# range 0 .. 31;
      PS14MstId_L   at 16#370# range 0 .. 31;
      PS14MstId_H   at 16#374# range 0 .. 31;
      PS15MstId_L   at 16#378# range 0 .. 31;
      PS15MstId_H   at 16#37C# range 0 .. 31;
      PS16MstId_L   at 16#380# range 0 .. 31;
      PS16MstId_H   at 16#384# range 0 .. 31;
      PS17MstId_L   at 16#388# range 0 .. 31;
      PS17MstId_H   at 16#38C# range 0 .. 31;
      PS18MstId_L   at 16#390# range 0 .. 31;
      PS18MstId_H   at 16#394# range 0 .. 31;
      PS19MstId_L   at 16#398# range 0 .. 31;
      PS19MstId_H   at 16#39C# range 0 .. 31;
      PS20MstId_L   at 16#3A0# range 0 .. 31;
      PS20MstId_H   at 16#3A4# range 0 .. 31;
      PS21MstId_L   at 16#3A8# range 0 .. 31;
      PS21MstId_H   at 16#3AC# range 0 .. 31;
      PS22MstId_L   at 16#3B0# range 0 .. 31;
      PS22MstId_H   at 16#3B4# range 0 .. 31;
      PS23MstId_L   at 16#3B8# range 0 .. 31;
      PS23MstId_H   at 16#3BC# range 0 .. 31;
      PS24MstId_L   at 16#3C0# range 0 .. 31;
      PS24MstId_H   at 16#3C4# range 0 .. 31;
      PS25MstId_L   at 16#3C8# range 0 .. 31;
      PS25MstId_H   at 16#3CC# range 0 .. 31;
      PS26MstId_L   at 16#3D0# range 0 .. 31;
      PS26MstId_H   at 16#3D4# range 0 .. 31;
      PS27MstId_L   at 16#3D8# range 0 .. 31;
      PS27MstId_H   at 16#3DC# range 0 .. 31;
      PS28MstId_L   at 16#3E0# range 0 .. 31;
      PS28MstId_H   at 16#3E4# range 0 .. 31;
      PS29MstId_L   at 16#3E8# range 0 .. 31;
      PS29MstId_H   at 16#3EC# range 0 .. 31;
      PS30MstId_L   at 16#3F0# range 0 .. 31;
      PS30MstId_H   at 16#3F4# range 0 .. 31;
      PS31MstId_L   at 16#3F8# range 0 .. 31;
      PS31MstId_H   at 16#3FC# range 0 .. 31;
      PPS0MstId_L   at 16#400# range 0 .. 31;
      PPS0MstId_H   at 16#404# range 0 .. 31;
      PPS1MstId_L   at 16#408# range 0 .. 31;
      PPS1MstId_H   at 16#40C# range 0 .. 31;
      PPS2MstId_L   at 16#410# range 0 .. 31;
      PPS2MstId_H   at 16#414# range 0 .. 31;
      PPS3MstId_L   at 16#418# range 0 .. 31;
      PPS3MstId_H   at 16#41C# range 0 .. 31;
      PPS4MstId_L   at 16#420# range 0 .. 31;
      PPS4MstId_H   at 16#424# range 0 .. 31;
      PPS5MstId_L   at 16#428# range 0 .. 31;
      PPS5MstId_H   at 16#42C# range 0 .. 31;
      PPS6MstId_L   at 16#430# range 0 .. 31;
      PPS6MstId_H   at 16#434# range 0 .. 31;
      PPS7MstId_L   at 16#438# range 0 .. 31;
      PPS7MstId_H   at 16#43C# range 0 .. 31;
      PPSE0MstId_L  at 16#440# range 0 .. 31;
      PPSE0MstId_H  at 16#444# range 0 .. 31;
      PPSE1MstId_L  at 16#448# range 0 .. 31;
      PPSE1MstId_H  at 16#44C# range 0 .. 31;
      PPSE2MstId_L  at 16#450# range 0 .. 31;
      PPSE2MstId_H  at 16#454# range 0 .. 31;
      PPSE3MstId_L  at 16#458# range 0 .. 31;
      PPSE3MstId_H  at 16#45C# range 0 .. 31;
      PPSE4MstId_L  at 16#460# range 0 .. 31;
      PPSE4MstId_H  at 16#464# range 0 .. 31;
      PPSE5MstId_L  at 16#468# range 0 .. 31;
      PPSE5MstId_H  at 16#46C# range 0 .. 31;
      PPSE6MstId_L  at 16#470# range 0 .. 31;
      PPSE6MstId_H  at 16#474# range 0 .. 31;
      PPSE7MstId_L  at 16#478# range 0 .. 31;
      PPSE7MstId_H  at 16#47C# range 0 .. 31;
      PPSE8MstId_L  at 16#480# range 0 .. 31;
      PPSE8MstId_H  at 16#484# range 0 .. 31;
      PPSE9MstId_L  at 16#488# range 0 .. 31;
      PPSE9MstId_H  at 16#48C# range 0 .. 31;
      PPSE10MstId_L at 16#490# range 0 .. 31;
      PPSE10MstId_H at 16#494# range 0 .. 31;
      PPSE11MstId_L at 16#498# range 0 .. 31;
      PPSE11MstId_H at 16#49C# range 0 .. 31;
      PPSE12MstId_L at 16#4A0# range 0 .. 31;
      PPSE12MstId_H at 16#4A4# range 0 .. 31;
      PPSE13MstId_L at 16#4A8# range 0 .. 31;
      PPSE13MstId_H at 16#4AC# range 0 .. 31;
      PPSE14MstId_L at 16#4B0# range 0 .. 31;
      PPSE14MstId_H at 16#4B4# range 0 .. 31;
      PPSE15MstId_L at 16#4B8# range 0 .. 31;
      PPSE15MstId_H at 16#4BC# range 0 .. 31;
      PPSE16MstId_L at 16#4C0# range 0 .. 31;
      PPSE16MstId_H at 16#4C4# range 0 .. 31;
      PPSE17MstId_L at 16#4C8# range 0 .. 31;
      PPSE17MstId_H at 16#4CC# range 0 .. 31;
      PPSE18MstId_L at 16#4D0# range 0 .. 31;
      PPSE18MstId_H at 16#4D4# range 0 .. 31;
      PPSE19MstId_L at 16#4D8# range 0 .. 31;
      PPSE19MstId_H at 16#4DC# range 0 .. 31;
      PPSE20MstId_L at 16#4E0# range 0 .. 31;
      PPSE20MstId_H at 16#4E4# range 0 .. 31;
      PPSE21MstId_L at 16#4E8# range 0 .. 31;
      PPSE22MstId_L at 16#4F0# range 0 .. 31;
      PPSE22MstId_H at 16#4F4# range 0 .. 31;
      PPSE23MstId_L at 16#4F8# range 0 .. 31;
      PPSE24MstId_L at 16#500# range 0 .. 31;
      PPSE24MstId_H at 16#504# range 0 .. 31;
      PPSE25MstId_L at 16#508# range 0 .. 31;
      PPSE25MstId_H at 16#50C# range 0 .. 31;
      PPSE26MstId_L at 16#510# range 0 .. 31;
      PPSE26MstId_H at 16#514# range 0 .. 31;
      PPSE27MstId_L at 16#518# range 0 .. 31;
      PPSE27MstId_H at 16#51C# range 0 .. 31;
      PPSE28MstId_L at 16#520# range 0 .. 31;
      PPSE28MstId_H at 16#524# range 0 .. 31;
      PPSE29MstId_L at 16#528# range 0 .. 31;
      PPSE29MstId_H at 16#52C# range 0 .. 31;
      PPSE30MstId_L at 16#530# range 0 .. 31;
      PPSE30MstId_H at 16#534# range 0 .. 31;
      PPSE31MstId_L at 16#538# range 0 .. 31;
      PPSE31MstId_H at 16#53C# range 0 .. 31;
      PCS0MstId     at 16#540# range 0 .. 31;
      PCS2MstId     at 16#544# range 0 .. 31;
      PCS4MstId     at 16#548# range 0 .. 31;
      PCS6MstId     at 16#54C# range 0 .. 31;
      PCS8MstId     at 16#550# range 0 .. 31;
      PCS10MstId    at 16#554# range 0 .. 31;
      PCS12MstId    at 16#558# range 0 .. 31;
      PCS14MstId    at 16#55C# range 0 .. 31;
      PCS16MstId    at 16#560# range 0 .. 31;
      PCS18MstId    at 16#564# range 0 .. 31;
      PCS20MstId    at 16#568# range 0 .. 31;
      PCS22MstId    at 16#56C# range 0 .. 31;
      PCS24MstId    at 16#570# range 0 .. 31;
      PCS26MstId    at 16#574# range 0 .. 31;
      PCS28MstId    at 16#578# range 0 .. 31;
      PCS30MstId    at 16#57C# range 0 .. 31;
      PCS32MstId    at 16#580# range 0 .. 31;
      PCS34MstId    at 16#584# range 0 .. 31;
      PCS36MstId    at 16#588# range 0 .. 31;
      PCS38MstId    at 16#58C# range 0 .. 31;
      PCS40MstId    at 16#590# range 0 .. 31;
      PCS42MstId    at 16#594# range 0 .. 31;
      PCS44MstId    at 16#598# range 0 .. 31;
      PCS46MstId    at 16#59C# range 0 .. 31;
      PCS48MstId    at 16#5A0# range 0 .. 31;
      PCS50MstId    at 16#5A4# range 0 .. 31;
      PCS52MstId    at 16#5A8# range 0 .. 31;
      PCS54MstId    at 16#5AC# range 0 .. 31;
      PCS56MstId    at 16#5B0# range 0 .. 31;
      PCS58MstId    at 16#5B4# range 0 .. 31;
      PCS60MstId    at 16#5B8# range 0 .. 31;
      PCS62MstId    at 16#5BC# range 0 .. 31;
      PPCS0MstId    at 16#5C0# range 0 .. 31;
      PPCS2MstId    at 16#5C4# range 0 .. 31;
      PPCS4MstId    at 16#5C8# range 0 .. 31;
      PPCS6MstId    at 16#5CC# range 0 .. 31;
      PPCS8MstId    at 16#5D0# range 0 .. 31;
      PPCS10MstId   at 16#5D4# range 0 .. 31;
      PPCS12MstId   at 16#5D8# range 0 .. 31;
      PPCS14MstId   at 16#5DC# range 0 .. 31;
      PCREXTMsTId   at 16#5E0# range 0 .. 31;
      PPSE21MstId_H at 16#4FC# range 0 .. 31;
      PPSE23MstId_H at 16#4FC# range 0 .. 31;
   end record;

   Pcr2_Periph : aliased Pcr_Peripheral
     with Import, Address => Pcr2_Base;

   Pcr3_Periph : aliased Pcr_Peripheral
     with Import, Address => Pcr3_Base;

   Pcr1_Periph : aliased Pcr_Peripheral
     with Import, Address => Pcr1_Base;

end TMS570LC43xx.Pcr;
