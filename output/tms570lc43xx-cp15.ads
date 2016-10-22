--  This spec has been automatically generated from cp15_cortexr5f_r1p2.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.CP15 is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ---------------------------
   -- CP15_ID_CODE_Register --
   ---------------------------

   subtype CP15_ID_CODE_REVISION_Field is TMS570LC43xx.UInt4;
   subtype CP15_ID_CODE_PRIMARY_PART_NO_Field is TMS570LC43xx.UInt12;
   subtype CP15_ID_CODE_ARCHITECTURE_Field is TMS570LC43xx.UInt4;
   subtype CP15_ID_CODE_VARIANT_Field is TMS570LC43xx.UInt4;
   subtype CP15_ID_CODE_IMPLEMENTOR_Field is TMS570LC43xx.Byte;

   --  MIDR
   type CP15_ID_CODE_Register is record
      --  The n in revision rmpn
      REVISION        : CP15_ID_CODE_REVISION_Field := 16#0#;
      --  0xC15 = Cortex-R5
      PRIMARY_PART_NO : CP15_ID_CODE_PRIMARY_PART_NO_Field := 16#0#;
      --  0xF = see feature registers
      ARCHITECTURE    : CP15_ID_CODE_ARCHITECTURE_Field := 16#0#;
      --  The m in revision rmpn
      VARIANT         : CP15_ID_CODE_VARIANT_Field := 16#0#;
      --  0x41 = ARM
      IMPLEMENTOR     : CP15_ID_CODE_IMPLEMENTOR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_ID_CODE_Register use record
      REVISION        at 16#0# range 0 .. 3;
      PRIMARY_PART_NO at 16#0# range 4 .. 15;
      ARCHITECTURE    at 16#0# range 16 .. 19;
      VARIANT         at 16#0# range 20 .. 23;
      IMPLEMENTOR     at 16#0# range 24 .. 31;
   end record;

   ------------------------------
   -- CP15_CACHE_TYPE_Register --
   ------------------------------

   subtype CP15_CACHE_TYPE_IMinLine_Field is TMS570LC43xx.UInt4;
   subtype CP15_CACHE_TYPE_Rsv3_Field is TMS570LC43xx.UInt10;
   subtype CP15_CACHE_TYPE_Rsv2_Field is TMS570LC43xx.UInt2;
   subtype CP15_CACHE_TYPE_DMinLine_Field is TMS570LC43xx.UInt4;
   subtype CP15_CACHE_TYPE_ERG_Field is TMS570LC43xx.UInt4;
   subtype CP15_CACHE_TYPE_CWG_Field is TMS570LC43xx.UInt4;
   subtype CP15_CACHE_TYPE_Rsv1_Field is TMS570LC43xx.UInt4;

   --  CTR
   type CP15_CACHE_TYPE_Register is record
      --  0x3 = 8 Words on L1D$ Line
      IMinLine : CP15_CACHE_TYPE_IMinLine_Field := 16#0#;
      --  Reserved Reads 0x0
      Rsv3     : CP15_CACHE_TYPE_Rsv3_Field := 16#0#;
      --  Reserved Reads 0x3
      Rsv2     : CP15_CACHE_TYPE_Rsv2_Field := 16#0#;
      --  0x3 = 8 Words on L1I$ Line
      DMinLine : CP15_CACHE_TYPE_DMinLine_Field := 16#0#;
      --  No Information Provided
      ERG      : CP15_CACHE_TYPE_ERG_Field := 16#0#;
      --  No Information Provided
      CWG      : CP15_CACHE_TYPE_CWG_Field := 16#0#;
      --  Reserved Reads 0x8
      Rsv1     : CP15_CACHE_TYPE_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_CACHE_TYPE_Register use record
      IMinLine at 16#0# range 0 .. 3;
      Rsv3     at 16#0# range 4 .. 13;
      Rsv2     at 16#0# range 14 .. 15;
      DMinLine at 16#0# range 16 .. 19;
      ERG      at 16#0# range 20 .. 23;
      CWG      at 16#0# range 24 .. 27;
      Rsv1     at 16#0# range 28 .. 31;
   end record;

   ----------------------------
   -- CP15_TCM_TYPE_Register --
   ----------------------------

   subtype CP15_TCM_TYPE_ATCM_Field is TMS570LC43xx.UInt3;
   subtype CP15_TCM_TYPE_Rsv3_Field is TMS570LC43xx.UInt13;
   subtype CP15_TCM_TYPE_BTCM_Field is TMS570LC43xx.UInt3;
   subtype CP15_TCM_TYPE_Rsv2_Field is TMS570LC43xx.UInt10;
   subtype CP15_TCM_TYPE_Rsv1_Field is TMS570LC43xx.UInt3;

   --  TCMTR
   type CP15_TCM_TYPE_Register is record
      --  Specifies Number of ATCMs
      ATCM : CP15_TCM_TYPE_ATCM_Field := 16#0#;
      --  SBZ
      Rsv3 : CP15_TCM_TYPE_Rsv3_Field := 16#0#;
      --  Specifies Number of BTCMs
      BTCM : CP15_TCM_TYPE_BTCM_Field := 16#0#;
      --  SBZ
      Rsv2 : CP15_TCM_TYPE_Rsv2_Field := 16#0#;
      --  Always 0, indicating v6, format TCMTR
      Rsv1 : CP15_TCM_TYPE_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_TCM_TYPE_Register use record
      ATCM at 16#0# range 0 .. 2;
      Rsv3 at 16#0# range 3 .. 15;
      BTCM at 16#0# range 16 .. 18;
      Rsv2 at 16#0# range 19 .. 28;
      Rsv1 at 16#0# range 29 .. 31;
   end record;

   ----------------------------
   -- CP15_MPU_TYPE_Register --
   ----------------------------

   subtype CP15_MPU_TYPE_S_Field is TMS570LC43xx.Bit;
   subtype CP15_MPU_TYPE_Rsv2_Field is TMS570LC43xx.UInt7;
   subtype CP15_MPU_TYPE_DREGION_Field is TMS570LC43xx.Byte;
   subtype CP15_MPU_TYPE_Rsv1_Field is TMS570LC43xx.Short;

   --  MPUIR
   type CP15_MPU_TYPE_Register is record
      --  MPU Type 0 = Unified Regions
      S       : CP15_MPU_TYPE_S_Field := 16#0#;
      --  SBZ
      Rsv2    : CP15_MPU_TYPE_Rsv2_Field := 16#0#;
      --  Number of Unified MPU Regions
      DREGION : CP15_MPU_TYPE_DREGION_Field := 16#0#;
      --  SBZ
      Rsv1    : CP15_MPU_TYPE_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_MPU_TYPE_Register use record
      S       at 16#0# range 0 .. 0;
      Rsv2    at 16#0# range 1 .. 7;
      DREGION at 16#0# range 8 .. 15;
      Rsv1    at 16#0# range 16 .. 31;
   end record;

   -------------------------------------
   -- CP15_MULTIPROCESSOR_ID_Register --
   -------------------------------------

   ---------------------------------------
   -- CP15_MULTIPROCESSOR_ID.AFFINITY_L --
   ---------------------------------------

   --  CP15_MULTIPROCESSOR_ID_AFFINITY_L array element
   subtype CP15_MULTIPROCESSOR_ID_AFFINITY_L_Element is TMS570LC43xx.Byte;

   --  CP15_MULTIPROCESSOR_ID_AFFINITY_L array
   type CP15_MULTIPROCESSOR_ID_AFFINITY_L_Field_Array is array (0 .. 2)
     of CP15_MULTIPROCESSOR_ID_AFFINITY_L_Element
     with Component_Size => 8, Size => 24;

   --  Type definition for CP15_MULTIPROCESSOR_ID_AFFINITY_L
   type CP15_MULTIPROCESSOR_ID_AFFINITY_L_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AFFINITY_L as a value
            Val : TMS570LC43xx.UInt24;
         when True =>
            --  AFFINITY_L as an array
            Arr : CP15_MULTIPROCESSOR_ID_AFFINITY_L_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for CP15_MULTIPROCESSOR_ID_AFFINITY_L_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   subtype CP15_MULTIPROCESSOR_ID_Rsv1_Field is TMS570LC43xx.UInt6;
   subtype CP15_MULTIPROCESSOR_ID_MP_EXTENSIONS_Field is TMS570LC43xx.UInt2;

   --  MPIDR
   type CP15_MULTIPROCESSOR_ID_Register is record
      --  Processor within group: 0=CPU0, 1=CPU1 if implemented
      AFFINITY_L    : CP15_MULTIPROCESSOR_ID_AFFINITY_L_Field :=
                       (As_Array => False, Val => 16#0#);
      --  SBZ
      Rsv1          : CP15_MULTIPROCESSOR_ID_Rsv1_Field := 16#0#;
      --  Processor is part of a uniprocessor system
      MP_EXTENSIONS : CP15_MULTIPROCESSOR_ID_MP_EXTENSIONS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_MULTIPROCESSOR_ID_Register use record
      AFFINITY_L    at 16#0# range 0 .. 23;
      Rsv1          at 16#0# range 24 .. 29;
      MP_EXTENSIONS at 16#0# range 30 .. 31;
   end record;

   ---------------------------------------
   -- CP15_PROCESSOR_FEATURE_0_Register --
   ---------------------------------------

   ------------------------------------
   -- CP15_PROCESSOR_FEATURE_0.STATE --
   ------------------------------------

   --  CP15_PROCESSOR_FEATURE_0_STATE array element
   subtype CP15_PROCESSOR_FEATURE_0_STATE_Element is TMS570LC43xx.UInt4;

   --  CP15_PROCESSOR_FEATURE_0_STATE array
   type CP15_PROCESSOR_FEATURE_0_STATE_Field_Array is array (0 .. 3)
     of CP15_PROCESSOR_FEATURE_0_STATE_Element
     with Component_Size => 4, Size => 16;

   --  Type definition for CP15_PROCESSOR_FEATURE_0_STATE
   type CP15_PROCESSOR_FEATURE_0_STATE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STATE as a value
            Val : TMS570LC43xx.Short;
         when True =>
            --  STATE as an array
            Arr : CP15_PROCESSOR_FEATURE_0_STATE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for CP15_PROCESSOR_FEATURE_0_STATE_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype CP15_PROCESSOR_FEATURE_0_Rsv1_Field is TMS570LC43xx.Short;

   --  PFR0
   type CP15_PROCESSOR_FEATURE_0_Register is record
      --  1 = Supports ARM Instructions
      STATE : CP15_PROCESSOR_FEATURE_0_STATE_Field :=
               (As_Array => False, Val => 16#0#);
      --  SBZ
      Rsv1  : CP15_PROCESSOR_FEATURE_0_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_PROCESSOR_FEATURE_0_Register use record
      STATE at 16#0# range 0 .. 15;
      Rsv1  at 16#0# range 16 .. 31;
   end record;

   ---------------------------------------
   -- CP15_PROCESSOR_FEATURE_1_Register --
   ---------------------------------------

   subtype CP15_PROCESSOR_FEATURE_1_ARMV4_MDL_Field is TMS570LC43xx.UInt4;
   subtype CP15_PROCESSOR_FEATURE_1_SEC_EXT_MDL_Field is TMS570LC43xx.UInt4;
   subtype CP15_PROCESSOR_FEATURE_1_MCP_PRG_MDL_Field is TMS570LC43xx.UInt4;
   subtype CP15_PROCESSOR_FEATURE_1_Rsv1_Field is TMS570LC43xx.UInt20;

   --  PFR1
   type CP15_PROCESSOR_FEATURE_1_Register is record
      --  1 = Supports The ARMv4 Programmers Model
      ARMV4_MDL   : CP15_PROCESSOR_FEATURE_1_ARMV4_MDL_Field := 16#0#;
      --  0 = Does Not Support for Security Extensions Programmers Model
      SEC_EXT_MDL : CP15_PROCESSOR_FEATURE_1_SEC_EXT_MDL_Field := 16#0#;
      --  0 = Does Not Support Microcontroller Programmers Model
      MCP_PRG_MDL : CP15_PROCESSOR_FEATURE_1_MCP_PRG_MDL_Field := 16#0#;
      --  SBZ
      Rsv1        : CP15_PROCESSOR_FEATURE_1_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_PROCESSOR_FEATURE_1_Register use record
      ARMV4_MDL   at 16#0# range 0 .. 3;
      SEC_EXT_MDL at 16#0# range 4 .. 7;
      MCP_PRG_MDL at 16#0# range 8 .. 11;
      Rsv1        at 16#0# range 12 .. 31;
   end record;

   -----------------------------------
   -- CP15_DEBUG_FEATURE_0_Register --
   -----------------------------------

   subtype CP15_DEBUG_FEATURE_0_CORE_DBG_MDL_CP_Field is TMS570LC43xx.UInt4;
   subtype CP15_DEBUG_FEATURE_0_SECURE_DBG_MDL_Field is TMS570LC43xx.UInt4;
   subtype CP15_DEBUG_FEATURE_0_CORE_DBG_MDL_MEM_Field is TMS570LC43xx.UInt4;
   subtype CP15_DEBUG_FEATURE_0_TRC_DBG_MDL_CP_Field is TMS570LC43xx.UInt4;
   subtype CP15_DEBUG_FEATURE_0_TRC_DBG_MDL_MEM_Field is TMS570LC43xx.UInt4;
   subtype CP15_DEBUG_FEATURE_0_MCU_DBG_MDL_Field is TMS570LC43xx.UInt4;
   subtype CP15_DEBUG_FEATURE_0_Rsv1_Field is TMS570LC43xx.Byte;

   --  DFR0
   type CP15_DEBUG_FEATURE_0_Register is record
      --  0 = Does Not Support Core Debug Model - Coprocessor
      CORE_DBG_MDL_CP  : CP15_DEBUG_FEATURE_0_CORE_DBG_MDL_CP_Field := 16#0#;
      --  0 = Does Not Support Secure Debug Model
      SECURE_DBG_MDL   : CP15_DEBUG_FEATURE_0_SECURE_DBG_MDL_Field := 16#0#;
      --  4 = Supports ARMv7 Debug Model - Memory Mapped
      CORE_DBG_MDL_MEM : CP15_DEBUG_FEATURE_0_CORE_DBG_MDL_MEM_Field := 16#0#;
      --  0 = Does Not Support Trace Debug Model - Coprocessor
      TRC_DBG_MDL_CP   : CP15_DEBUG_FEATURE_0_TRC_DBG_MDL_CP_Field := 16#0#;
      --  1 = Support Trace Debug Model - Memory Mappped
      TRC_DBG_MDL_MEM  : CP15_DEBUG_FEATURE_0_TRC_DBG_MDL_MEM_Field := 16#0#;
      --  0 = Does Not Support for Microcontroller Debug Model
      MCU_DBG_MDL      : CP15_DEBUG_FEATURE_0_MCU_DBG_MDL_Field := 16#0#;
      --  SBZ
      Rsv1             : CP15_DEBUG_FEATURE_0_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_DEBUG_FEATURE_0_Register use record
      CORE_DBG_MDL_CP  at 16#0# range 0 .. 3;
      SECURE_DBG_MDL   at 16#0# range 4 .. 7;
      CORE_DBG_MDL_MEM at 16#0# range 8 .. 11;
      TRC_DBG_MDL_CP   at 16#0# range 12 .. 15;
      TRC_DBG_MDL_MEM  at 16#0# range 16 .. 19;
      MCU_DBG_MDL      at 16#0# range 20 .. 23;
      Rsv1             at 16#0# range 24 .. 31;
   end record;

   ------------------------------------------
   -- CP15_MEMORY_MODEL_FEATURE_0_Register --
   ------------------------------------------

   subtype CP15_MEMORY_MODEL_FEATURE_0_VMSA_Field is TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_0_PMSA_Field is TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_0_OUTERMOST_SHAREABILITY_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_0_SHAREABILITY_LEVELS_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_0_TCM_SUPPORT_Field is TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_0_AUXILIARY_REGISTERS_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_0_FCSE_Field is TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_0_INNTERMOST_SHAREABILITY_Field is
     TMS570LC43xx.UInt4;

   --  ID_MMFR0
   type CP15_MEMORY_MODEL_FEATURE_0_Register is record
      --  0 = Does Not Support Core Debug Model - Coprocessor
      VMSA                    : CP15_MEMORY_MODEL_FEATURE_0_VMSA_Field :=
                                 16#0#;
      --  3 = Supports PMSAv7
      PMSA                    : CP15_MEMORY_MODEL_FEATURE_0_PMSA_Field :=
                                 16#0#;
      --  0 = Implemented as Non-Cachable
      OUTERMOST_SHAREABILITY  : CP15_MEMORY_MODEL_FEATURE_0_OUTERMOST_SHAREABILITY_Field :=
                                 16#0#;
      --  0 = One Level of Sharability
      SHAREABILITY_LEVELS     : CP15_MEMORY_MODEL_FEATURE_0_SHAREABILITY_LEVELS_Field :=
                                 16#0#;
      --  1 = Implementation Defined
      TCM_SUPPORT             : CP15_MEMORY_MODEL_FEATURE_0_TCM_SUPPORT_Field :=
                                 16#0#;
      --  2 = Supports AIFSR and ADFSR
      AUXILIARY_REGISTERS     : CP15_MEMORY_MODEL_FEATURE_0_AUXILIARY_REGISTERS_Field :=
                                 16#0#;
      --  0 = Does Not Support Fast Context Switch Extension (FCSE)
      FCSE                    : CP15_MEMORY_MODEL_FEATURE_0_FCSE_Field :=
                                 16#0#;
      --  N/A Only 1 Shareability Level Implemented
      INNTERMOST_SHAREABILITY : CP15_MEMORY_MODEL_FEATURE_0_INNTERMOST_SHAREABILITY_Field :=
                                 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_MEMORY_MODEL_FEATURE_0_Register use record
      VMSA                    at 16#0# range 0 .. 3;
      PMSA                    at 16#0# range 4 .. 7;
      OUTERMOST_SHAREABILITY  at 16#0# range 8 .. 11;
      SHAREABILITY_LEVELS     at 16#0# range 12 .. 15;
      TCM_SUPPORT             at 16#0# range 16 .. 19;
      AUXILIARY_REGISTERS     at 16#0# range 20 .. 23;
      FCSE                    at 16#0# range 24 .. 27;
      INNTERMOST_SHAREABILITY at 16#0# range 28 .. 31;
   end record;

   ------------------------------------------
   -- CP15_MEMORY_MODEL_FEATURE_1_Register --
   ------------------------------------------

   subtype CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_LINE_OPS_MVA_HARVARD_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_LINE_OPS_MVA_UNIFIED_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_LINE_OPS_SET_WAY_HARVARD_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_LINE_OPS_SET_WAY_UNIFIED_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_OPS_HARVARD_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_OPS_UNIFIED_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_1_L1_TEST_CLEAN_OPS_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_1_BRANCH_PREDICTOR_Field is
     TMS570LC43xx.UInt4;

   --  ID_MMFR1
   type CP15_MEMORY_MODEL_FEATURE_1_Register is record
      --  0 = Does Not Support L1$ Maintenance by Address, Harvard
      L1_CACHE_LINE_OPS_MVA_HARVARD     : CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_LINE_OPS_MVA_HARVARD_Field :=
                                           16#0#;
      --  0 = Does Not Support L1$ Maintenance by Address, Unified
      L1_CACHE_LINE_OPS_MVA_UNIFIED     : CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_LINE_OPS_MVA_UNIFIED_Field :=
                                           16#0#;
      --  0 = Does Not Support L1$ Maintenance by Set and Way, Harvard
      L1_CACHE_LINE_OPS_SET_WAY_HARVARD : CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_LINE_OPS_SET_WAY_HARVARD_Field :=
                                           16#0#;
      --  0 = Does Not Support L1$ Maintenance by Set and Way, Unified
      L1_CACHE_LINE_OPS_SET_WAY_UNIFIED : CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_LINE_OPS_SET_WAY_UNIFIED_Field :=
                                           16#0#;
      --  0 = Does Not Support L1$ Entire Cache Maintenance, Harvard
      L1_CACHE_OPS_HARVARD              : CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_OPS_HARVARD_Field :=
                                           16#0#;
      --  0 = Does Not Support L1$ Entire Cache Maintenance, Unified
      L1_CACHE_OPS_UNIFIED              : CP15_MEMORY_MODEL_FEATURE_1_L1_CACHE_OPS_UNIFIED_Field :=
                                           16#0#;
      --  0 = Does Not Support L1D$ Test And Clean, Harvard or Unified
      L1_TEST_CLEAN_OPS                 : CP15_MEMORY_MODEL_FEATURE_1_L1_TEST_CLEAN_OPS_Field :=
                                           16#0#;
      --  0 = no MMU Present
      BRANCH_PREDICTOR                  : CP15_MEMORY_MODEL_FEATURE_1_BRANCH_PREDICTOR_Field :=
                                           16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_MEMORY_MODEL_FEATURE_1_Register use record
      L1_CACHE_LINE_OPS_MVA_HARVARD     at 16#0# range 0 .. 3;
      L1_CACHE_LINE_OPS_MVA_UNIFIED     at 16#0# range 4 .. 7;
      L1_CACHE_LINE_OPS_SET_WAY_HARVARD at 16#0# range 8 .. 11;
      L1_CACHE_LINE_OPS_SET_WAY_UNIFIED at 16#0# range 12 .. 15;
      L1_CACHE_OPS_HARVARD              at 16#0# range 16 .. 19;
      L1_CACHE_OPS_UNIFIED              at 16#0# range 20 .. 23;
      L1_TEST_CLEAN_OPS                 at 16#0# range 24 .. 27;
      BRANCH_PREDICTOR                  at 16#0# range 28 .. 31;
   end record;

   ------------------------------------------
   -- CP15_MEMORY_MODEL_FEATURE_2_Register --
   ------------------------------------------

   subtype CP15_MEMORY_MODEL_FEATURE_2_L1_FG_PREFETCH_CACHE_OPS_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_2_L1_BG_PREFETCH_CACHE_OPS_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_2_L1_CACHE_LINE_OPS_RANGE_HARVARD_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_2_TLB_MAINTENANCE_OPS_HARVARD_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_2_TLB_MAINTENANCE_OPS_UNIFIED_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_2_MEMORY_BARRIER_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_2_WFI_Field is TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_2_HW_ACCESS_FLAG_Field is
     TMS570LC43xx.UInt4;

   --  ID_MMFR2
   type CP15_MEMORY_MODEL_FEATURE_2_Register is record
      --  0 = Does Not Support L1$ Foreground Prefetch Operations
      L1_FG_PREFETCH_CACHE_OPS        : CP15_MEMORY_MODEL_FEATURE_2_L1_FG_PREFETCH_CACHE_OPS_Field :=
                                         16#0#;
      --  0 = Does Not Support L1$ Background Prefetch Operations
      L1_BG_PREFETCH_CACHE_OPS        : CP15_MEMORY_MODEL_FEATURE_2_L1_BG_PREFETCH_CACHE_OPS_Field :=
                                         16#0#;
      --  0 = Does Not Support L1$ Maintenance by Range, Harvard
      L1_CACHE_LINE_OPS_RANGE_HARVARD : CP15_MEMORY_MODEL_FEATURE_2_L1_CACHE_LINE_OPS_RANGE_HARVARD_Field :=
                                         16#0#;
      --  0 = Does Not Support TLB Maintenance, Harvard
      TLB_MAINTENANCE_OPS_HARVARD     : CP15_MEMORY_MODEL_FEATURE_2_TLB_MAINTENANCE_OPS_HARVARD_Field :=
                                         16#0#;
      --  0 = Does Not Support TLB Maintenance, Unified
      TLB_MAINTENANCE_OPS_UNIFIED     : CP15_MEMORY_MODEL_FEATURE_2_TLB_MAINTENANCE_OPS_UNIFIED_Field :=
                                         16#0#;
      --  2 = Supports DSB, ISB, and DMB
      MEMORY_BARRIER                  : CP15_MEMORY_MODEL_FEATURE_2_MEMORY_BARRIER_Field :=
                                         16#0#;
      --  1 = Supports Wait For Interrupt
      WFI                             : CP15_MEMORY_MODEL_FEATURE_2_WFI_Field :=
                                         16#0#;
      --  0 = Does Not Support Hardware Access Flag
      HW_ACCESS_FLAG                  : CP15_MEMORY_MODEL_FEATURE_2_HW_ACCESS_FLAG_Field :=
                                         16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_MEMORY_MODEL_FEATURE_2_Register use record
      L1_FG_PREFETCH_CACHE_OPS        at 16#0# range 0 .. 3;
      L1_BG_PREFETCH_CACHE_OPS        at 16#0# range 4 .. 7;
      L1_CACHE_LINE_OPS_RANGE_HARVARD at 16#0# range 8 .. 11;
      TLB_MAINTENANCE_OPS_HARVARD     at 16#0# range 12 .. 15;
      TLB_MAINTENANCE_OPS_UNIFIED     at 16#0# range 16 .. 19;
      MEMORY_BARRIER                  at 16#0# range 20 .. 23;
      WFI                             at 16#0# range 24 .. 27;
      HW_ACCESS_FLAG                  at 16#0# range 28 .. 31;
   end record;

   ------------------------------------------
   -- CP15_MEMORY_MODEL_FEATURE_3_Register --
   ------------------------------------------

   subtype CP15_MEMORY_MODEL_FEATURE_3_HIER_CACHE_MAINTENANCE_OPS_MVA_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_3_HIER_CACHE_MAINTENANCE_OPS_SET_WAY_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_3_BP_MAINTENANCE_OPS_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_3_MAINTENANCE_BROADCAST_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_3_Rsv2_Field is TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_3_COHERENT_WALK_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_3_Rsv1_Field is TMS570LC43xx.UInt4;
   subtype CP15_MEMORY_MODEL_FEATURE_3_SUPERSECTION_Field is
     TMS570LC43xx.UInt4;

   --  ID_MMFR3
   type CP15_MEMORY_MODEL_FEATURE_3_Register is record
      --  1 = Supports D$ Invalidate by Address, Clean By Address, Clean and
      --  Invalidate by Address. I$ Invalidate by address, Invalidate All
      HIER_CACHE_MAINTENANCE_OPS_MVA     : CP15_MEMORY_MODEL_FEATURE_3_HIER_CACHE_MAINTENANCE_OPS_MVA_Field :=
                                            16#0#;
      --  1 = Supports Invalidate Cache, Clean and Invalidate, and Clean by Set
      --  and Way
      HIER_CACHE_MAINTENANCE_OPS_SET_WAY : CP15_MEMORY_MODEL_FEATURE_3_HIER_CACHE_MAINTENANCE_OPS_SET_WAY_Field :=
                                            16#0#;
      --  2 = Supports invalidate entire branch predictor array and by address
      BP_MAINTENANCE_OPS                 : CP15_MEMORY_MODEL_FEATURE_3_BP_MAINTENANCE_OPS_Field :=
                                            16#0#;
      --  0 = Cache Maintenance Operations are Local
      MAINTENANCE_BROADCAST              : CP15_MEMORY_MODEL_FEATURE_3_MAINTENANCE_BROADCAST_Field :=
                                            16#0#;
      --  SBZ
      Rsv2                               : CP15_MEMORY_MODEL_FEATURE_3_Rsv2_Field :=
                                            16#0#;
      --  0 = N/A for PMSA Architecture
      COHERENT_WALK                      : CP15_MEMORY_MODEL_FEATURE_3_COHERENT_WALK_Field :=
                                            16#0#;
      --  SBZ
      Rsv1                               : CP15_MEMORY_MODEL_FEATURE_3_Rsv1_Field :=
                                            16#0#;
      --  0 = N/A for PMSA Architecture
      SUPERSECTION                       : CP15_MEMORY_MODEL_FEATURE_3_SUPERSECTION_Field :=
                                            16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_MEMORY_MODEL_FEATURE_3_Register use record
      HIER_CACHE_MAINTENANCE_OPS_MVA     at 16#0# range 0 .. 3;
      HIER_CACHE_MAINTENANCE_OPS_SET_WAY at 16#0# range 4 .. 7;
      BP_MAINTENANCE_OPS                 at 16#0# range 8 .. 11;
      MAINTENANCE_BROADCAST              at 16#0# range 12 .. 15;
      Rsv2                               at 16#0# range 16 .. 19;
      COHERENT_WALK                      at 16#0# range 20 .. 23;
      Rsv1                               at 16#0# range 24 .. 27;
      SUPERSECTION                       at 16#0# range 28 .. 31;
   end record;

   -----------------------------------------------
   -- CP15_INSTRUCTION_SET_ATTRIBUTE_0_Register --
   -----------------------------------------------

   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_0_AT_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_0_BC_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_0_BF_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_0_CB_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_0_CP_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_0_DBG_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_0_DIV_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_0_Rsv1_Field is TMS570LC43xx.UInt4;

   --  ID_ISAR0
   type CP15_INSTRUCTION_SET_ATTRIBUTE_0_Register is record
      --  1 = Supports Atomic SWP, SWPB
      AT_k : CP15_INSTRUCTION_SET_ATTRIBUTE_0_AT_Field := 16#0#;
      --  1 = Supports Count Leading Zeros CLZ
      BC   : CP15_INSTRUCTION_SET_ATTRIBUTE_0_BC_Field := 16#0#;
      --  1 = Supports Bitfield BFC, BFI, SBFX, UBFX
      BF   : CP15_INSTRUCTION_SET_ATTRIBUTE_0_BF_Field := 16#0#;
      --  1 = Supports Compare Branch CBNZ, CBZ
      CB   : CP15_INSTRUCTION_SET_ATTRIBUTE_0_CB_Field := 16#0#;
      --  0 = Does Not Support Coprocessors other than CP14, CP14, VFP
      CP   : CP15_INSTRUCTION_SET_ATTRIBUTE_0_CP_Field := 16#0#;
      --  1 = Supports Breakpoint BKPT
      DBG  : CP15_INSTRUCTION_SET_ATTRIBUTE_0_DBG_Field := 16#0#;
      --  2 = Supports UDIV and SDIV in ARM and THUMB
      DIV  : CP15_INSTRUCTION_SET_ATTRIBUTE_0_DIV_Field := 16#0#;
      --  SBZ
      Rsv1 : CP15_INSTRUCTION_SET_ATTRIBUTE_0_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_INSTRUCTION_SET_ATTRIBUTE_0_Register use record
      AT_k at 16#0# range 0 .. 3;
      BC   at 16#0# range 4 .. 7;
      BF   at 16#0# range 8 .. 11;
      CB   at 16#0# range 12 .. 15;
      CP   at 16#0# range 16 .. 19;
      DBG  at 16#0# range 20 .. 23;
      DIV  at 16#0# range 24 .. 27;
      Rsv1 at 16#0# range 28 .. 31;
   end record;

   -----------------------------------------------
   -- CP15_INSTRUCTION_SET_ATTRIBUTE_1_Register --
   -----------------------------------------------

   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_1_ENDIAN_Field is TMS570LC43xx.UInt4;

   ------------------------------------------------
   -- CP15_INSTRUCTION_SET_ATTRIBUTE_1.EXCEPTION --
   ------------------------------------------------

   --  CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION array element
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION_Element is
     TMS570LC43xx.UInt4;

   --  CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION array
   type CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION_Field_Array is array (1 .. 2)
     of CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION
   type CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EXCEPTION as a value
            Val : TMS570LC43xx.Byte;
         when True =>
            --  EXCEPTION as an array
            Arr : CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXTEND_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_1_ITE_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_1_IMMEDIATE_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_1_INTERWRK_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_1_JAZELLE_Field is
     TMS570LC43xx.UInt4;

   --  ID_ISAR1
   type CP15_INSTRUCTION_SET_ATTRIBUTE_1_Register is record
      --  1 = Supports SETNED and E bit In PSR
      ENDIAN      : CP15_INSTRUCTION_SET_ATTRIBUTE_1_ENDIAN_Field := 16#0#;
      --  1 = Supports LDM (exception return), LDM (user regs), STM (User Regs)
      EXCEPTION_k : CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXCEPTION_Field :=
                     (As_Array => False, Val => 16#0#);
      --  2 = Supports Sign or Zero Extend Instructions
      EXTEND      : CP15_INSTRUCTION_SET_ATTRIBUTE_1_EXTEND_Field := 16#0#;
      --  1 = Supports If Then IT
      ITE         : CP15_INSTRUCTION_SET_ATTRIBUTE_1_ITE_Field := 16#0#;
      --  1 = Supports MOVT, MOV IMM16, Thumb ADD,SUB w. IMM2
      IMMEDIATE   : CP15_INSTRUCTION_SET_ATTRIBUTE_1_IMMEDIATE_Field := 16#0#;
      --  3 = Supports BX, T bit in PSR, BLX and PC Loads have BX Behavior, DP
      --  with PC like BX
      INTERWRK    : CP15_INSTRUCTION_SET_ATTRIBUTE_1_INTERWRK_Field := 16#0#;
      --  1 = Suppports BJZ, J bit in PSR
      JAZELLE     : CP15_INSTRUCTION_SET_ATTRIBUTE_1_JAZELLE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_INSTRUCTION_SET_ATTRIBUTE_1_Register use record
      ENDIAN      at 16#0# range 0 .. 3;
      EXCEPTION_k at 16#0# range 4 .. 11;
      EXTEND      at 16#0# range 12 .. 15;
      ITE         at 16#0# range 16 .. 19;
      IMMEDIATE   at 16#0# range 20 .. 23;
      INTERWRK    at 16#0# range 24 .. 27;
      JAZELLE     at 16#0# range 28 .. 31;
   end record;

   -----------------------------------------------
   -- CP15_INSTRUCTION_SET_ATTRIBUTE_2_Register --
   -----------------------------------------------

   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_2_ADDL_LOAD_STORE_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_2_MEM_HINT_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_2_INTERRUPTABLE_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_2_MULTIPLY_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_2_SIGNED_MPY_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_2_UNSIGNED_MPY_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_2_PSR_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_2_REVERSAL_Field is
     TMS570LC43xx.UInt4;

   --  ID_ISAR2
   type CP15_INSTRUCTION_SET_ATTRIBUTE_2_Register is record
      --  1 = Supports LDRD STRD
      ADDL_LOAD_STORE : CP15_INSTRUCTION_SET_ATTRIBUTE_2_ADDL_LOAD_STORE_Field :=
                         16#0#;
      --  4 = Supports PLD, PLI, PLDW
      MEM_HINT        : CP15_INSTRUCTION_SET_ATTRIBUTE_2_MEM_HINT_Field :=
                         16#0#;
      --  1 = Supports Restartable LDM/STM
      INTERRUPTABLE   : CP15_INSTRUCTION_SET_ATTRIBUTE_2_INTERRUPTABLE_Field :=
                         16#0#;
      --  2 = Supports Multiply Instructions MUL, MLA, MLS
      MULTIPLY        : CP15_INSTRUCTION_SET_ATTRIBUTE_2_MULTIPLY_Field :=
                         16#0#;
      --  3 = Supports Advanced Signed Multiply (36) and Q Bit in PSR
      SIGNED_MPY      : CP15_INSTRUCTION_SET_ATTRIBUTE_2_SIGNED_MPY_Field :=
                         16#0#;
      --  2 = Supports Advanced Unsigned Multiply UMULL, UMLAL, UMAAL
      UNSIGNED_MPY    : CP15_INSTRUCTION_SET_ATTRIBUTE_2_UNSIGNED_MPY_Field :=
                         16#0#;
      --  1 = Supports PSR Instructions MRS, MSR
      PSR             : CP15_INSTRUCTION_SET_ATTRIBUTE_2_PSR_Field := 16#0#;
      --  2 = Supports Reversal REV, REV16, REVSH, RBIT
      REVERSAL        : CP15_INSTRUCTION_SET_ATTRIBUTE_2_REVERSAL_Field :=
                         16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_INSTRUCTION_SET_ATTRIBUTE_2_Register use record
      ADDL_LOAD_STORE at 16#0# range 0 .. 3;
      MEM_HINT        at 16#0# range 4 .. 7;
      INTERRUPTABLE   at 16#0# range 8 .. 11;
      MULTIPLY        at 16#0# range 12 .. 15;
      SIGNED_MPY      at 16#0# range 16 .. 19;
      UNSIGNED_MPY    at 16#0# range 20 .. 23;
      PSR             at 16#0# range 24 .. 27;
      REVERSAL        at 16#0# range 28 .. 31;
   end record;

   -----------------------------------------------
   -- CP15_INSTRUCTION_SET_ATTRIBUTE_3_Register --
   -----------------------------------------------

   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_3_SAT_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_3_SIMD_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_3_SVC_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_3_SYNC_PRIM_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_3_TABLE_BRANCH_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_3_THUMBCPY_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_3_TRUENOP_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_3_THUMBEE_Field is
     TMS570LC43xx.UInt4;

   --  ID_ISAR3
   type CP15_INSTRUCTION_SET_ATTRIBUTE_3_Register is record
      --  1 = Supports QADD, QDADD, SDSUB, QSUB and Q bit in PSR
      SAT          : CP15_INSTRUCTION_SET_ATTRIBUTE_3_SAT_Field := 16#0#;
      --  3 = Supports SIMD instructions (49) and GE[3:0] bits in PSR
      SIMD         : CP15_INSTRUCTION_SET_ATTRIBUTE_3_SIMD_Field := 16#0#;
      --  1 = Supports SVC
      SVC          : CP15_INSTRUCTION_SET_ATTRIBUTE_3_SVC_Field := 16#0#;
      --  2 = Supports Synchronization Primitives LDR{EX|EXB|EXH|EXD},
      --  STR{EX|EXB|EXH|EXD} CLREX
      SYNC_PRIM    : CP15_INSTRUCTION_SET_ATTRIBUTE_3_SYNC_PRIM_Field :=
                      16#0#;
      --  1 = Supports Table Branch TBB, TBH
      TABLE_BRANCH : CP15_INSTRUCTION_SET_ATTRIBUTE_3_TABLE_BRANCH_Field :=
                      16#0#;
      --  1 = Supports Thumb MOV Low Reg to Low Reg
      THUMBCPY     : CP15_INSTRUCTION_SET_ATTRIBUTE_3_THUMBCPY_Field := 16#0#;
      --  1 = Supports NOP16, NOP32 and NOP Hints in ARM/THUMB
      TRUENOP      : CP15_INSTRUCTION_SET_ATTRIBUTE_3_TRUENOP_Field := 16#0#;
      --  0 = Does Not Support ThumbEE
      THUMBEE      : CP15_INSTRUCTION_SET_ATTRIBUTE_3_THUMBEE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_INSTRUCTION_SET_ATTRIBUTE_3_Register use record
      SAT          at 16#0# range 0 .. 3;
      SIMD         at 16#0# range 4 .. 7;
      SVC          at 16#0# range 8 .. 11;
      SYNC_PRIM    at 16#0# range 12 .. 15;
      TABLE_BRANCH at 16#0# range 16 .. 19;
      THUMBCPY     at 16#0# range 20 .. 23;
      TRUENOP      at 16#0# range 24 .. 27;
      THUMBEE      at 16#0# range 28 .. 31;
   end record;

   -----------------------------------------------
   -- CP15_INSTRUCTION_SET_ATTRIBUTE_4_Register --
   -----------------------------------------------

   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_4_UNPRIVILIGED_INSTRUCTIONS_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_4_WITH_SHIFT_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_4_WRITE_BACK_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_4_SECURE_MONITOR_CALL_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_4_BARRIER_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_4_EXCLUSIVE_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_4_PSR_M_INSTR_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_SET_ATTRIBUTE_4_SWP_FRAC_Field is
     TMS570LC43xx.UInt4;

   --  ID_ISAR4
   type CP15_INSTRUCTION_SET_ATTRIBUTE_4_Register is record
      --  2 = Supports LDR{SB|B|SH|H}T and STR{B|H}T
      UNPRIVILIGED_INSTRUCTIONS : CP15_INSTRUCTION_SET_ATTRIBUTE_4_UNPRIVILIGED_INSTRUCTIONS_Field :=
                                   16#0#;
      --  4 = Supports full range of constant shift and reg controlled shift
      WITH_SHIFT                : CP15_INSTRUCTION_SET_ATTRIBUTE_4_WITH_SHIFT_Field :=
                                   16#0#;
      --  1 = Supports all ARMv7 Write Back Addressing Modes
      WRITE_BACK                : CP15_INSTRUCTION_SET_ATTRIBUTE_4_WRITE_BACK_Field :=
                                   16#0#;
      --  0 = Does Not Support Secure Monitor Call
      SECURE_MONITOR_CALL       : CP15_INSTRUCTION_SET_ATTRIBUTE_4_SECURE_MONITOR_CALL_Field :=
                                   16#0#;
      --  1 = Supports Barrier Instructions DMB, DSB, and ISB
      BARRIER                   : CP15_INSTRUCTION_SET_ATTRIBUTE_4_BARRIER_Field :=
                                   16#0#;
      --  0 = Only Supports Synchronization Primitives Indicated by ID_ISAR3
      --  Reg
      EXCLUSIVE                 : CP15_INSTRUCTION_SET_ATTRIBUTE_4_EXCLUSIVE_Field :=
                                   16#0#;
      --  0 = Does Not Support M Profile Instructions Modifying PSRs
      PSR_M_INSTR               : CP15_INSTRUCTION_SET_ATTRIBUTE_4_PSR_M_INSTR_Field :=
                                   16#0#;
      --  0 = indicated by ID_ISAR0
      SWP_FRAC                  : CP15_INSTRUCTION_SET_ATTRIBUTE_4_SWP_FRAC_Field :=
                                   16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_INSTRUCTION_SET_ATTRIBUTE_4_Register use record
      UNPRIVILIGED_INSTRUCTIONS at 16#0# range 0 .. 3;
      WITH_SHIFT                at 16#0# range 4 .. 7;
      WRITE_BACK                at 16#0# range 8 .. 11;
      SECURE_MONITOR_CALL       at 16#0# range 12 .. 15;
      BARRIER                   at 16#0# range 16 .. 19;
      EXCLUSIVE                 at 16#0# range 20 .. 23;
      PSR_M_INSTR               at 16#0# range 24 .. 27;
      SWP_FRAC                  at 16#0# range 28 .. 31;
   end record;

   -----------------------------------------
   -- CP15_CURRENT_CACHE_SIZE_ID_Register --
   -----------------------------------------

   subtype CP15_CURRENT_CACHE_SIZE_ID_LINESZ_Field is TMS570LC43xx.UInt3;
   subtype CP15_CURRENT_CACHE_SIZE_ID_ASSOC_Field is TMS570LC43xx.UInt10;
   subtype CP15_CURRENT_CACHE_SIZE_ID_NUMSETS_Field is TMS570LC43xx.UInt15;
   subtype CP15_CURRENT_CACHE_SIZE_ID_WA_Field is TMS570LC43xx.Bit;
   subtype CP15_CURRENT_CACHE_SIZE_ID_RA_Field is TMS570LC43xx.Bit;
   subtype CP15_CURRENT_CACHE_SIZE_ID_WB_Field is TMS570LC43xx.Bit;
   subtype CP15_CURRENT_CACHE_SIZE_ID_WT_Field is TMS570LC43xx.Bit;

   --  CCSIDR
   type CP15_CURRENT_CACHE_SIZE_ID_Register is record
      --  log2(LineSize) - 2
      LINESZ  : CP15_CURRENT_CACHE_SIZE_ID_LINESZ_Field := 16#0#;
      --  Number of Ways - 1
      ASSOC   : CP15_CURRENT_CACHE_SIZE_ID_ASSOC_Field := 16#0#;
      --  Number of Sets - 1
      NUMSETS : CP15_CURRENT_CACHE_SIZE_ID_NUMSETS_Field := 16#0#;
      --  1 = Supports Write Allocate
      WA      : CP15_CURRENT_CACHE_SIZE_ID_WA_Field := 16#0#;
      --  1 = Supports Read Allocate
      RA      : CP15_CURRENT_CACHE_SIZE_ID_RA_Field := 16#0#;
      --  1 = Supports Write Back
      WB      : CP15_CURRENT_CACHE_SIZE_ID_WB_Field := 16#0#;
      --  1 = Supports Write Through
      WT      : CP15_CURRENT_CACHE_SIZE_ID_WT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_CURRENT_CACHE_SIZE_ID_Register use record
      LINESZ  at 16#0# range 0 .. 2;
      ASSOC   at 16#0# range 3 .. 12;
      NUMSETS at 16#0# range 13 .. 27;
      WA      at 16#0# range 28 .. 28;
      RA      at 16#0# range 29 .. 29;
      WB      at 16#0# range 30 .. 30;
      WT      at 16#0# range 31 .. 31;
   end record;

   ------------------------------------------
   -- CP15_CURRENT_CACHE_LEVEL_ID_Register --
   ------------------------------------------

   subtype CP15_CURRENT_CACHE_LEVEL_ID_CL1I_Field is TMS570LC43xx.Bit;
   subtype CP15_CURRENT_CACHE_LEVEL_ID_CL1D_Field is TMS570LC43xx.Bit;
   subtype CP15_CURRENT_CACHE_LEVEL_ID_CL1_Field is TMS570LC43xx.Bit;

   ------------------------------------
   -- CP15_CURRENT_CACHE_LEVEL_ID.CL --
   ------------------------------------

   --  CP15_CURRENT_CACHE_LEVEL_ID_CL array element
   subtype CP15_CURRENT_CACHE_LEVEL_ID_CL_Element is TMS570LC43xx.UInt3;

   --  CP15_CURRENT_CACHE_LEVEL_ID_CL array
   type CP15_CURRENT_CACHE_LEVEL_ID_CL_Field_Array is array (2 .. 7)
     of CP15_CURRENT_CACHE_LEVEL_ID_CL_Element
     with Component_Size => 3, Size => 18;

   --  Type definition for CP15_CURRENT_CACHE_LEVEL_ID_CL
   type CP15_CURRENT_CACHE_LEVEL_ID_CL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CL as a value
            Val : TMS570LC43xx.UInt18;
         when True =>
            --  CL as an array
            Arr : CP15_CURRENT_CACHE_LEVEL_ID_CL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 18;

   for CP15_CURRENT_CACHE_LEVEL_ID_CL_Field use record
      Val at 0 range 0 .. 17;
      Arr at 0 range 0 .. 17;
   end record;

   subtype CP15_CURRENT_CACHE_LEVEL_ID_LOUIS_Field is TMS570LC43xx.UInt3;
   subtype CP15_CURRENT_CACHE_LEVEL_ID_LOC_Field is TMS570LC43xx.UInt3;
   subtype CP15_CURRENT_CACHE_LEVEL_ID_LOU_Field is TMS570LC43xx.UInt3;
   subtype CP15_CURRENT_CACHE_LEVEL_ID_Rsv1_Field is TMS570LC43xx.UInt2;

   --  CLIDR
   type CP15_CURRENT_CACHE_LEVEL_ID_Register is record
      --  1 = L1I$
      CL1I  : CP15_CURRENT_CACHE_LEVEL_ID_CL1I_Field := 16#0#;
      --  1 = L1D$
      CL1D  : CP15_CURRENT_CACHE_LEVEL_ID_CL1D_Field := 16#0#;
      --  0 = No Unified L1$
      CL1   : CP15_CURRENT_CACHE_LEVEL_ID_CL1_Field := 16#0#;
      --  0 = No L2$
      CL    : CP15_CURRENT_CACHE_LEVEL_ID_CL_Field :=
               (As_Array => False, Val => 16#0#);
      --  1 = Level of Inner Shareable Unification is L2
      LOUIS : CP15_CURRENT_CACHE_LEVEL_ID_LOUIS_Field := 16#0#;
      --  1 = Level of Coherency is L2
      LOC   : CP15_CURRENT_CACHE_LEVEL_ID_LOC_Field := 16#0#;
      --  1 = Level of Unification is L2
      LOU   : CP15_CURRENT_CACHE_LEVEL_ID_LOU_Field := 16#0#;
      --  SBZ
      Rsv1  : CP15_CURRENT_CACHE_LEVEL_ID_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_CURRENT_CACHE_LEVEL_ID_Register use record
      CL1I  at 16#0# range 0 .. 0;
      CL1D  at 16#0# range 1 .. 1;
      CL1   at 16#0# range 2 .. 2;
      CL    at 16#0# range 3 .. 20;
      LOUIS at 16#0# range 21 .. 23;
      LOC   at 16#0# range 24 .. 26;
      LOU   at 16#0# range 27 .. 29;
      Rsv1  at 16#0# range 30 .. 31;
   end record;

   ----------------------------------------
   -- CP15_CACHE_SIZE_SELECTION_Register --
   ----------------------------------------

   subtype CP15_CACHE_SIZE_SELECTION_IND_Field is TMS570LC43xx.Bit;
   subtype CP15_CACHE_SIZE_SELECTION_LVL_Field is TMS570LC43xx.UInt3;
   subtype CP15_CACHE_SIZE_SELECTION_Rsv1_Field is TMS570LC43xx.UInt28;

   --  CSSR
   type CP15_CACHE_SIZE_SELECTION_Register is record
      --  1=L1I$, 0=L1D$
      IND  : CP15_CACHE_SIZE_SELECTION_IND_Field := 16#0#;
      --  0 = L1$
      LVL  : CP15_CACHE_SIZE_SELECTION_LVL_Field := 16#0#;
      --  SBZ
      Rsv1 : CP15_CACHE_SIZE_SELECTION_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_CACHE_SIZE_SELECTION_Register use record
      IND  at 16#0# range 0 .. 0;
      LVL  at 16#0# range 1 .. 3;
      Rsv1 at 16#0# range 4 .. 31;
   end record;

   ----------------------------------
   -- CP15_SYSTEM_CONTROL_Register --
   ----------------------------------

   subtype CP15_SYSTEM_CONTROL_M_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_A_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_C_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_Rsv8_Field is TMS570LC43xx.UInt4;
   subtype CP15_SYSTEM_CONTROL_Rsv7_Field is TMS570LC43xx.UInt3;
   subtype CP15_SYSTEM_CONTROL_SW_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_Z_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_I_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_V_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_RR_Field is TMS570LC43xx.Bit;

   -----------------------------
   -- CP15_SYSTEM_CONTROL.Rsv --
   -----------------------------

   --  CP15_SYSTEM_CONTROL_Rsv array element
   subtype CP15_SYSTEM_CONTROL_Rsv_Element is TMS570LC43xx.Bit;

   --  CP15_SYSTEM_CONTROL_Rsv array
   type CP15_SYSTEM_CONTROL_Rsv_Field_Array is array (5 .. 6)
     of CP15_SYSTEM_CONTROL_Rsv_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CP15_SYSTEM_CONTROL_Rsv
   type CP15_SYSTEM_CONTROL_Rsv_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  Rsv as a value
            Val : TMS570LC43xx.UInt2;
         when True =>
            --  Rsv as an array
            Arr : CP15_SYSTEM_CONTROL_Rsv_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CP15_SYSTEM_CONTROL_Rsv_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CP15_SYSTEM_CONTROL_BR_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_Rsv4_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_DZ_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_Rsv3_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_FI_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_Rsv2_Field is TMS570LC43xx.UInt2;
   subtype CP15_SYSTEM_CONTROL_VE_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_EE_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_Rsv1_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_NMFI_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_TRE_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_AFE_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_TE_Field is TMS570LC43xx.Bit;
   subtype CP15_SYSTEM_CONTROL_IE_Field is TMS570LC43xx.Bit;

   --  SCTLR
   type CP15_SYSTEM_CONTROL_Register is record
      --  Enable Memory Protection Unit
      M    : CP15_SYSTEM_CONTROL_M_Field := 16#0#;
      --  Enable Strict Alignment Fault Check
      A    : CP15_SYSTEM_CONTROL_A_Field := 16#0#;
      --  Enable L1 Data Cache
      C    : CP15_SYSTEM_CONTROL_C_Field := 16#0#;
      --  Reserved SBO
      Rsv8 : CP15_SYSTEM_CONTROL_Rsv8_Field := 16#0#;
      --  Reserved SBZ
      Rsv7 : CP15_SYSTEM_CONTROL_Rsv7_Field := 16#0#;
      --  Enable Swap Instruction
      SW   : CP15_SYSTEM_CONTROL_SW_Field := 16#0#;
      --  Enable Branch Prediction
      Z    : CP15_SYSTEM_CONTROL_Z_Field := 16#0#;
      --  Enable L1 Instruction Cache
      I    : CP15_SYSTEM_CONTROL_I_Field := 16#0#;
      --  Enable High Exception Vectors
      V    : CP15_SYSTEM_CONTROL_V_Field := 16#0#;
      --  Enable Round Robin Data Cache Replacement Strategy
      RR   : CP15_SYSTEM_CONTROL_RR_Field := 16#0#;
      --  Reserved SBZ
      Rsv  : CP15_SYSTEM_CONTROL_Rsv_Field :=
              (As_Array => False, Val => 16#0#);
      --  Enable Memory Protection Unit Background Region
      BR   : CP15_SYSTEM_CONTROL_BR_Field := 16#0#;
      --  Reserved SBO
      Rsv4 : CP15_SYSTEM_CONTROL_Rsv4_Field := 16#0#;
      --  Enable Divide By Zero Exception
      DZ   : CP15_SYSTEM_CONTROL_DZ_Field := 16#0#;
      --  Reserved SBZ
      Rsv3 : CP15_SYSTEM_CONTROL_Rsv3_Field := 16#0#;
      --  Enable Fast Interrupt (SBO)
      FI   : CP15_SYSTEM_CONTROL_FI_Field := 16#0#;
      --  Reserved SBO
      Rsv2 : CP15_SYSTEM_CONTROL_Rsv2_Field := 16#0#;
      --  Enable Vectored Interrupt
      VE   : CP15_SYSTEM_CONTROL_VE_Field := 16#0#;
      --  State of CPSR E bit on Exception Entry
      EE   : CP15_SYSTEM_CONTROL_EE_Field := 16#0#;
      --  Reserved SBZ
      Rsv1 : CP15_SYSTEM_CONTROL_Rsv1_Field := 16#0#;
      --  Enable Non Maskable Fast Interrupt
      NMFI : CP15_SYSTEM_CONTROL_NMFI_Field := 16#0#;
      --  Enable TEX Remap (SBZ)
      TRE  : CP15_SYSTEM_CONTROL_TRE_Field := 16#0#;
      --  Enable Access Flag SBZ)
      AFE  : CP15_SYSTEM_CONTROL_AFE_Field := 16#0#;
      --  Enable Thumb Exception Entry
      TE   : CP15_SYSTEM_CONTROL_TE_Field := 16#0#;
      --  Enable Big Endian
      IE   : CP15_SYSTEM_CONTROL_IE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_SYSTEM_CONTROL_Register use record
      M    at 16#0# range 0 .. 0;
      A    at 16#0# range 1 .. 1;
      C    at 16#0# range 2 .. 2;
      Rsv8 at 16#0# range 3 .. 6;
      Rsv7 at 16#0# range 7 .. 9;
      SW   at 16#0# range 10 .. 10;
      Z    at 16#0# range 11 .. 11;
      I    at 16#0# range 12 .. 12;
      V    at 16#0# range 13 .. 13;
      RR   at 16#0# range 14 .. 14;
      Rsv  at 16#0# range 15 .. 16;
      BR   at 16#0# range 17 .. 17;
      Rsv4 at 16#0# range 18 .. 18;
      DZ   at 16#0# range 19 .. 19;
      Rsv3 at 16#0# range 20 .. 20;
      FI   at 16#0# range 21 .. 21;
      Rsv2 at 16#0# range 22 .. 23;
      VE   at 16#0# range 24 .. 24;
      EE   at 16#0# range 25 .. 25;
      Rsv1 at 16#0# range 26 .. 26;
      NMFI at 16#0# range 27 .. 27;
      TRE  at 16#0# range 28 .. 28;
      AFE  at 16#0# range 29 .. 29;
      TE   at 16#0# range 30 .. 30;
      IE   at 16#0# range 31 .. 31;
   end record;

   -------------------------------------
   -- CP15_AUXILIARY_CONTROL_Register --
   -------------------------------------

   subtype CP15_AUXILIARY_CONTROL_ATCMECEN_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_B0TCMECEN_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_B1TCMECEN_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_CEC_Field is TMS570LC43xx.UInt3;
   subtype CP15_AUXILIARY_CONTROL_DILS_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_SMOV_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_FDSNS_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_FWT_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_FORA_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DNCH_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_ERPEG_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DLFO_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DBWR_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_BP_Field is TMS570LC43xx.UInt2;
   subtype CP15_AUXILIARY_CONTROL_RSDIS_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_Rsv1_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_FRCDIS_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DBHE_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DEOLP_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DILSM_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_AXISCUEN_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_AXISCEN_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_ATCMPCEN_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_B0TCMPCEN_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_B1TCMPCEN_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DIADI_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DIB1DI_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DIB2DI_Field is TMS570LC43xx.Bit;
   subtype CP15_AUXILIARY_CONTROL_DICDI_Field is TMS570LC43xx.Bit;

   --  ACTLR
   type CP15_AUXILIARY_CONTROL_Register is record
      --  Enable ATCM External Error
      ATCMECEN  : CP15_AUXILIARY_CONTROL_ATCMECEN_Field := 16#0#;
      --  Enable B0TCM External Error
      B0TCMECEN : CP15_AUXILIARY_CONTROL_B0TCMECEN_Field := 16#0#;
      --  Enable B1TCM External Error
      B1TCMECEN : CP15_AUXILIARY_CONTROL_B1TCMECEN_Field := 16#0#;
      --  Cache Error Control for Cache Parity/ECC Errors
      CEC       : CP15_AUXILIARY_CONTROL_CEC_Field := 16#0#;
      --  Disable Low Latency Interrupt on all Load/Store Instructions
      DILS      : CP15_AUXILIARY_CONTROL_DILS_Field := 16#0#;
      --  Disable Out of Order Completion of sMOV of Divide
      SMOV      : CP15_AUXILIARY_CONTROL_SMOV_Field := 16#0#;
      --  Force D-Side Not Shared when MPU is Off
      FDSNS     : CP15_AUXILIARY_CONTROL_FDSNS_Field := 16#0#;
      --  Force Write Through for Write Back Regions
      FWT       : CP15_AUXILIARY_CONTROL_FWT_Field := 16#0#;
      --  Force Outer Read Allocate for Outer Write Allocate Regions
      FORA      : CP15_AUXILIARY_CONTROL_FORA_Field := 16#0#;
      --  Disable Data Forwarding for NonCacheable AXI Master Accesses
      DNCH      : CP15_AUXILIARY_CONTROL_DNCH_Field := 16#0#;
      --  Enable Random Parity Error Generation
      ERPEG     : CP15_AUXILIARY_CONTROL_ERPEG_Field := 16#0#;
      --  Disable Line Fill Optimization in AXI Master
      DLFO      : CP15_AUXILIARY_CONTROL_DLFO_Field := 16#0#;
      --  Disable Write Burst in AXI Master
      DBWR      : CP15_AUXILIARY_CONTROL_DBWR_Field := 16#0#;
      --  Branch Prediction Policy: 00=Normal, 01=Always Taken, 10=Never Taken,
      --  11 Reserved
      BP        : CP15_AUXILIARY_CONTROL_BP_Field := 16#0#;
      --  Disable Return Stack
      RSDIS     : CP15_AUXILIARY_CONTROL_RSDIS_Field := 16#0#;
      --  Reserved (SBZ)
      Rsv1      : CP15_AUXILIARY_CONTROL_Rsv1_Field := 16#0#;
      --  Disable Fetch Rate Control
      FRCDIS    : CP15_AUXILIARY_CONTROL_FRCDIS_Field := 16#0#;
      --  Disable Branch History
      DBHE      : CP15_AUXILIARY_CONTROL_DBHE_Field := 16#0#;
      --  Disable End of Loop Prediction
      DEOLP     : CP15_AUXILIARY_CONTROL_DEOLP_Field := 16#0#;
      --  Disable Low Latency Interrupt on LDM/STM
      DILSM     : CP15_AUXILIARY_CONTROL_DILSM_Field := 16#0#;
      --  Enable AXI Slave Cache RAM Access - User Mode
      AXISCUEN  : CP15_AUXILIARY_CONTROL_AXISCUEN_Field := 16#0#;
      --  Enable AXI Slave Cache RAM Access
      AXISCEN   : CP15_AUXILIARY_CONTROL_AXISCEN_Field := 16#0#;
      --  Enable ATCM ECC Check
      ATCMPCEN  : CP15_AUXILIARY_CONTROL_ATCMPCEN_Field := 16#0#;
      --  Enable B0TCM ECC Check
      B0TCMPCEN : CP15_AUXILIARY_CONTROL_B0TCMPCEN_Field := 16#0#;
      --  Enable B1TCM ECC Check
      B1TCMPCEN : CP15_AUXILIARY_CONTROL_B1TCMPCEN_Field := 16#0#;
      --  Disable Cace A Dual Issue
      DIADI     : CP15_AUXILIARY_CONTROL_DIADI_Field := 16#0#;
      --  Disable Cace B1 Dual Issue
      DIB1DI    : CP15_AUXILIARY_CONTROL_DIB1DI_Field := 16#0#;
      --  Disable Cace B2 Dual Issue
      DIB2DI    : CP15_AUXILIARY_CONTROL_DIB2DI_Field := 16#0#;
      --  Disable Cace C Dual Issue
      DICDI     : CP15_AUXILIARY_CONTROL_DICDI_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_AUXILIARY_CONTROL_Register use record
      ATCMECEN  at 16#0# range 0 .. 0;
      B0TCMECEN at 16#0# range 1 .. 1;
      B1TCMECEN at 16#0# range 2 .. 2;
      CEC       at 16#0# range 3 .. 5;
      DILS      at 16#0# range 6 .. 6;
      SMOV      at 16#0# range 7 .. 7;
      FDSNS     at 16#0# range 8 .. 8;
      FWT       at 16#0# range 9 .. 9;
      FORA      at 16#0# range 10 .. 10;
      DNCH      at 16#0# range 11 .. 11;
      ERPEG     at 16#0# range 12 .. 12;
      DLFO      at 16#0# range 13 .. 13;
      DBWR      at 16#0# range 14 .. 14;
      BP        at 16#0# range 15 .. 16;
      RSDIS     at 16#0# range 17 .. 17;
      Rsv1      at 16#0# range 18 .. 18;
      FRCDIS    at 16#0# range 19 .. 19;
      DBHE      at 16#0# range 20 .. 20;
      DEOLP     at 16#0# range 21 .. 21;
      DILSM     at 16#0# range 22 .. 22;
      AXISCUEN  at 16#0# range 23 .. 23;
      AXISCEN   at 16#0# range 24 .. 24;
      ATCMPCEN  at 16#0# range 25 .. 25;
      B0TCMPCEN at 16#0# range 26 .. 26;
      B1TCMPCEN at 16#0# range 27 .. 27;
      DIADI     at 16#0# range 28 .. 28;
      DIB1DI    at 16#0# range 29 .. 29;
      DIB2DI    at 16#0# range 30 .. 30;
      DICDI     at 16#0# range 31 .. 31;
   end record;

   --------------------------------------
   -- CP15_COPROCESSOR_ACCESS_Register --
   --------------------------------------

   subtype CP15_COPROCESSOR_ACCESS_Rsv2_Field is TMS570LC43xx.UInt20;

   --------------------------------
   -- CP15_COPROCESSOR_ACCESS.CP --
   --------------------------------

   --  CP15_COPROCESSOR_ACCESS_CP array element
   subtype CP15_COPROCESSOR_ACCESS_CP_Element is TMS570LC43xx.UInt2;

   --  CP15_COPROCESSOR_ACCESS_CP array
   type CP15_COPROCESSOR_ACCESS_CP_Field_Array is array (10 .. 11)
     of CP15_COPROCESSOR_ACCESS_CP_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for CP15_COPROCESSOR_ACCESS_CP
   type CP15_COPROCESSOR_ACCESS_CP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CP as a value
            Val : TMS570LC43xx.UInt4;
         when True =>
            --  CP as an array
            Arr : CP15_COPROCESSOR_ACCESS_CP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CP15_COPROCESSOR_ACCESS_CP_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype CP15_COPROCESSOR_ACCESS_Rsv1_Field is TMS570LC43xx.UInt6;
   subtype CP15_COPROCESSOR_ACCESS_D32DIS_Field is TMS570LC43xx.Bit;
   subtype CP15_COPROCESSOR_ACCESS_ASEDIS_Field is TMS570LC43xx.Bit;

   --  CPACR
   type CP15_COPROCESSOR_ACCESS_Register is record
      --  Reserved SBZ
      Rsv2   : CP15_COPROCESSOR_ACCESS_Rsv2_Field := 16#0#;
      --  FPU Access Mode 00=Denied,01=PrivOnly,11=PrivUser, 10=Rsv
      CP     : CP15_COPROCESSOR_ACCESS_CP_Field :=
                (As_Array => False, Val => 16#0#);
      --  Reserved SBZ
      Rsv1   : CP15_COPROCESSOR_ACCESS_Rsv1_Field := 16#0#;
      --  D16-D31 Disable
      D32DIS : CP15_COPROCESSOR_ACCESS_D32DIS_Field := 16#0#;
      --  Advanced SIMD Disable
      ASEDIS : CP15_COPROCESSOR_ACCESS_ASEDIS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_COPROCESSOR_ACCESS_Register use record
      Rsv2   at 16#0# range 0 .. 19;
      CP     at 16#0# range 20 .. 23;
      Rsv1   at 16#0# range 24 .. 29;
      D32DIS at 16#0# range 30 .. 30;
      ASEDIS at 16#0# range 31 .. 31;
   end record;

   -------------------------------------
   -- CP15_DATA_FAULT_STATUS_Register --
   -------------------------------------

   subtype CP15_DATA_FAULT_STATUS_STATUS_Field is TMS570LC43xx.UInt4;
   subtype CP15_DATA_FAULT_STATUS_DOMAIN_Field is TMS570LC43xx.UInt4;
   subtype CP15_DATA_FAULT_STATUS_Rsv2_Field is TMS570LC43xx.UInt2;
   subtype CP15_DATA_FAULT_STATUS_S_Field is TMS570LC43xx.Bit;
   subtype CP15_DATA_FAULT_STATUS_RW_Field is TMS570LC43xx.Bit;
   subtype CP15_DATA_FAULT_STATUS_SD_Field is TMS570LC43xx.Bit;
   subtype CP15_DATA_FAULT_STATUS_Rsv1_Field is TMS570LC43xx.UInt19;

   --  DFSR
   type CP15_DATA_FAULT_STATUS_Register is record
      --  Status[3:0] - 0x01=Algn, 0x00=BG, 0x0D=Perm, 0x08=SExt, 0x16=ASExt,
      --  0x19=SECC, 0x18=ASECC, 0x02=DBG
      STATUS : CP15_DATA_FAULT_STATUS_STATUS_Field := 16#0#;
      --  Domain SBZ
      DOMAIN : CP15_DATA_FAULT_STATUS_DOMAIN_Field := 16#0#;
      --  Reserved SBZ
      Rsv2   : CP15_DATA_FAULT_STATUS_Rsv2_Field := 16#0#;
      --  Status[4]
      S      : CP15_DATA_FAULT_STATUS_S_Field := 16#0#;
      --  Read(0) or Write(1) Caused Abort
      RW     : CP15_DATA_FAULT_STATUS_RW_Field := 16#0#;
      --  External Abort Only: AXI Decode(0) or AXI Slave (1)
      SD     : CP15_DATA_FAULT_STATUS_SD_Field := 16#0#;
      --  Reserved SBZ
      Rsv1   : CP15_DATA_FAULT_STATUS_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_DATA_FAULT_STATUS_Register use record
      STATUS at 16#0# range 0 .. 3;
      DOMAIN at 16#0# range 4 .. 7;
      Rsv2   at 16#0# range 8 .. 9;
      S      at 16#0# range 10 .. 10;
      RW     at 16#0# range 11 .. 11;
      SD     at 16#0# range 12 .. 12;
      Rsv1   at 16#0# range 13 .. 31;
   end record;

   --------------------------------------------
   -- CP15_INSTRUCTION_FAULT_STATUS_Register --
   --------------------------------------------

   subtype CP15_INSTRUCTION_FAULT_STATUS_STATUS_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_FAULT_STATUS_DOMAIN_Field is TMS570LC43xx.UInt4;
   subtype CP15_INSTRUCTION_FAULT_STATUS_Rsv2_Field is TMS570LC43xx.UInt2;
   subtype CP15_INSTRUCTION_FAULT_STATUS_S_Field is TMS570LC43xx.Bit;
   subtype CP15_INSTRUCTION_FAULT_STATUS_RW_Field is TMS570LC43xx.Bit;
   subtype CP15_INSTRUCTION_FAULT_STATUS_SD_Field is TMS570LC43xx.Bit;
   subtype CP15_INSTRUCTION_FAULT_STATUS_Rsv1_Field is TMS570LC43xx.UInt19;

   --  IFSR
   type CP15_INSTRUCTION_FAULT_STATUS_Register is record
      --  Status[3:0] - 0x01=Algn, 0x00=BG, 0x0D=Perm, 0x08=SExt, 0x16=ASExt,
      --  0x19=SECC, 0x18=ASECC, 0x02=DBG
      STATUS : CP15_INSTRUCTION_FAULT_STATUS_STATUS_Field := 16#0#;
      --  Domain SBZ
      DOMAIN : CP15_INSTRUCTION_FAULT_STATUS_DOMAIN_Field := 16#0#;
      --  Reserved SBZ
      Rsv2   : CP15_INSTRUCTION_FAULT_STATUS_Rsv2_Field := 16#0#;
      --  Status[4]
      S      : CP15_INSTRUCTION_FAULT_STATUS_S_Field := 16#0#;
      --  Read(0) or Write(1) Caused Abort
      RW     : CP15_INSTRUCTION_FAULT_STATUS_RW_Field := 16#0#;
      --  External Abort Only: AXI Decode(0) or AXI Slave (1)
      SD     : CP15_INSTRUCTION_FAULT_STATUS_SD_Field := 16#0#;
      --  Reserved SBZ
      Rsv1   : CP15_INSTRUCTION_FAULT_STATUS_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_INSTRUCTION_FAULT_STATUS_Register use record
      STATUS at 16#0# range 0 .. 3;
      DOMAIN at 16#0# range 4 .. 7;
      Rsv2   at 16#0# range 8 .. 9;
      S      at 16#0# range 10 .. 10;
      RW     at 16#0# range 11 .. 11;
      SD     at 16#0# range 12 .. 12;
      Rsv1   at 16#0# range 13 .. 31;
   end record;

   -----------------------------------------
   -- CP15_AUX_DATA_FAULT_STATUS_Register --
   -----------------------------------------

   subtype CP15_AUX_DATA_FAULT_STATUS_Rsv3_Field is TMS570LC43xx.UInt5;
   subtype CP15_AUX_DATA_FAULT_STATUS_INDEX_Field is TMS570LC43xx.UInt9;
   subtype CP15_AUX_DATA_FAULT_STATUS_Rsv2_Field is TMS570LC43xx.UInt6;
   subtype CP15_AUX_DATA_FAULT_STATUS_SIDEXT_Field is TMS570LC43xx.Bit;
   subtype CP15_AUX_DATA_FAULT_STATUS_RECOVERABLE_ERROR_Field is
     TMS570LC43xx.Bit;
   subtype CP15_AUX_DATA_FAULT_STATUS_SIDE_Field is TMS570LC43xx.UInt2;
   subtype CP15_AUX_DATA_FAULT_STATUS_CACHE_WAY_Field is TMS570LC43xx.UInt4;
   subtype CP15_AUX_DATA_FAULT_STATUS_Rsv1_Field is TMS570LC43xx.UInt4;

   --  ADFSR
   type CP15_AUX_DATA_FAULT_STATUS_Register is record
      --  Reserved SBZ
      Rsv3              : CP15_AUX_DATA_FAULT_STATUS_Rsv3_Field := 16#0#;
      --  Index value for access giving error = Valid only for D$ ECC Errors
      INDEX             : CP15_AUX_DATA_FAULT_STATUS_INDEX_Field := 16#0#;
      --  Reserved SBZ
      Rsv2              : CP15_AUX_DATA_FAULT_STATUS_Rsv2_Field := 16#0#;
      --  {SIDEEXT,SIDE} 0=Cache/AXIM, 1=ATCM, 2=BTCM, 5=AXIPP, Others Rsv.
      SIDEXT            : CP15_AUX_DATA_FAULT_STATUS_SIDEXT_Field := 16#0#;
      --  0xC15 = Cortex-R5
      RECOVERABLE_ERROR : CP15_AUX_DATA_FAULT_STATUS_RECOVERABLE_ERROR_Field :=
                           16#0#;
      --  {SIDEEXT,SIDE} 0=Cache/AXIM, 1=ATCM, 2=BTCM, 5=AXIPP, Others Rsv.
      SIDE              : CP15_AUX_DATA_FAULT_STATUS_SIDE_Field := 16#0#;
      --  Cache Way(s) In Which Error Occurred - Valid Only for D$ ECC Errors
      CACHE_WAY         : CP15_AUX_DATA_FAULT_STATUS_CACHE_WAY_Field := 16#0#;
      --  Reserved SBZ
      Rsv1              : CP15_AUX_DATA_FAULT_STATUS_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_AUX_DATA_FAULT_STATUS_Register use record
      Rsv3              at 16#0# range 0 .. 4;
      INDEX             at 16#0# range 5 .. 13;
      Rsv2              at 16#0# range 14 .. 19;
      SIDEXT            at 16#0# range 20 .. 20;
      RECOVERABLE_ERROR at 16#0# range 21 .. 21;
      SIDE              at 16#0# range 22 .. 23;
      CACHE_WAY         at 16#0# range 24 .. 27;
      Rsv1              at 16#0# range 28 .. 31;
   end record;

   ------------------------------------------------
   -- CP15_AUX_INSTRUCTION_FAULT_STATUS_Register --
   ------------------------------------------------

   subtype CP15_AUX_INSTRUCTION_FAULT_STATUS_Rsv3_Field is TMS570LC43xx.UInt5;
   subtype CP15_AUX_INSTRUCTION_FAULT_STATUS_INDEX_Field is TMS570LC43xx.UInt9;
   subtype CP15_AUX_INSTRUCTION_FAULT_STATUS_Rsv2_Field is TMS570LC43xx.UInt6;
   subtype CP15_AUX_INSTRUCTION_FAULT_STATUS_SIDEXT_Field is TMS570LC43xx.Bit;
   subtype CP15_AUX_INSTRUCTION_FAULT_STATUS_RECOVERABLE_ERROR_Field is
     TMS570LC43xx.Bit;
   subtype CP15_AUX_INSTRUCTION_FAULT_STATUS_SIDE_Field is TMS570LC43xx.UInt2;
   subtype CP15_AUX_INSTRUCTION_FAULT_STATUS_CACHE_WAY_Field is
     TMS570LC43xx.UInt4;
   subtype CP15_AUX_INSTRUCTION_FAULT_STATUS_Rsv1_Field is TMS570LC43xx.UInt4;

   --  AIFSR
   type CP15_AUX_INSTRUCTION_FAULT_STATUS_Register is record
      --  Reserved SBZ
      Rsv3              : CP15_AUX_INSTRUCTION_FAULT_STATUS_Rsv3_Field :=
                           16#0#;
      --  Index value for access giving error = Valid only for D$ ECC Errors
      INDEX             : CP15_AUX_INSTRUCTION_FAULT_STATUS_INDEX_Field :=
                           16#0#;
      --  Reserved SBZ
      Rsv2              : CP15_AUX_INSTRUCTION_FAULT_STATUS_Rsv2_Field :=
                           16#0#;
      --  {SIDEEXT,SIDE} 0=Cache/AXIM, 1=ATCM, 2=BTCM, 5=AXIPP, Others Rsv.
      SIDEXT            : CP15_AUX_INSTRUCTION_FAULT_STATUS_SIDEXT_Field :=
                           16#0#;
      --  0xC15 = Cortex-R5
      RECOVERABLE_ERROR : CP15_AUX_INSTRUCTION_FAULT_STATUS_RECOVERABLE_ERROR_Field :=
                           16#0#;
      --  {SIDEEXT,SIDE} 0=Cache/AXIM, 1=ATCM, 2=BTCM, 5=AXIPP, Others Rsv.
      SIDE              : CP15_AUX_INSTRUCTION_FAULT_STATUS_SIDE_Field :=
                           16#0#;
      --  Cache Way(s) In Which Error Occurred - Valid Only for D$ ECC Errors
      CACHE_WAY         : CP15_AUX_INSTRUCTION_FAULT_STATUS_CACHE_WAY_Field :=
                           16#0#;
      --  Reserved SBZ
      Rsv1              : CP15_AUX_INSTRUCTION_FAULT_STATUS_Rsv1_Field :=
                           16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_AUX_INSTRUCTION_FAULT_STATUS_Register use record
      Rsv3              at 16#0# range 0 .. 4;
      INDEX             at 16#0# range 5 .. 13;
      Rsv2              at 16#0# range 14 .. 19;
      SIDEXT            at 16#0# range 20 .. 20;
      RECOVERABLE_ERROR at 16#0# range 21 .. 21;
      SIDE              at 16#0# range 22 .. 23;
      CACHE_WAY         at 16#0# range 24 .. 27;
      Rsv1              at 16#0# range 28 .. 31;
   end record;

   ------------------------------------------
   -- CP15_MPU_REGION_SIZE_ENABLE_Register --
   ------------------------------------------

   subtype CP15_MPU_REGION_SIZE_ENABLE_REGION_ENABLE_Field is TMS570LC43xx.Bit;
   subtype CP15_MPU_REGION_SIZE_ENABLE_REGION_SIZE_Field is TMS570LC43xx.UInt5;
   subtype CP15_MPU_REGION_SIZE_ENABLE_Rsv2_Field is TMS570LC43xx.UInt2;
   subtype CP15_MPU_REGION_SIZE_ENABLE_SUBREGION_DISABLE_Field is
     TMS570LC43xx.Byte;
   subtype CP15_MPU_REGION_SIZE_ENABLE_Rsv1_Field is TMS570LC43xx.Short;

   type CP15_MPU_REGION_SIZE_ENABLE_Register is record
      --  Enables Memory Region
      REGION_ENABLE     : CP15_MPU_REGION_SIZE_ENABLE_REGION_ENABLE_Field :=
                           16#0#;
      --  0x00-0x03 Unpredictable, 0x4=32B, 0x05=64B, ... 0x1F=4GB
      REGION_SIZE       : CP15_MPU_REGION_SIZE_ENABLE_REGION_SIZE_Field :=
                           16#0#;
      --  Reserved SBZ
      Rsv2              : CP15_MPU_REGION_SIZE_ENABLE_Rsv2_Field := 16#0#;
      --  Bit[8] disables subregion 0, ... Bit[15] disables subregion 8
      SUBREGION_DISABLE : CP15_MPU_REGION_SIZE_ENABLE_SUBREGION_DISABLE_Field :=
                           16#0#;
      --  Reserved SBZ
      Rsv1              : CP15_MPU_REGION_SIZE_ENABLE_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_MPU_REGION_SIZE_ENABLE_Register use record
      REGION_ENABLE     at 16#0# range 0 .. 0;
      REGION_SIZE       at 16#0# range 1 .. 5;
      Rsv2              at 16#0# range 6 .. 7;
      SUBREGION_DISABLE at 16#0# range 8 .. 15;
      Rsv1              at 16#0# range 16 .. 31;
   end record;

   -------------------------------------
   -- CP15_MPU_REGION_ACCESS_Register --
   -------------------------------------

   subtype CP15_MPU_REGION_ACCESS_B_Field is TMS570LC43xx.Bit;
   subtype CP15_MPU_REGION_ACCESS_C_Field is TMS570LC43xx.Bit;
   subtype CP15_MPU_REGION_ACCESS_S_Field is TMS570LC43xx.Bit;
   subtype CP15_MPU_REGION_ACCESS_TEX_Field is TMS570LC43xx.UInt3;
   subtype CP15_MPU_REGION_ACCESS_Rsv3_Field is TMS570LC43xx.UInt2;
   subtype CP15_MPU_REGION_ACCESS_AP_Field is TMS570LC43xx.UInt3;
   subtype CP15_MPU_REGION_ACCESS_Rsv2_Field is TMS570LC43xx.Bit;
   subtype CP15_MPU_REGION_ACCESS_XN_Field is TMS570LC43xx.Bit;
   subtype CP15_MPU_REGION_ACCESS_Rsv1_Field is TMS570LC43xx.UInt19;

   type CP15_MPU_REGION_ACCESS_Register is record
      --  B Bit
      B    : CP15_MPU_REGION_ACCESS_B_Field := 16#0#;
      --  C Bit
      C    : CP15_MPU_REGION_ACCESS_C_Field := 16#0#;
      --  1=Shared
      S    : CP15_MPU_REGION_ACCESS_S_Field := 16#0#;
      --  TEX
      TEX  : CP15_MPU_REGION_ACCESS_TEX_Field := 16#0#;
      --  Reserved SBZ
      Rsv3 : CP15_MPU_REGION_ACCESS_Rsv3_Field := 16#0#;
      --  0x0 NoAcc, 0x1 PrivRW, 2 PrivRW UserR, 3 PrivUserRW, 5=PrivR, 6
      --  PrivUserR, 4,7=Reserved
      AP   : CP15_MPU_REGION_ACCESS_AP_Field := 16#0#;
      --  Reserved SBZ
      Rsv2 : CP15_MPU_REGION_ACCESS_Rsv2_Field := 16#0#;
      --  Execute Never, 1=Instruction Fetches Disabled
      XN   : CP15_MPU_REGION_ACCESS_XN_Field := 16#0#;
      --  Reserved SBZ
      Rsv1 : CP15_MPU_REGION_ACCESS_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_MPU_REGION_ACCESS_Register use record
      B    at 16#0# range 0 .. 0;
      C    at 16#0# range 1 .. 1;
      S    at 16#0# range 2 .. 2;
      TEX  at 16#0# range 3 .. 5;
      Rsv3 at 16#0# range 6 .. 7;
      AP   at 16#0# range 8 .. 10;
      Rsv2 at 16#0# range 11 .. 11;
      XN   at 16#0# range 12 .. 12;
      Rsv1 at 16#0# range 13 .. 31;
   end record;

   -------------------------------------
   -- CP15_MPU_REGION_NUMBER_Register --
   -------------------------------------

   subtype CP15_MPU_REGION_NUMBER_REGION_Field is TMS570LC43xx.UInt4;
   subtype CP15_MPU_REGION_NUMBER_Rsv1_Field is TMS570LC43xx.UInt28;

   type CP15_MPU_REGION_NUMBER_Register is record
      --  MPU Region Number
      REGION : CP15_MPU_REGION_NUMBER_REGION_Field := 16#0#;
      --  Reserved SBZ
      Rsv1   : CP15_MPU_REGION_NUMBER_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_MPU_REGION_NUMBER_Register use record
      REGION at 16#0# range 0 .. 3;
      Rsv1   at 16#0# range 4 .. 31;
   end record;

   -----------------------------------
   -- CP15_TCM_ATCM_REGION_Register --
   -----------------------------------

   subtype CP15_TCM_ATCM_REGION_ENABLE_Field is TMS570LC43xx.Bit;
   subtype CP15_TCM_ATCM_REGION_Rsv2_Field is TMS570LC43xx.Bit;
   subtype CP15_TCM_ATCM_REGION_SIZE_Field is TMS570LC43xx.UInt5;
   subtype CP15_TCM_ATCM_REGION_Rsv1_Field is TMS570LC43xx.UInt5;
   subtype CP15_TCM_ATCM_REGION_BASE_ADDR_Field is TMS570LC43xx.UInt20;

   --  ATCMRR
   type CP15_TCM_ATCM_REGION_Register is record
      --  Enables BTCM
      ENABLE    : CP15_TCM_ATCM_REGION_ENABLE_Field := 16#0#;
      --  Reserved SBZ
      Rsv2      : CP15_TCM_ATCM_REGION_Rsv2_Field := 16#0#;
      --  Size of BTCM Ignored on Writes 0 = No TCM
      SIZE      : CP15_TCM_ATCM_REGION_SIZE_Field := 16#0#;
      --  Reads Unp, Writes SBZ
      Rsv1      : CP15_TCM_ATCM_REGION_Rsv1_Field := 16#0#;
      --  Base Address Aligned to BTCM Size
      BASE_ADDR : CP15_TCM_ATCM_REGION_BASE_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_TCM_ATCM_REGION_Register use record
      ENABLE    at 16#0# range 0 .. 0;
      Rsv2      at 16#0# range 1 .. 1;
      SIZE      at 16#0# range 2 .. 6;
      Rsv1      at 16#0# range 7 .. 11;
      BASE_ADDR at 16#0# range 12 .. 31;
   end record;

   -------------------------------------
   -- CP15_TCM_TCM_SELECTION_Register --
   -------------------------------------

   subtype CP15_TCM_TCM_SELECTION_AXIS_DISABLE_Field is TMS570LC43xx.Bit;
   subtype CP15_TCM_TCM_SELECTION_PRIV_Field is TMS570LC43xx.Bit;
   subtype CP15_TCM_TCM_SELECTION_Rsv1_Field is TMS570LC43xx.UInt30;

   --  TCMSR
   type CP15_TCM_TCM_SELECTION_Register is record
      --  1 = Disables AXI Slave Port Access
      AXIS_DISABLE : CP15_TCM_TCM_SELECTION_AXIS_DISABLE_Field := 16#0#;
      --  1 = Priviliged Access Only
      PRIV         : CP15_TCM_TCM_SELECTION_PRIV_Field := 16#0#;
      --  Reserved SBZ
      Rsv1         : CP15_TCM_TCM_SELECTION_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_TCM_TCM_SELECTION_Register use record
      AXIS_DISABLE at 16#0# range 0 .. 0;
      PRIV         at 16#0# range 1 .. 1;
      Rsv1         at 16#0# range 2 .. 31;
   end record;

   -----------------------------------------------
   -- CP15_PERFORMANCE_MONITOR_CONTROL_Register --
   -----------------------------------------------

   subtype CP15_PERFORMANCE_MONITOR_CONTROL_E_Field is TMS570LC43xx.Bit;
   subtype CP15_PERFORMANCE_MONITOR_CONTROL_P_Field is TMS570LC43xx.Bit;
   subtype CP15_PERFORMANCE_MONITOR_CONTROL_C_Field is TMS570LC43xx.Bit;
   subtype CP15_PERFORMANCE_MONITOR_CONTROL_D_Field is TMS570LC43xx.Bit;
   subtype CP15_PERFORMANCE_MONITOR_CONTROL_X_Field is TMS570LC43xx.Bit;
   subtype CP15_PERFORMANCE_MONITOR_CONTROL_DP_Field is TMS570LC43xx.Bit;
   subtype CP15_PERFORMANCE_MONITOR_CONTROL_Rsv1_Field is TMS570LC43xx.UInt5;
   subtype CP15_PERFORMANCE_MONITOR_CONTROL_N_Field is TMS570LC43xx.UInt5;
   subtype CP15_PERFORMANCE_MONITOR_CONTROL_IDCODE_Field is TMS570LC43xx.Byte;
   subtype CP15_PERFORMANCE_MONITOR_CONTROL_IMP_Field is TMS570LC43xx.Byte;

   --  PMCR
   type CP15_PERFORMANCE_MONITOR_CONTROL_Register is record
      --  1 = Enable All Counters Including PMCCNTR
      E      : CP15_PERFORMANCE_MONITOR_CONTROL_E_Field := 16#0#;
      --  1 = Reset All Event Counters (on Write), Reads 0
      P      : CP15_PERFORMANCE_MONITOR_CONTROL_P_Field := 16#0#;
      --  1 = Reset Cycle Counter PMCCNTR (on Write), Reads 0
      C      : CP15_PERFORMANCE_MONITOR_CONTROL_C_Field := 16#0#;
      --  0 = Count Every Cycle, 1= Count Every 64 Cycles
      D      : CP15_PERFORMANCE_MONITOR_CONTROL_D_Field := 16#0#;
      --  1 = Export of Events to Event Bus Enabled
      X      : CP15_PERFORMANCE_MONITOR_CONTROL_X_Field := 16#0#;
      --  1 = PMCCNTR Count Disabled in Prohibited Regions
      DP     : CP15_PERFORMANCE_MONITOR_CONTROL_DP_Field := 16#0#;
      --  Reserved SBPZ on Write
      Rsv1   : CP15_PERFORMANCE_MONITOR_CONTROL_Rsv1_Field := 16#0#;
      --  0x3=3 Counters Implemented
      N      : CP15_PERFORMANCE_MONITOR_CONTROL_N_Field := 16#0#;
      --  Identification 0x15=Cortex-R5
      IDCODE : CP15_PERFORMANCE_MONITOR_CONTROL_IDCODE_Field := 16#0#;
      --  Implementor 0x41=ARM
      IMP    : CP15_PERFORMANCE_MONITOR_CONTROL_IMP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_PERFORMANCE_MONITOR_CONTROL_Register use record
      E      at 16#0# range 0 .. 0;
      P      at 16#0# range 1 .. 1;
      C      at 16#0# range 2 .. 2;
      D      at 16#0# range 3 .. 3;
      X      at 16#0# range 4 .. 4;
      DP     at 16#0# range 5 .. 5;
      Rsv1   at 16#0# range 6 .. 10;
      N      at 16#0# range 11 .. 15;
      IDCODE at 16#0# range 16 .. 23;
      IMP    at 16#0# range 24 .. 31;
   end record;

   ------------------------------------
   -- CP15_COUNT_ENABLE_SET_Register --
   ------------------------------------

   -----------------------------
   -- CP15_COUNT_ENABLE_SET.P --
   -----------------------------

   --  CP15_COUNT_ENABLE_SET_P array element
   subtype CP15_COUNT_ENABLE_SET_P_Element is TMS570LC43xx.Bit;

   --  CP15_COUNT_ENABLE_SET_P array
   type CP15_COUNT_ENABLE_SET_P_Field_Array is array (0 .. 2)
     of CP15_COUNT_ENABLE_SET_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_COUNT_ENABLE_SET_P
   type CP15_COUNT_ENABLE_SET_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_COUNT_ENABLE_SET_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_COUNT_ENABLE_SET_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_COUNT_ENABLE_SET_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_COUNT_ENABLE_SET_C_Field is TMS570LC43xx.Bit;

   --  PMCNTENSET
   type CP15_COUNT_ENABLE_SET_Register is record
      --  Write 1 to Enable PMXEVCNTR0, Reads Return 0
      P    : CP15_COUNT_ENABLE_SET_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_COUNT_ENABLE_SET_Rsv1_Field := 16#0#;
      --  Write 1 to Enable CCNT, Reads Return 0
      C    : CP15_COUNT_ENABLE_SET_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_COUNT_ENABLE_SET_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   --------------------------------------
   -- CP15_COUNT_ENABLE_CLEAR_Register --
   --------------------------------------

   -------------------------------
   -- CP15_COUNT_ENABLE_CLEAR.P --
   -------------------------------

   --  CP15_COUNT_ENABLE_CLEAR_P array element
   subtype CP15_COUNT_ENABLE_CLEAR_P_Element is TMS570LC43xx.Bit;

   --  CP15_COUNT_ENABLE_CLEAR_P array
   type CP15_COUNT_ENABLE_CLEAR_P_Field_Array is array (0 .. 2)
     of CP15_COUNT_ENABLE_CLEAR_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_COUNT_ENABLE_CLEAR_P
   type CP15_COUNT_ENABLE_CLEAR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_COUNT_ENABLE_CLEAR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_COUNT_ENABLE_CLEAR_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_COUNT_ENABLE_CLEAR_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_COUNT_ENABLE_CLEAR_C_Field is TMS570LC43xx.Bit;

   --  PMCNTENCLR
   type CP15_COUNT_ENABLE_CLEAR_Register is record
      --  Write 1 to Disable PMXEVCNTR0, Reads Return 0
      P    : CP15_COUNT_ENABLE_CLEAR_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_COUNT_ENABLE_CLEAR_Rsv1_Field := 16#0#;
      --  Write 1 to Disable CCNT, Reads Return 0
      C    : CP15_COUNT_ENABLE_CLEAR_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_COUNT_ENABLE_CLEAR_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   ----------------------------------------
   -- CP15_OVERFLOW_FLAG_STATUS_Register --
   ----------------------------------------

   ---------------------------------
   -- CP15_OVERFLOW_FLAG_STATUS.P --
   ---------------------------------

   --  CP15_OVERFLOW_FLAG_STATUS_P array element
   subtype CP15_OVERFLOW_FLAG_STATUS_P_Element is TMS570LC43xx.Bit;

   --  CP15_OVERFLOW_FLAG_STATUS_P array
   type CP15_OVERFLOW_FLAG_STATUS_P_Field_Array is array (0 .. 2)
     of CP15_OVERFLOW_FLAG_STATUS_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_OVERFLOW_FLAG_STATUS_P
   type CP15_OVERFLOW_FLAG_STATUS_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_OVERFLOW_FLAG_STATUS_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_OVERFLOW_FLAG_STATUS_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_OVERFLOW_FLAG_STATUS_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_OVERFLOW_FLAG_STATUS_C_Field is TMS570LC43xx.Bit;

   --  PMOVSR
   type CP15_OVERFLOW_FLAG_STATUS_Register is record
      --  PMXEVCNTR0 Overflow Flag (W12C)
      P    : CP15_OVERFLOW_FLAG_STATUS_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_OVERFLOW_FLAG_STATUS_Rsv1_Field := 16#0#;
      --  CCNT Overflow Flag (W12C)
      C    : CP15_OVERFLOW_FLAG_STATUS_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_OVERFLOW_FLAG_STATUS_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   --------------------------------------
   -- CP15_SOFTWARE_INCREMENT_Register --
   --------------------------------------

   -------------------------------
   -- CP15_SOFTWARE_INCREMENT.P --
   -------------------------------

   --  CP15_SOFTWARE_INCREMENT_P array element
   subtype CP15_SOFTWARE_INCREMENT_P_Element is TMS570LC43xx.Bit;

   --  CP15_SOFTWARE_INCREMENT_P array
   type CP15_SOFTWARE_INCREMENT_P_Field_Array is array (0 .. 2)
     of CP15_SOFTWARE_INCREMENT_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_SOFTWARE_INCREMENT_P
   type CP15_SOFTWARE_INCREMENT_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_SOFTWARE_INCREMENT_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_SOFTWARE_INCREMENT_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_SOFTWARE_INCREMENT_Rsv1_Field is TMS570LC43xx.UInt29;

   --  PMSWINC
   type CP15_SOFTWARE_INCREMENT_Register is record
      --  Increment PMXEVCNTR0
      P    : CP15_SOFTWARE_INCREMENT_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved RAZ Reads, SBZP Writes
      Rsv1 : CP15_SOFTWARE_INCREMENT_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_SOFTWARE_INCREMENT_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 31;
   end record;

   -------------------------------------
   -- CP15_COUNTER_SELECTION_Register --
   -------------------------------------

   subtype CP15_COUNTER_SELECTION_P2_Field is TMS570LC43xx.UInt5;
   subtype CP15_COUNTER_SELECTION_Rsv1_Field is TMS570LC43xx.UInt27;

   --  PMSELR
   type CP15_COUNTER_SELECTION_Register is record
      --  0,1,2 Selects PXEVCNTR0,1,2 Respectively
      P2   : CP15_COUNTER_SELECTION_P2_Field := 16#0#;
      --  Reserved RAZ Reads, SBZP Writes
      Rsv1 : CP15_COUNTER_SELECTION_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_COUNTER_SELECTION_Register use record
      P2   at 16#0# range 0 .. 4;
      Rsv1 at 16#0# range 5 .. 31;
   end record;

   -----------------------------------
   -- CP15_EVENT_SELECTION_Register --
   -----------------------------------

   subtype CP15_EVENT_SELECTION_SEL_Field is TMS570LC43xx.Byte;
   subtype CP15_EVENT_SELECTION_Rsv1_Field is TMS570LC43xx.UInt24;

   --  PMXEVTYPER
   type CP15_EVENT_SELECTION_Register is record
      --  Selects Event To Count - See Table 6-1 in Cortex-R5 TRM
      SEL  : CP15_EVENT_SELECTION_SEL_Field := 16#0#;
      --  Reserved RAZ Reads, SBZP Writes
      Rsv1 : CP15_EVENT_SELECTION_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_EVENT_SELECTION_Register use record
      SEL  at 16#0# range 0 .. 7;
      Rsv1 at 16#0# range 8 .. 31;
   end record;

   -------------------------------
   -- CP15_USER_ENABLE_Register --
   -------------------------------

   subtype CP15_USER_ENABLE_SEL_Field is TMS570LC43xx.Bit;
   subtype CP15_USER_ENABLE_Rsv1_Field is TMS570LC43xx.UInt31;

   --  PMUSERENR
   type CP15_USER_ENABLE_Register is record
      --  1=Enable User Mode Access to Performance Monitor and Validation
      --  Registers
      SEL  : CP15_USER_ENABLE_SEL_Field := 16#0#;
      --  Reserved RAZ Reads, SBZP Writes
      Rsv1 : CP15_USER_ENABLE_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_USER_ENABLE_Register use record
      SEL  at 16#0# range 0 .. 0;
      Rsv1 at 16#0# range 1 .. 31;
   end record;

   ----------------------------------------
   -- CP15_INTERRUPT_ENABLE_SET_Register --
   ----------------------------------------

   ---------------------------------
   -- CP15_INTERRUPT_ENABLE_SET.P --
   ---------------------------------

   --  CP15_INTERRUPT_ENABLE_SET_P array element
   subtype CP15_INTERRUPT_ENABLE_SET_P_Element is TMS570LC43xx.Bit;

   --  CP15_INTERRUPT_ENABLE_SET_P array
   type CP15_INTERRUPT_ENABLE_SET_P_Field_Array is array (0 .. 2)
     of CP15_INTERRUPT_ENABLE_SET_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_INTERRUPT_ENABLE_SET_P
   type CP15_INTERRUPT_ENABLE_SET_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_INTERRUPT_ENABLE_SET_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_INTERRUPT_ENABLE_SET_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_INTERRUPT_ENABLE_SET_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_INTERRUPT_ENABLE_SET_C_Field is TMS570LC43xx.Bit;

   --  PMINTENSET
   type CP15_INTERRUPT_ENABLE_SET_Register is record
      --  Write 1 to Enable PMXEVCNTR0 Overflow Interrupt
      P    : CP15_INTERRUPT_ENABLE_SET_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_INTERRUPT_ENABLE_SET_Rsv1_Field := 16#0#;
      --  Write 1 to Enable CCNT Overflow Interrupt
      C    : CP15_INTERRUPT_ENABLE_SET_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_INTERRUPT_ENABLE_SET_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   ------------------------------------------
   -- CP15_INTERRUPT_ENABLE_CLEAR_Register --
   ------------------------------------------

   -----------------------------------
   -- CP15_INTERRUPT_ENABLE_CLEAR.P --
   -----------------------------------

   --  CP15_INTERRUPT_ENABLE_CLEAR_P array element
   subtype CP15_INTERRUPT_ENABLE_CLEAR_P_Element is TMS570LC43xx.Bit;

   --  CP15_INTERRUPT_ENABLE_CLEAR_P array
   type CP15_INTERRUPT_ENABLE_CLEAR_P_Field_Array is array (0 .. 2)
     of CP15_INTERRUPT_ENABLE_CLEAR_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_INTERRUPT_ENABLE_CLEAR_P
   type CP15_INTERRUPT_ENABLE_CLEAR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_INTERRUPT_ENABLE_CLEAR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_INTERRUPT_ENABLE_CLEAR_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_INTERRUPT_ENABLE_CLEAR_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_INTERRUPT_ENABLE_CLEAR_C_Field is TMS570LC43xx.Bit;

   --  PMINTENCLR
   type CP15_INTERRUPT_ENABLE_CLEAR_Register is record
      --  Write 1 to Disable PMXEVCNTR0 Overflow Interrupt
      P    : CP15_INTERRUPT_ENABLE_CLEAR_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_INTERRUPT_ENABLE_CLEAR_Rsv1_Field := 16#0#;
      --  Write 1 to Disable CCNT Overflow Interrupt
      C    : CP15_INTERRUPT_ENABLE_CLEAR_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_INTERRUPT_ENABLE_CLEAR_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   --------------------------------------
   -- CP15_SLAVE_PORT_CONTROL_Register --
   --------------------------------------

   subtype CP15_SLAVE_PORT_CONTROL_AXIS_DISABLE_Field is TMS570LC43xx.Bit;
   subtype CP15_SLAVE_PORT_CONTROL_PRIV_Field is TMS570LC43xx.Bit;
   subtype CP15_SLAVE_PORT_CONTROL_Rsv1_Field is TMS570LC43xx.UInt30;

   --  AXI Slave Port Control
   type CP15_SLAVE_PORT_CONTROL_Register is record
      --  1 = Disables AXI Slave Port
      AXIS_DISABLE : CP15_SLAVE_PORT_CONTROL_AXIS_DISABLE_Field := 16#0#;
      --  1 = Priviliged Access Only
      PRIV         : CP15_SLAVE_PORT_CONTROL_PRIV_Field := 16#0#;
      --  Reserved SBZ
      Rsv1         : CP15_SLAVE_PORT_CONTROL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_SLAVE_PORT_CONTROL_Register use record
      AXIS_DISABLE at 16#0# range 0 .. 0;
      PRIV         at 16#0# range 1 .. 1;
      Rsv1         at 16#0# range 2 .. 31;
   end record;

   -----------------------------------------------
   -- CP15_SECONDARY_AUXILIARY_CONTROL_Register --
   -----------------------------------------------

   subtype CP15_SECONDARY_AUXILIARY_CONTROL_ATCMRMW_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_BTCMRMW_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_ATCMECC_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_BTCMECC_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_Rsv3_Field is TMS570LC43xx.UInt4;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_IDC_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_DZC_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_IOC_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_UFC_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_OFC_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_IXC_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_Rsv2_Field is TMS570LC43xx.UInt2;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_DOOFMACS_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_DOODPFP_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_DDI_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_DF2DI_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_DF6DI_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_DR2B_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_DCHE_Field is TMS570LC43xx.Bit;
   subtype CP15_SECONDARY_AUXILIARY_CONTROL_Rsv1_Field is TMS570LC43xx.UInt9;

   type CP15_SECONDARY_AUXILIARY_CONTROL_Register is record
      --  Enable 64-bit Stores for ATCM (Read,Modify,Write)
      ATCMRMW  : CP15_SECONDARY_AUXILIARY_CONTROL_ATCMRMW_Field := 16#0#;
      --  Enable 64-bit Stores for BTCM (Read,Modify,Write)
      BTCMRMW  : CP15_SECONDARY_AUXILIARY_CONTROL_BTCMRMW_Field := 16#0#;
      --  Disable ATCM ECC Correction
      ATCMECC  : CP15_SECONDARY_AUXILIARY_CONTROL_ATCMECC_Field := 16#0#;
      --  Disable BTCM ECC Correction
      BTCMECC  : CP15_SECONDARY_AUXILIARY_CONTROL_BTCMECC_Field := 16#0#;
      --  Reserved SBZ
      Rsv3     : CP15_SECONDARY_AUXILIARY_CONTROL_Rsv3_Field := 16#0#;
      --  Enable Floating Point Input Denormal Exception Propogation
      IDC      : CP15_SECONDARY_AUXILIARY_CONTROL_IDC_Field := 16#0#;
      --  Enable Floating Point Divide By Zero Exception Propogation
      DZC      : CP15_SECONDARY_AUXILIARY_CONTROL_DZC_Field := 16#0#;
      --  Enable Floating Point Invalid Operation Exception Propogation
      IOC      : CP15_SECONDARY_AUXILIARY_CONTROL_IOC_Field := 16#0#;
      --  Enable Floating Point Underflow Exception Propogation
      UFC      : CP15_SECONDARY_AUXILIARY_CONTROL_UFC_Field := 16#0#;
      --  Enable Floating Point Overflow Exception Propogation
      OFC      : CP15_SECONDARY_AUXILIARY_CONTROL_OFC_Field := 16#0#;
      --  Enable Floating Point Inexact Exception Propogation
      IXC      : CP15_SECONDARY_AUXILIARY_CONTROL_IXC_Field := 16#0#;
      --  Reserved SBZ
      Rsv2     : CP15_SECONDARY_AUXILIARY_CONTROL_Rsv2_Field := 16#0#;
      --  Disable Out of Order FMACS
      DOOFMACS : CP15_SECONDARY_AUXILIARY_CONTROL_DOOFMACS_Field := 16#0#;
      --  Disable Out of Order DP Float
      DOODPFP  : CP15_SECONDARY_AUXILIARY_CONTROL_DOODPFP_Field := 16#0#;
      --  Disable F1/F3/F4 Dual Issue
      DDI      : CP15_SECONDARY_AUXILIARY_CONTROL_DDI_Field := 16#0#;
      --  Disable F2_Id/F2_st/F2D Dual Issue
      DF2DI    : CP15_SECONDARY_AUXILIARY_CONTROL_DF2DI_Field := 16#0#;
      --  Disable F6 Dual Issue
      DF6DI    : CP15_SECONDARY_AUXILIARY_CONTROL_DF6DI_Field := 16#0#;
      --  Enable Random 2 Bit ECC Error In Cache RAM During Validation
      DR2B     : CP15_SECONDARY_AUXILIARY_CONTROL_DR2B_Field := 16#0#;
      --  Disable Hard Error Support in Caches
      DCHE     : CP15_SECONDARY_AUXILIARY_CONTROL_DCHE_Field := 16#0#;
      --  Reserved SBZ
      Rsv1     : CP15_SECONDARY_AUXILIARY_CONTROL_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_SECONDARY_AUXILIARY_CONTROL_Register use record
      ATCMRMW  at 16#0# range 0 .. 0;
      BTCMRMW  at 16#0# range 1 .. 1;
      ATCMECC  at 16#0# range 2 .. 2;
      BTCMECC  at 16#0# range 3 .. 3;
      Rsv3     at 16#0# range 4 .. 7;
      IDC      at 16#0# range 8 .. 8;
      DZC      at 16#0# range 9 .. 9;
      IOC      at 16#0# range 10 .. 10;
      UFC      at 16#0# range 11 .. 11;
      OFC      at 16#0# range 12 .. 12;
      IXC      at 16#0# range 13 .. 13;
      Rsv2     at 16#0# range 14 .. 15;
      DOOFMACS at 16#0# range 16 .. 16;
      DOODPFP  at 16#0# range 17 .. 17;
      DDI      at 16#0# range 18 .. 18;
      DF2DI    at 16#0# range 19 .. 19;
      DF6DI    at 16#0# range 20 .. 20;
      DR2B     at 16#0# range 21 .. 21;
      DCHE     at 16#0# range 22 .. 22;
      Rsv1     at 16#0# range 23 .. 31;
   end record;

   ---------------------------------------
   -- CP15_NVAL_IRQ_ENABLE_SET_Register --
   ---------------------------------------

   --------------------------------
   -- CP15_NVAL_IRQ_ENABLE_SET.P --
   --------------------------------

   --  CP15_NVAL_IRQ_ENABLE_SET_P array element
   subtype CP15_NVAL_IRQ_ENABLE_SET_P_Element is TMS570LC43xx.Bit;

   --  CP15_NVAL_IRQ_ENABLE_SET_P array
   type CP15_NVAL_IRQ_ENABLE_SET_P_Field_Array is array (0 .. 2)
     of CP15_NVAL_IRQ_ENABLE_SET_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_NVAL_IRQ_ENABLE_SET_P
   type CP15_NVAL_IRQ_ENABLE_SET_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_NVAL_IRQ_ENABLE_SET_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_NVAL_IRQ_ENABLE_SET_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_NVAL_IRQ_ENABLE_SET_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_NVAL_IRQ_ENABLE_SET_C_Field is TMS570LC43xx.Bit;

   --  Validation IRQ Enable Set Register
   type CP15_NVAL_IRQ_ENABLE_SET_Register is record
      --  PMXEVCNTR0 Overflow IRQ Request
      P    : CP15_NVAL_IRQ_ENABLE_SET_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_NVAL_IRQ_ENABLE_SET_Rsv1_Field := 16#0#;
      --  CCNT Overflow IRQ Request
      C    : CP15_NVAL_IRQ_ENABLE_SET_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_NVAL_IRQ_ENABLE_SET_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   ---------------------------------------
   -- CP15_NVAL_FIQ_ENABLE_SET_Register --
   ---------------------------------------

   --------------------------------
   -- CP15_NVAL_FIQ_ENABLE_SET.P --
   --------------------------------

   --  CP15_NVAL_FIQ_ENABLE_SET_P array element
   subtype CP15_NVAL_FIQ_ENABLE_SET_P_Element is TMS570LC43xx.Bit;

   --  CP15_NVAL_FIQ_ENABLE_SET_P array
   type CP15_NVAL_FIQ_ENABLE_SET_P_Field_Array is array (0 .. 2)
     of CP15_NVAL_FIQ_ENABLE_SET_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_NVAL_FIQ_ENABLE_SET_P
   type CP15_NVAL_FIQ_ENABLE_SET_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_NVAL_FIQ_ENABLE_SET_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_NVAL_FIQ_ENABLE_SET_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_NVAL_FIQ_ENABLE_SET_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_NVAL_FIQ_ENABLE_SET_C_Field is TMS570LC43xx.Bit;

   --  Validation FIQ Enable Set Register
   type CP15_NVAL_FIQ_ENABLE_SET_Register is record
      --  PMXEVCNTR0 Overflow FIQ Request
      P    : CP15_NVAL_FIQ_ENABLE_SET_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_NVAL_FIQ_ENABLE_SET_Rsv1_Field := 16#0#;
      --  CCNT Overflow FIQ Request
      C    : CP15_NVAL_FIQ_ENABLE_SET_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_NVAL_FIQ_ENABLE_SET_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   -----------------------------------------
   -- CP15_NVAL_RESET_ENABLE_SET_Register --
   -----------------------------------------

   ----------------------------------
   -- CP15_NVAL_RESET_ENABLE_SET.P --
   ----------------------------------

   --  CP15_NVAL_RESET_ENABLE_SET_P array element
   subtype CP15_NVAL_RESET_ENABLE_SET_P_Element is TMS570LC43xx.Bit;

   --  CP15_NVAL_RESET_ENABLE_SET_P array
   type CP15_NVAL_RESET_ENABLE_SET_P_Field_Array is array (0 .. 2)
     of CP15_NVAL_RESET_ENABLE_SET_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_NVAL_RESET_ENABLE_SET_P
   type CP15_NVAL_RESET_ENABLE_SET_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_NVAL_RESET_ENABLE_SET_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_NVAL_RESET_ENABLE_SET_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_NVAL_RESET_ENABLE_SET_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_NVAL_RESET_ENABLE_SET_C_Field is TMS570LC43xx.Bit;

   --  Validation Reset Enable Set Register
   type CP15_NVAL_RESET_ENABLE_SET_Register is record
      --  PMXEVCNTR0 Overflow Reset Request
      P    : CP15_NVAL_RESET_ENABLE_SET_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_NVAL_RESET_ENABLE_SET_Rsv1_Field := 16#0#;
      --  CCNT Overflow Reset Request
      C    : CP15_NVAL_RESET_ENABLE_SET_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_NVAL_RESET_ENABLE_SET_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   -------------------------------------------------
   -- CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_Register --
   -------------------------------------------------

   ------------------------------------------
   -- CP15_NVAL_DEBUG_REQUEST_ENABLE_SET.P --
   ------------------------------------------

   --  CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P array element
   subtype CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P_Element is TMS570LC43xx.Bit;

   --  CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P array
   type CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P_Field_Array is array (0 .. 2)
     of CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P
   type CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_Rsv1_Field is
     TMS570LC43xx.UInt28;
   subtype CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_C_Field is TMS570LC43xx.Bit;

   --  Validation Debug Request Enable Set Register
   type CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_Register is record
      --  PMXEVCNTR0 Overflow Debug Request
      P    : CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_Rsv1_Field := 16#0#;
      --  CCNT Overflow Debug Request
      C    : CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   -----------------------------------------
   -- CP15_NVAL_IRQ_ENABLE_CLEAR_Register --
   -----------------------------------------

   ----------------------------------
   -- CP15_NVAL_IRQ_ENABLE_CLEAR.P --
   ----------------------------------

   --  CP15_NVAL_IRQ_ENABLE_CLEAR_P array element
   subtype CP15_NVAL_IRQ_ENABLE_CLEAR_P_Element is TMS570LC43xx.Bit;

   --  CP15_NVAL_IRQ_ENABLE_CLEAR_P array
   type CP15_NVAL_IRQ_ENABLE_CLEAR_P_Field_Array is array (0 .. 2)
     of CP15_NVAL_IRQ_ENABLE_CLEAR_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_NVAL_IRQ_ENABLE_CLEAR_P
   type CP15_NVAL_IRQ_ENABLE_CLEAR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_NVAL_IRQ_ENABLE_CLEAR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_NVAL_IRQ_ENABLE_CLEAR_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_NVAL_IRQ_ENABLE_CLEAR_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_NVAL_IRQ_ENABLE_CLEAR_C_Field is TMS570LC43xx.Bit;

   --  Validation IRQ Enable Clear Register
   type CP15_NVAL_IRQ_ENABLE_CLEAR_Register is record
      --  PMXEVCNTR0 Overflow IRQ Request
      P    : CP15_NVAL_IRQ_ENABLE_CLEAR_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_NVAL_IRQ_ENABLE_CLEAR_Rsv1_Field := 16#0#;
      --  CCNT Overflow IRQ Request
      C    : CP15_NVAL_IRQ_ENABLE_CLEAR_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_NVAL_IRQ_ENABLE_CLEAR_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   -----------------------------------------
   -- CP15_NVAL_FIQ_ENABLE_CLEAR_Register --
   -----------------------------------------

   ----------------------------------
   -- CP15_NVAL_FIQ_ENABLE_CLEAR.P --
   ----------------------------------

   --  CP15_NVAL_FIQ_ENABLE_CLEAR_P array element
   subtype CP15_NVAL_FIQ_ENABLE_CLEAR_P_Element is TMS570LC43xx.Bit;

   --  CP15_NVAL_FIQ_ENABLE_CLEAR_P array
   type CP15_NVAL_FIQ_ENABLE_CLEAR_P_Field_Array is array (0 .. 2)
     of CP15_NVAL_FIQ_ENABLE_CLEAR_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_NVAL_FIQ_ENABLE_CLEAR_P
   type CP15_NVAL_FIQ_ENABLE_CLEAR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_NVAL_FIQ_ENABLE_CLEAR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_NVAL_FIQ_ENABLE_CLEAR_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_NVAL_FIQ_ENABLE_CLEAR_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_NVAL_FIQ_ENABLE_CLEAR_C_Field is TMS570LC43xx.Bit;

   --  Validation FIQ Enable Clear Register
   type CP15_NVAL_FIQ_ENABLE_CLEAR_Register is record
      --  PMXEVCNTR0 Overflow FIQ Request
      P    : CP15_NVAL_FIQ_ENABLE_CLEAR_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_NVAL_FIQ_ENABLE_CLEAR_Rsv1_Field := 16#0#;
      --  CCNT Overflow FIQ Request
      C    : CP15_NVAL_FIQ_ENABLE_CLEAR_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_NVAL_FIQ_ENABLE_CLEAR_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   -------------------------------------------
   -- CP15_NVAL_RESET_ENABLE_CLEAR_Register --
   -------------------------------------------

   ------------------------------------
   -- CP15_NVAL_RESET_ENABLE_CLEAR.P --
   ------------------------------------

   --  CP15_NVAL_RESET_ENABLE_CLEAR_P array element
   subtype CP15_NVAL_RESET_ENABLE_CLEAR_P_Element is TMS570LC43xx.Bit;

   --  CP15_NVAL_RESET_ENABLE_CLEAR_P array
   type CP15_NVAL_RESET_ENABLE_CLEAR_P_Field_Array is array (0 .. 2)
     of CP15_NVAL_RESET_ENABLE_CLEAR_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_NVAL_RESET_ENABLE_CLEAR_P
   type CP15_NVAL_RESET_ENABLE_CLEAR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_NVAL_RESET_ENABLE_CLEAR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_NVAL_RESET_ENABLE_CLEAR_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_NVAL_RESET_ENABLE_CLEAR_Rsv1_Field is TMS570LC43xx.UInt28;
   subtype CP15_NVAL_RESET_ENABLE_CLEAR_C_Field is TMS570LC43xx.Bit;

   --  Validation Reset Enable Clear Register
   type CP15_NVAL_RESET_ENABLE_CLEAR_Register is record
      --  PMXEVCNTR0 Overflow Reset Request
      P    : CP15_NVAL_RESET_ENABLE_CLEAR_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_NVAL_RESET_ENABLE_CLEAR_Rsv1_Field := 16#0#;
      --  CCNT Overflow Reset Request
      C    : CP15_NVAL_RESET_ENABLE_CLEAR_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_NVAL_RESET_ENABLE_CLEAR_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   ---------------------------------------------------
   -- CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_Register --
   ---------------------------------------------------

   --------------------------------------------
   -- CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR.P --
   --------------------------------------------

   --  CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P array element
   subtype CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P_Element is TMS570LC43xx.Bit;

   --  CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P array
   type CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P_Field_Array is array (0 .. 2)
     of CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P
   type CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : TMS570LC43xx.UInt3;
         when True =>
            --  P as an array
            Arr : CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_Rsv1_Field is
     TMS570LC43xx.UInt28;
   subtype CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_C_Field is TMS570LC43xx.Bit;

   --  Validation Debug Enable Clear Register
   type CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_Register is record
      --  PMXEVCNTR0 Overflow Debug Request
      P    : CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_P_Field :=
              (As_Array => False, Val => 16#0#);
      --  Reserved UNP or SBZ
      Rsv1 : CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_Rsv1_Field := 16#0#;
      --  CCNT Overflow Debug Request
      C    : CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_C_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_Register use record
      P    at 16#0# range 0 .. 2;
      Rsv1 at 16#0# range 3 .. 30;
      C    at 16#0# range 31 .. 31;
   end record;

   -----------------------------------
   -- CP15_BUILD_OPTIONS_1_Register --
   -----------------------------------

   subtype CP15_BUILD_OPTIONS_1_PP_BUS_ECC_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_1_FLOAT_PRECISION_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_1_Rsv1_Field is TMS570LC43xx.UInt9;
   subtype CP15_BUILD_OPTIONS_1_TCM_HI_INIT_ADDR_Field is TMS570LC43xx.UInt21;

   type CP15_BUILD_OPTIONS_1_Register is record
      --  0 = Bus ECC Not Included on Peripheral Ports
      PP_BUS_ECC       : CP15_BUILD_OPTIONS_1_PP_BUS_ECC_Field := 16#0#;
      --  0 = DP Floating Point Implemented
      FLOAT_PRECISION  : CP15_BUILD_OPTIONS_1_FLOAT_PRECISION_Field := 16#0#;
      --  Reserved SBZ
      Rsv1             : CP15_BUILD_OPTIONS_1_Rsv1_Field := 16#0#;
      --  Default High Address of TCM
      TCM_HI_INIT_ADDR : CP15_BUILD_OPTIONS_1_TCM_HI_INIT_ADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_BUILD_OPTIONS_1_Register use record
      PP_BUS_ECC       at 16#0# range 0 .. 0;
      FLOAT_PRECISION  at 16#0# range 1 .. 1;
      Rsv1             at 16#0# range 2 .. 10;
      TCM_HI_INIT_ADDR at 16#0# range 11 .. 31;
   end record;

   -----------------------------------
   -- CP15_BUILD_OPTIONS_2_Register --
   -----------------------------------

   subtype CP15_BUILD_OPTIONS_2_MICRO_SCU_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_AHB_PP_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_SL_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_AXI_BUS_ECC_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_NO_HARD_ERROR_CACHE_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_DCACHE_ES_Field is TMS570LC43xx.UInt2;
   subtype CP15_BUILD_OPTIONS_2_ICACHE_ES_Field is TMS570LC43xx.UInt2;
   subtype CP15_BUILD_OPTIONS_2_NO_AXIS_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_TCMBUSPARITY_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_NO_B1_TCM_INF_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_NO_B0_TCM_INF_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_NO_A_TCM_INF_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_WATCHPOINTS_Field is TMS570LC43xx.UInt3;
   subtype CP15_BUILD_OPTIONS_2_BREAKPOINTS_Field is TMS570LC43xx.UInt3;
   subtype CP15_BUILD_OPTIONS_2_MPU_REGIONS_Field is TMS570LC43xx.UInt2;
   subtype CP15_BUILD_OPTIONS_2_NO_FPU_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_NO_IE_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_BTCM_ES_Field is TMS570LC43xx.UInt2;
   subtype CP15_BUILD_OPTIONS_2_ATCM_ES_Field is TMS570LC43xx.UInt2;
   subtype CP15_BUILD_OPTIONS_2_NO_DCACHE_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_NO_ICACHE_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_LOCK_STEP_Field is TMS570LC43xx.Bit;
   subtype CP15_BUILD_OPTIONS_2_NUM_CPU_Field is TMS570LC43xx.Bit;

   type CP15_BUILD_OPTIONS_2_Register is record
      --  1 = Processor Contains ACP Logic
      MICRO_SCU           : CP15_BUILD_OPTIONS_2_MICRO_SCU_Field := 16#0#;
      --  1 = CPUs have AHB Peripheral Interfaces
      AHB_PP              : CP15_BUILD_OPTIONS_2_AHB_PP_Field := 16#0#;
      --  1 = Split/Lock Logic Included
      SL                  : CP15_BUILD_OPTIONS_2_SL_Field := 16#0#;
      --  1 = Processor Contains AXI Bus ECC Logic
      AXI_BUS_ECC         : CP15_BUILD_OPTIONS_2_AXI_BUS_ECC_Field := 16#0#;
      --  1 = Processor Does Not Contain TCM Error Cache
      NO_HARD_ERROR_CACHE : CP15_BUILD_OPTIONS_2_NO_HARD_ERROR_CACHE_Field :=
                             16#0#;
      --  0x0=None, 0x1= 8-bit Parity, 0x2 = 32-bit ECC On D$
      DCACHE_ES           : CP15_BUILD_OPTIONS_2_DCACHE_ES_Field := 16#0#;
      --  0x0=None, 0x1= 8-bit Parity, 0x3 = 64-bit ECC On I$
      ICACHE_ES           : CP15_BUILD_OPTIONS_2_ICACHE_ES_Field := 16#0#;
      --  1 = CPU Does Not Contain AXI Slave Port
      NO_AXIS             : CP15_BUILD_OPTIONS_2_NO_AXIS_Field := 16#0#;
      --  1 = Processor Contains TCM Address Bus Parity Logic
      TCMBUSPARITY        : CP15_BUILD_OPTIONS_2_TCMBUSPARITY_Field := 16#0#;
      --  1 = CPUs do not contain B1TCM Port
      NO_B1_TCM_INF       : CP15_BUILD_OPTIONS_2_NO_B1_TCM_INF_Field := 16#0#;
      --  1 = CPUs do not contain B0TCM Port
      NO_B0_TCM_INF       : CP15_BUILD_OPTIONS_2_NO_B0_TCM_INF_Field := 16#0#;
      --  1 = CPUs do not contain ATCM Port
      NO_A_TCM_INF        : CP15_BUILD_OPTIONS_2_NO_A_TCM_INF_Field := 16#0#;
      --  Number of watchpoints per CPU - 1
      WATCHPOINTS         : CP15_BUILD_OPTIONS_2_WATCHPOINTS_Field := 16#0#;
      --  Number of breakpoints per CPU - 1
      BREAKPOINTS         : CP15_BUILD_OPTIONS_2_BREAKPOINTS_Field := 16#0#;
      --  0x0=0, 0x2=12, 0x3=16 MPU Regions
      MPU_REGIONS         : CP15_BUILD_OPTIONS_2_MPU_REGIONS_Field := 16#0#;
      --  1 = Processor Contains No FPU
      NO_FPU              : CP15_BUILD_OPTIONS_2_NO_FPU_Field := 16#0#;
      --  1 = Processor Does Not Support Big Endian Instructions
      NO_IE               : CP15_BUILD_OPTIONS_2_NO_IE_Field := 16#0#;
      --  0x0=None, 0x2=32-bit ECC, 0x3=64-bit ECC BTCM Error Scheme
      BTCM_ES             : CP15_BUILD_OPTIONS_2_BTCM_ES_Field := 16#0#;
      --  0x0=None, 0x2=32-bit ECC, 0x3=64-bit ECC ATCM Error Scheme
      ATCM_ES             : CP15_BUILD_OPTIONS_2_ATCM_ES_Field := 16#0#;
      --  1 = CPU Does Not Contain D$
      NO_DCACHE           : CP15_BUILD_OPTIONS_2_NO_DCACHE_Field := 16#0#;
      --  1 = CPU Does Not Contain I$
      NO_ICACHE           : CP15_BUILD_OPTIONS_2_NO_ICACHE_Field := 16#0#;
      --  1 = Lockstep Logic Included
      LOCK_STEP           : CP15_BUILD_OPTIONS_2_LOCK_STEP_Field := 16#0#;
      --  0 = single, 1 = twin CPU
      NUM_CPU             : CP15_BUILD_OPTIONS_2_NUM_CPU_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_BUILD_OPTIONS_2_Register use record
      MICRO_SCU           at 16#0# range 0 .. 0;
      AHB_PP              at 16#0# range 1 .. 1;
      SL                  at 16#0# range 2 .. 2;
      AXI_BUS_ECC         at 16#0# range 3 .. 3;
      NO_HARD_ERROR_CACHE at 16#0# range 4 .. 4;
      DCACHE_ES           at 16#0# range 5 .. 6;
      ICACHE_ES           at 16#0# range 7 .. 8;
      NO_AXIS             at 16#0# range 9 .. 9;
      TCMBUSPARITY        at 16#0# range 10 .. 10;
      NO_B1_TCM_INF       at 16#0# range 11 .. 11;
      NO_B0_TCM_INF       at 16#0# range 12 .. 12;
      NO_A_TCM_INF        at 16#0# range 13 .. 13;
      WATCHPOINTS         at 16#0# range 14 .. 16;
      BREAKPOINTS         at 16#0# range 17 .. 19;
      MPU_REGIONS         at 16#0# range 20 .. 21;
      NO_FPU              at 16#0# range 22 .. 22;
      NO_IE               at 16#0# range 23 .. 23;
      BTCM_ES             at 16#0# range 24 .. 25;
      ATCM_ES             at 16#0# range 26 .. 27;
      NO_DCACHE           at 16#0# range 28 .. 28;
      NO_ICACHE           at 16#0# range 29 .. 29;
      LOCK_STEP           at 16#0# range 30 .. 30;
      NUM_CPU             at 16#0# range 31 .. 31;
   end record;

   ----------------------------------------------
   -- CP15_CORRECTABLE_FAULT_LOCATION_Register --
   ----------------------------------------------

   subtype CP15_CORRECTABLE_FAULT_LOCATION_TYPE_Field is TMS570LC43xx.UInt2;
   subtype CP15_CORRECTABLE_FAULT_LOCATION_Rsv3_Field is TMS570LC43xx.UInt3;
   subtype CP15_CORRECTABLE_FAULT_LOCATION_INDEX_Field is TMS570LC43xx.UInt9;
   subtype CP15_CORRECTABLE_FAULT_LOCATION_Rsv2_Field is TMS570LC43xx.UInt10;
   subtype CP15_CORRECTABLE_FAULT_LOCATION_SIDE_Field is TMS570LC43xx.UInt2;
   subtype CP15_CORRECTABLE_FAULT_LOCATION_WAY_Field is TMS570LC43xx.UInt4;
   subtype CP15_CORRECTABLE_FAULT_LOCATION_Rsv1_Field is TMS570LC43xx.UInt2;

   type CP15_CORRECTABLE_FAULT_LOCATION_Register is record
      --  Access Type that Caused Error 0x00 I$, 0x01 D$, 0x3 ACP
      TYPE_k : CP15_CORRECTABLE_FAULT_LOCATION_TYPE_Field := 16#0#;
      --  Reserved RAZ
      Rsv3   : CP15_CORRECTABLE_FAULT_LOCATION_Rsv3_Field := 16#0#;
      --  Index where error occurred
      INDEX  : CP15_CORRECTABLE_FAULT_LOCATION_INDEX_Field := 16#0#;
      --  Reserved RAZ
      Rsv2   : CP15_CORRECTABLE_FAULT_LOCATION_Rsv2_Field := 16#0#;
      --  Source of error, 00 for cache
      SIDE   : CP15_CORRECTABLE_FAULT_LOCATION_SIDE_Field := 16#0#;
      --  Way where error occurred
      WAY    : CP15_CORRECTABLE_FAULT_LOCATION_WAY_Field := 16#0#;
      --  Reserved RAZ
      Rsv1   : CP15_CORRECTABLE_FAULT_LOCATION_Rsv1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for CP15_CORRECTABLE_FAULT_LOCATION_Register use record
      TYPE_k at 16#0# range 0 .. 1;
      Rsv3   at 16#0# range 2 .. 4;
      INDEX  at 16#0# range 5 .. 13;
      Rsv2   at 16#0# range 14 .. 23;
      SIDE   at 16#0# range 24 .. 25;
      WAY    at 16#0# range 26 .. 29;
      Rsv1   at 16#0# range 30 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type Cp15_Disc is
     (
      Id_Code,
      Cache_Type,
      Tcm_Type,
      Mpu_Type,
      Multiprocessor_Id,
      Processor_Feature_0,
      Processor_Feature_1,
      Debug_Feature_0,
      Auxiliary_Feature_0,
      Memory_Model_Feature_0,
      Memory_Model_Feature_1,
      Memory_Model_Feature_2,
      Memory_Model_Feature_3,
      Instruction_Set_Attribute_0,
      Instruction_Set_Attribute_1,
      Instruction_Set_Attribute_2,
      Instruction_Set_Attribute_3,
      Instruction_Set_Attribute_4,
      Instruction_Set_Attribute_5,
      Current_Cache_Size_Id,
      Current_Cache_Level_Id,
      Cache_Size_Selection,
      System_Control,
      Auxiliary_Control,
      Coprocessor_Access,
      Data_Fault_Status,
      Instruction_Fault_Status,
      Aux_Data_Fault_Status,
      Aux_Instruction_Fault_Status,
      Data_Fault_Address,
      Instruction_Fault_Address,
      Mpu_Region_Base_Address,
      Mpu_Region_Size_Enable,
      Mpu_Region_Access,
      Mpu_Region_Number,
      Tcm_Atcm_Region,
      Tcm_Tcm_Selection,
      Performance_Monitor_Control,
      Count_Enable_Set,
      Count_Enable_Clear,
      Overflow_Flag_Status,
      Software_Increment,
      Counter_Selection,
      Cycle_Count,
      Event_Selection,
      Performance_Monitor_Count,
      User_Enable,
      Interrupt_Enable_Set,
      Interrupt_Enable_Clear,
      Slave_Port_Control,
      Fcse_Pid,
      Context_Id,
      User_Read_Write_Thread_Process_Id,
      User_Read_Only_Thread_Process_Id,
      Priviledged_Only_Thread_Process_Id,
      Secondary_Auxiliary_Control,
      Nval_Irq_Enable_Set,
      Nval_Fiq_Enable_Set,
      Nval_Reset_Enable_Set,
      Nval_Debug_Request_Enable_Set,
      Nval_Irq_Enable_Clear,
      Nval_Fiq_Enable_Clear,
      Nval_Reset_Enable_Clear,
      Nval_Debug_Request_Enable_Clear,
      Build_Options_1,
      Build_Options_2,
      Correctable_Fault_Location);

   --  IRQ Registers
   type Cp15_Peripheral
     (Discriminent : Cp15_Disc := Id_Code)
   is record
      case Discriminent is
         when Id_Code =>
            --  MIDR
            CP15_ID_CODE : CP15_ID_CODE_Register;
         when Cache_Type =>
            --  CTR
            CP15_CACHE_TYPE : CP15_CACHE_TYPE_Register;
         when Tcm_Type =>
            --  TCMTR
            CP15_TCM_TYPE : CP15_TCM_TYPE_Register;
         when Mpu_Type =>
            --  MPUIR
            CP15_MPU_TYPE : CP15_MPU_TYPE_Register;
         when Multiprocessor_Id =>
            --  MPIDR
            CP15_MULTIPROCESSOR_ID : CP15_MULTIPROCESSOR_ID_Register;
         when Processor_Feature_0 =>
            --  PFR0
            CP15_PROCESSOR_FEATURE_0 : CP15_PROCESSOR_FEATURE_0_Register;
         when Processor_Feature_1 =>
            --  PFR1
            CP15_PROCESSOR_FEATURE_1 : CP15_PROCESSOR_FEATURE_1_Register;
         when Debug_Feature_0 =>
            --  DFR0
            CP15_DEBUG_FEATURE_0 : CP15_DEBUG_FEATURE_0_Register;
         when Auxiliary_Feature_0 =>
            --  ID_AFR0
            CP15_AUXILIARY_FEATURE_0 : TMS570LC43xx.Word;
         when Memory_Model_Feature_0 =>
            --  ID_MMFR0
            CP15_MEMORY_MODEL_FEATURE_0 : CP15_MEMORY_MODEL_FEATURE_0_Register;
         when Memory_Model_Feature_1 =>
            --  ID_MMFR1
            CP15_MEMORY_MODEL_FEATURE_1 : CP15_MEMORY_MODEL_FEATURE_1_Register;
         when Memory_Model_Feature_2 =>
            --  ID_MMFR2
            CP15_MEMORY_MODEL_FEATURE_2 : CP15_MEMORY_MODEL_FEATURE_2_Register;
         when Memory_Model_Feature_3 =>
            --  ID_MMFR3
            CP15_MEMORY_MODEL_FEATURE_3 : CP15_MEMORY_MODEL_FEATURE_3_Register;
         when Instruction_Set_Attribute_0 =>
            --  ID_ISAR0
            CP15_INSTRUCTION_SET_ATTRIBUTE_0 : CP15_INSTRUCTION_SET_ATTRIBUTE_0_Register;
         when Instruction_Set_Attribute_1 =>
            --  ID_ISAR1
            CP15_INSTRUCTION_SET_ATTRIBUTE_1 : CP15_INSTRUCTION_SET_ATTRIBUTE_1_Register;
         when Instruction_Set_Attribute_2 =>
            --  ID_ISAR2
            CP15_INSTRUCTION_SET_ATTRIBUTE_2 : CP15_INSTRUCTION_SET_ATTRIBUTE_2_Register;
         when Instruction_Set_Attribute_3 =>
            --  ID_ISAR3
            CP15_INSTRUCTION_SET_ATTRIBUTE_3 : CP15_INSTRUCTION_SET_ATTRIBUTE_3_Register;
         when Instruction_Set_Attribute_4 =>
            --  ID_ISAR4
            CP15_INSTRUCTION_SET_ATTRIBUTE_4 : CP15_INSTRUCTION_SET_ATTRIBUTE_4_Register;
         when Instruction_Set_Attribute_5 =>
            --  ID_ISAR5
            CP15_INSTRUCTION_SET_ATTRIBUTE_5 : TMS570LC43xx.Word;
         when Current_Cache_Size_Id =>
            --  CCSIDR
            CP15_CURRENT_CACHE_SIZE_ID : CP15_CURRENT_CACHE_SIZE_ID_Register;
         when Current_Cache_Level_Id =>
            --  CLIDR
            CP15_CURRENT_CACHE_LEVEL_ID : CP15_CURRENT_CACHE_LEVEL_ID_Register;
         when Cache_Size_Selection =>
            --  CSSR
            CP15_CACHE_SIZE_SELECTION : CP15_CACHE_SIZE_SELECTION_Register;
         when System_Control =>
            --  SCTLR
            CP15_SYSTEM_CONTROL : CP15_SYSTEM_CONTROL_Register;
         when Auxiliary_Control =>
            --  ACTLR
            CP15_AUXILIARY_CONTROL : CP15_AUXILIARY_CONTROL_Register;
         when Coprocessor_Access =>
            --  CPACR
            CP15_COPROCESSOR_ACCESS : CP15_COPROCESSOR_ACCESS_Register;
         when Data_Fault_Status =>
            --  DFSR
            CP15_DATA_FAULT_STATUS : CP15_DATA_FAULT_STATUS_Register;
         when Instruction_Fault_Status =>
            --  IFSR
            CP15_INSTRUCTION_FAULT_STATUS : CP15_INSTRUCTION_FAULT_STATUS_Register;
         when Aux_Data_Fault_Status =>
            --  ADFSR
            CP15_AUX_DATA_FAULT_STATUS : CP15_AUX_DATA_FAULT_STATUS_Register;
         when Aux_Instruction_Fault_Status =>
            --  AIFSR
            CP15_AUX_INSTRUCTION_FAULT_STATUS : CP15_AUX_INSTRUCTION_FAULT_STATUS_Register;
         when Data_Fault_Address =>
            --  DFAR
            CP15_DATA_FAULT_ADDRESS : TMS570LC43xx.Word;
         when Instruction_Fault_Address =>
            --  IFAR
            CP15_INSTRUCTION_FAULT_ADDRESS : TMS570LC43xx.Word;
         when Mpu_Region_Base_Address =>
            CP15_MPU_REGION_BASE_ADDRESS : TMS570LC43xx.Word;
         when Mpu_Region_Size_Enable =>
            CP15_MPU_REGION_SIZE_ENABLE : CP15_MPU_REGION_SIZE_ENABLE_Register;
         when Mpu_Region_Access =>
            CP15_MPU_REGION_ACCESS : CP15_MPU_REGION_ACCESS_Register;
         when Mpu_Region_Number =>
            CP15_MPU_REGION_NUMBER : CP15_MPU_REGION_NUMBER_Register;
         when Tcm_Atcm_Region =>
            --  ATCMRR
            CP15_TCM_ATCM_REGION : CP15_TCM_ATCM_REGION_Register;
         when Tcm_Tcm_Selection =>
            --  TCMSR
            CP15_TCM_TCM_SELECTION : CP15_TCM_TCM_SELECTION_Register;
         when Performance_Monitor_Control =>
            --  PMCR
            CP15_PERFORMANCE_MONITOR_CONTROL : CP15_PERFORMANCE_MONITOR_CONTROL_Register;
         when Count_Enable_Set =>
            --  PMCNTENSET
            CP15_COUNT_ENABLE_SET : CP15_COUNT_ENABLE_SET_Register;
         when Count_Enable_Clear =>
            --  PMCNTENCLR
            CP15_COUNT_ENABLE_CLEAR : CP15_COUNT_ENABLE_CLEAR_Register;
         when Overflow_Flag_Status =>
            --  PMOVSR
            CP15_OVERFLOW_FLAG_STATUS : CP15_OVERFLOW_FLAG_STATUS_Register;
         when Software_Increment =>
            --  PMSWINC
            CP15_SOFTWARE_INCREMENT : CP15_SOFTWARE_INCREMENT_Register;
         when Counter_Selection =>
            --  PMSELR
            CP15_COUNTER_SELECTION : CP15_COUNTER_SELECTION_Register;
         when Cycle_Count =>
            --  PMCCNTR
            CP15_CYCLE_COUNT : TMS570LC43xx.Word;
         when Event_Selection =>
            --  PMXEVTYPER
            CP15_EVENT_SELECTION : CP15_EVENT_SELECTION_Register;
         when Performance_Monitor_Count =>
            --  PMXEVCNTR
            CP15_PERFORMANCE_MONITOR_COUNT : TMS570LC43xx.Word;
         when User_Enable =>
            --  PMUSERENR
            CP15_USER_ENABLE : CP15_USER_ENABLE_Register;
         when Interrupt_Enable_Set =>
            --  PMINTENSET
            CP15_INTERRUPT_ENABLE_SET : CP15_INTERRUPT_ENABLE_SET_Register;
         when Interrupt_Enable_Clear =>
            --  PMINTENCLR
            CP15_INTERRUPT_ENABLE_CLEAR : CP15_INTERRUPT_ENABLE_CLEAR_Register;
         when Slave_Port_Control =>
            --  AXI Slave Port Control
            CP15_SLAVE_PORT_CONTROL : CP15_SLAVE_PORT_CONTROL_Register;
         when Fcse_Pid =>
            --  FCSEPID
            CP15_FCSE_PID : TMS570LC43xx.Word;
         when Context_Id =>
            --  CONTEXTIDR
            CP15_CONTEXT_ID : TMS570LC43xx.Word;
         when User_Read_Write_Thread_Process_Id =>
            CP15_USER_READ_WRITE_THREAD_PROCESS_ID : TMS570LC43xx.Word;
         when User_Read_Only_Thread_Process_Id =>
            CP15_USER_READ_ONLY_THREAD_PROCESS_ID : TMS570LC43xx.Word;
         when Priviledged_Only_Thread_Process_Id =>
            CP15_PRIVILEDGED_ONLY_THREAD_PROCESS_ID : TMS570LC43xx.Word;
         when Secondary_Auxiliary_Control =>
            CP15_SECONDARY_AUXILIARY_CONTROL : CP15_SECONDARY_AUXILIARY_CONTROL_Register;
         when Nval_Irq_Enable_Set =>
            --  Validation IRQ Enable Set Register
            CP15_NVAL_IRQ_ENABLE_SET : CP15_NVAL_IRQ_ENABLE_SET_Register;
         when Nval_Fiq_Enable_Set =>
            --  Validation FIQ Enable Set Register
            CP15_NVAL_FIQ_ENABLE_SET : CP15_NVAL_FIQ_ENABLE_SET_Register;
         when Nval_Reset_Enable_Set =>
            --  Validation Reset Enable Set Register
            CP15_NVAL_RESET_ENABLE_SET : CP15_NVAL_RESET_ENABLE_SET_Register;
         when Nval_Debug_Request_Enable_Set =>
            --  Validation Debug Request Enable Set Register
            CP15_NVAL_DEBUG_REQUEST_ENABLE_SET : CP15_NVAL_DEBUG_REQUEST_ENABLE_SET_Register;
         when Nval_Irq_Enable_Clear =>
            --  Validation IRQ Enable Clear Register
            CP15_NVAL_IRQ_ENABLE_CLEAR : CP15_NVAL_IRQ_ENABLE_CLEAR_Register;
         when Nval_Fiq_Enable_Clear =>
            --  Validation FIQ Enable Clear Register
            CP15_NVAL_FIQ_ENABLE_CLEAR : CP15_NVAL_FIQ_ENABLE_CLEAR_Register;
         when Nval_Reset_Enable_Clear =>
            --  Validation Reset Enable Clear Register
            CP15_NVAL_RESET_ENABLE_CLEAR : CP15_NVAL_RESET_ENABLE_CLEAR_Register;
         when Nval_Debug_Request_Enable_Clear =>
            --  Validation Debug Enable Clear Register
            CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR : CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR_Register;
         when Build_Options_1 =>
            CP15_BUILD_OPTIONS_1 : CP15_BUILD_OPTIONS_1_Register;
         when Build_Options_2 =>
            CP15_BUILD_OPTIONS_2 : CP15_BUILD_OPTIONS_2_Register;
         when Correctable_Fault_Location =>
            CP15_CORRECTABLE_FAULT_LOCATION : CP15_CORRECTABLE_FAULT_LOCATION_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for Cp15_Peripheral use record
      CP15_ID_CODE                            at 0 range 0 .. 31;
      CP15_CACHE_TYPE                         at 0 range 0 .. 31;
      CP15_TCM_TYPE                           at 0 range 0 .. 31;
      CP15_MPU_TYPE                           at 0 range 0 .. 31;
      CP15_MULTIPROCESSOR_ID                  at 0 range 0 .. 31;
      CP15_PROCESSOR_FEATURE_0                at 0 range 0 .. 31;
      CP15_PROCESSOR_FEATURE_1                at 0 range 0 .. 31;
      CP15_DEBUG_FEATURE_0                    at 0 range 0 .. 31;
      CP15_AUXILIARY_FEATURE_0                at 0 range 0 .. 31;
      CP15_MEMORY_MODEL_FEATURE_0             at 0 range 0 .. 31;
      CP15_MEMORY_MODEL_FEATURE_1             at 0 range 0 .. 31;
      CP15_MEMORY_MODEL_FEATURE_2             at 0 range 0 .. 31;
      CP15_MEMORY_MODEL_FEATURE_3             at 0 range 0 .. 31;
      CP15_INSTRUCTION_SET_ATTRIBUTE_0        at 0 range 0 .. 31;
      CP15_INSTRUCTION_SET_ATTRIBUTE_1        at 0 range 0 .. 31;
      CP15_INSTRUCTION_SET_ATTRIBUTE_2        at 0 range 0 .. 31;
      CP15_INSTRUCTION_SET_ATTRIBUTE_3        at 0 range 0 .. 31;
      CP15_INSTRUCTION_SET_ATTRIBUTE_4        at 0 range 0 .. 31;
      CP15_INSTRUCTION_SET_ATTRIBUTE_5        at 0 range 0 .. 31;
      CP15_CURRENT_CACHE_SIZE_ID              at 0 range 0 .. 31;
      CP15_CURRENT_CACHE_LEVEL_ID             at 0 range 0 .. 31;
      CP15_CACHE_SIZE_SELECTION               at 0 range 0 .. 31;
      CP15_SYSTEM_CONTROL                     at 0 range 0 .. 31;
      CP15_AUXILIARY_CONTROL                  at 0 range 0 .. 31;
      CP15_COPROCESSOR_ACCESS                 at 0 range 0 .. 31;
      CP15_DATA_FAULT_STATUS                  at 0 range 0 .. 31;
      CP15_INSTRUCTION_FAULT_STATUS           at 0 range 0 .. 31;
      CP15_AUX_DATA_FAULT_STATUS              at 0 range 0 .. 31;
      CP15_AUX_INSTRUCTION_FAULT_STATUS       at 0 range 0 .. 31;
      CP15_DATA_FAULT_ADDRESS                 at 0 range 0 .. 31;
      CP15_INSTRUCTION_FAULT_ADDRESS          at 0 range 0 .. 31;
      CP15_MPU_REGION_BASE_ADDRESS            at 0 range 0 .. 31;
      CP15_MPU_REGION_SIZE_ENABLE             at 0 range 0 .. 31;
      CP15_MPU_REGION_ACCESS                  at 0 range 0 .. 31;
      CP15_MPU_REGION_NUMBER                  at 0 range 0 .. 31;
      CP15_TCM_ATCM_REGION                    at 0 range 0 .. 31;
      CP15_TCM_TCM_SELECTION                  at 0 range 0 .. 31;
      CP15_PERFORMANCE_MONITOR_CONTROL        at 0 range 0 .. 31;
      CP15_COUNT_ENABLE_SET                   at 0 range 0 .. 31;
      CP15_COUNT_ENABLE_CLEAR                 at 0 range 0 .. 31;
      CP15_OVERFLOW_FLAG_STATUS               at 0 range 0 .. 31;
      CP15_SOFTWARE_INCREMENT                 at 0 range 0 .. 31;
      CP15_COUNTER_SELECTION                  at 0 range 0 .. 31;
      CP15_CYCLE_COUNT                        at 0 range 0 .. 31;
      CP15_EVENT_SELECTION                    at 0 range 0 .. 31;
      CP15_PERFORMANCE_MONITOR_COUNT          at 0 range 0 .. 31;
      CP15_USER_ENABLE                        at 0 range 0 .. 31;
      CP15_INTERRUPT_ENABLE_SET               at 0 range 0 .. 31;
      CP15_INTERRUPT_ENABLE_CLEAR             at 0 range 0 .. 31;
      CP15_SLAVE_PORT_CONTROL                 at 0 range 0 .. 31;
      CP15_FCSE_PID                           at 0 range 0 .. 31;
      CP15_CONTEXT_ID                         at 0 range 0 .. 31;
      CP15_USER_READ_WRITE_THREAD_PROCESS_ID  at 0 range 0 .. 31;
      CP15_USER_READ_ONLY_THREAD_PROCESS_ID   at 0 range 0 .. 31;
      CP15_PRIVILEDGED_ONLY_THREAD_PROCESS_ID at 0 range 0 .. 31;
      CP15_SECONDARY_AUXILIARY_CONTROL        at 0 range 0 .. 31;
      CP15_NVAL_IRQ_ENABLE_SET                at 0 range 0 .. 31;
      CP15_NVAL_FIQ_ENABLE_SET                at 0 range 0 .. 31;
      CP15_NVAL_RESET_ENABLE_SET              at 0 range 0 .. 31;
      CP15_NVAL_DEBUG_REQUEST_ENABLE_SET      at 0 range 0 .. 31;
      CP15_NVAL_IRQ_ENABLE_CLEAR              at 0 range 0 .. 31;
      CP15_NVAL_FIQ_ENABLE_CLEAR              at 0 range 0 .. 31;
      CP15_NVAL_RESET_ENABLE_CLEAR            at 0 range 0 .. 31;
      CP15_NVAL_DEBUG_REQUEST_ENABLE_CLEAR    at 0 range 0 .. 31;
      CP15_BUILD_OPTIONS_1                    at 0 range 0 .. 31;
      CP15_BUILD_OPTIONS_2                    at 0 range 0 .. 31;
      CP15_CORRECTABLE_FAULT_LOCATION         at 0 range 0 .. 31;
   end record;

   --  IRQ Registers
   Cp15_Periph : aliased Cp15_Peripheral
     with Import, Address => Cp15_Base;

end TMS570LC43xx.CP15;
