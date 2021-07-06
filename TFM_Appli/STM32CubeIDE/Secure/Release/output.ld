;
MEMORY
{
  FLASH (rx) : ORIGIN = ((((0x0C000000)) + (((((((((((((0x0000)+(0x1000))+(0x0000))+(0x1000))+(0x900))+(0xef00))+(0x800))+(0x1000)) + (0x2000))+(0x2000))) + (0x400))))), LENGTH = (((0x24000) - (0x400) - (0x2000)) - (0x00000380))
  RAM (rwx) : ORIGIN = ((((0x30000000)) + ((((0x30000)+(0x10000 - (0x400)) ) - (0xfc00 ))))), LENGTH = ((0xfc00 ))
  VENEERS (rx) : ORIGIN = (((((((0x0C000000)) + (((((((((((((0x0000)+(0x1000))+(0x0000))+(0x1000))+(0x900))+(0xef00))+(0x800))+(0x1000)) + (0x2000))+(0x2000))) + (0x400))))) + (((0x24000) - (0x400) - (0x2000)) - (0x00000380))) -1) + 1), LENGTH = (0x00000380)
}
__heap_size__ = 0x0001000;
__psp_stack_size__ = 0x0000800;
__msp_init_stack_size__ = 0x0000400;
GROUP(libgcc.a libc.a libm.a libnosys.a libc_nano.a)
ENTRY(Reset_Handler)
SECTIONS
{
    .TFM_VECTORS : ALIGN(4)
    {
        __vectors_start__ = .;
        KEEP(*(.vectors))
        *startup*(.text*)
        . = ALIGN(4);
        __vectors_end__ = .;
    } > FLASH
    .copy.table : ALIGN(4)
    {
        __copy_table_start__ = .;
        LONG (LOADADDR(.TFM_DATA))
        LONG (ADDR(.TFM_DATA))
        LONG (SIZEOF(.TFM_DATA))
        LONG (LOADADDR(.TFM_UNPRIV_DATA))
        LONG (ADDR(.TFM_UNPRIV_DATA))
        LONG (SIZEOF(.TFM_UNPRIV_DATA))
        LONG (LOADADDR(.TFM_SP_STORAGE_DATA))
        LONG (ADDR(.TFM_SP_STORAGE_DATA))
        LONG (SIZEOF(.TFM_SP_STORAGE_DATA))
        LONG (LOADADDR(.TFM_SP_ITS_DATA))
        LONG (ADDR(.TFM_SP_ITS_DATA))
        LONG (SIZEOF(.TFM_SP_ITS_DATA))
        LONG (LOADADDR(.TFM_SP_CRYPTO_DATA))
        LONG (ADDR(.TFM_SP_CRYPTO_DATA))
        LONG (SIZEOF(.TFM_SP_CRYPTO_DATA))
        LONG (LOADADDR(.TFM_SP_INITIAL_ATTESTATION_DATA))
        LONG (ADDR(.TFM_SP_INITIAL_ATTESTATION_DATA))
        LONG (SIZEOF(.TFM_SP_INITIAL_ATTESTATION_DATA))
        __copy_table_end__ = .;
    } > FLASH
    .zero.table : ALIGN(4)
    {
        __zero_table_start__ = .;
        LONG (ADDR(.TFM_BSS))
        LONG (SIZEOF(.TFM_BSS))
        LONG (ADDR(.TFM_SP_STORAGE_BSS))
        LONG (SIZEOF(.TFM_SP_STORAGE_BSS))
        LONG (ADDR(.TFM_SP_STORAGE_STACK))
        LONG (SIZEOF(.TFM_SP_STORAGE_STACK))
        LONG (ADDR(.TFM_SP_ITS_BSS))
        LONG (SIZEOF(.TFM_SP_ITS_BSS))
        LONG (ADDR(.TFM_SP_ITS_STACK))
        LONG (SIZEOF(.TFM_SP_ITS_STACK))
        LONG (ADDR(.TFM_SP_CRYPTO_BSS))
        LONG (SIZEOF(.TFM_SP_CRYPTO_BSS))
        LONG (ADDR(.TFM_SP_CRYPTO_STACK))
        LONG (SIZEOF(.TFM_SP_CRYPTO_STACK))
        LONG (ADDR(.TFM_SP_INITIAL_ATTESTATION_BSS))
        LONG (SIZEOF(.TFM_SP_INITIAL_ATTESTATION_BSS))
        LONG (ADDR(.TFM_SP_INITIAL_ATTESTATION_STACK))
        LONG (SIZEOF(.TFM_SP_INITIAL_ATTESTATION_STACK))
        __zero_table_end__ = .;
    } > FLASH
    .TFM_UNPRIV_CODE : ALIGN(32)
    {
        *libc_nano*:*(.text*)
        *libc_nano*:*(.rodata*)
        *tfm_spm_services.o(.text*)
        *tfm_spm_services.o(.rodata*)
        *dummy_crypto_keys.o(.text*)
        *dummy_crypto_keys.o(.rodata*)
        *dummy_nv_counters.o(.text*)
        *dummy_nv_counters.o(.rodata*)
        *dummy_boot_seed.o(.text*)
        *dummy_boot_seed.o(.rodata*)
        *dummy_device_id.o(.text*)
        *dummy_device_id.o(.rodata*)
        *platform_retarget_dev.o(.text*)
        *platform_retarget_dev.o(.rodata*)
        *device_definition.o(.text*)
        *device_definition.o(.rodata*)
        *(SFN)
        *libgcc*:*(.text*)
        *libgcc*:*(.rodata*)
        . = ALIGN(32);
    } > FLASH
    Image$$TFM_UNPRIV_CODE$$RO$$Base = ADDR(.TFM_UNPRIV_CODE);
    Image$$TFM_UNPRIV_CODE$$RO$$Limit = ADDR(.TFM_UNPRIV_CODE) + SIZEOF(.TFM_UNPRIV_CODE);
    Image$$TFM_PSA_CODE_START$$Base = .;
    .TFM_SP_STORAGE : ALIGN(32)
    {
        *tfm_storage*:*(.text*)
        *tfm_storage*:*(.rodata*)
        *(TFM_SP_STORAGE_ATTR_FN)
        . = ALIGN(32);
    } > FLASH
    Image$$TFM_SP_STORAGE$$RO$$Base = ADDR(.TFM_SP_STORAGE);
    Image$$TFM_SP_STORAGE$$RO$$Limit = ADDR(.TFM_SP_STORAGE) + SIZEOF(.TFM_SP_STORAGE);
    Image$$TFM_SP_STORAGE$$Base = ADDR(.TFM_SP_STORAGE);
    Image$$TFM_SP_STORAGE$$Limit = ADDR(.TFM_SP_STORAGE) + SIZEOF(.TFM_SP_STORAGE);
    .TFM_SP_ITS : ALIGN(32)
    {
        *tfm_internal_trusted_storage*:*(.text*)
        *tfm_internal_trusted_storage*:*(.rodata*)
        *(TFM_SP_ITS_ATTR_FN)
        . = ALIGN(32);
    } > FLASH
    Image$$TFM_SP_ITS$$RO$$Base = ADDR(.TFM_SP_ITS);
    Image$$TFM_SP_ITS$$RO$$Limit = ADDR(.TFM_SP_ITS) + SIZEOF(.TFM_SP_ITS);
    Image$$TFM_SP_ITS$$Base = ADDR(.TFM_SP_ITS);
    Image$$TFM_SP_ITS$$Limit = ADDR(.TFM_SP_ITS) + SIZEOF(.TFM_SP_ITS);
    .TFM_SP_CRYPTO : ALIGN(32)
    {
        *tfm_crypto*:*(.text*)
        *tfm_crypto*:*(.rodata*)
        *(TFM_SP_CRYPTO_ATTR_FN)
        . = ALIGN(32);
    } > FLASH
    Image$$TFM_SP_CRYPTO$$RO$$Base = ADDR(.TFM_SP_CRYPTO);
    Image$$TFM_SP_CRYPTO$$RO$$Limit = ADDR(.TFM_SP_CRYPTO) + SIZEOF(.TFM_SP_CRYPTO);
    Image$$TFM_SP_CRYPTO$$Base = ADDR(.TFM_SP_CRYPTO);
    Image$$TFM_SP_CRYPTO$$Limit = ADDR(.TFM_SP_CRYPTO) + SIZEOF(.TFM_SP_CRYPTO);
    .TFM_SP_INITIAL_ATTESTATION : ALIGN(32)
    {
        *tfm_attest*:*(.text*)
        *tfm_attest*:*(.rodata*)
        *(TFM_SP_INITIAL_ATTESTATION_ATTR_FN)
        . = ALIGN(32);
    } > FLASH
    Image$$TFM_SP_INITIAL_ATTESTATION$$RO$$Base = ADDR(.TFM_SP_INITIAL_ATTESTATION);
    Image$$TFM_SP_INITIAL_ATTESTATION$$RO$$Limit = ADDR(.TFM_SP_INITIAL_ATTESTATION) + SIZEOF(.TFM_SP_INITIAL_ATTESTATION);
    Image$$TFM_SP_INITIAL_ATTESTATION$$Base = ADDR(.TFM_SP_INITIAL_ATTESTATION);
    Image$$TFM_SP_INITIAL_ATTESTATION$$Limit = ADDR(.TFM_SP_INITIAL_ATTESTATION) + SIZEOF(.TFM_SP_INITIAL_ATTESTATION);
    Image$$TFM_PSA_CODE_END$$Base = .;
    Image$$TFM_APP_CODE_START$$Base = .;
    Image$$TFM_APP_CODE_END$$Base = .;
    .ARM.extab :
    {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } > FLASH
    __exidx_start = .;
    .ARM.exidx :
    {
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
    } > FLASH
    __exidx_end = .;
    .ER_TFM_CODE : ALIGN(4)
    {
        *(.text*)
        KEEP(*(.init))
        KEEP(*(.fini))
        *crtbegin.o(.ctors)
        *crtbegin?.o(.ctors)
        *(EXCLUDE_FILE(*crtend?.o *crtend.o) .ctors)
        *(SORT(.ctors.*))
        *(.ctors)
         *crtbegin.o(.dtors)
         *crtbegin?.o(.dtors)
         *(EXCLUDE_FILE(*crtend?.o *crtend.o) .dtors)
         *(SORT(.dtors.*))
         *(.dtors)
        *(.rodata*)
        KEEP(*(.eh_frame*))
    } > FLASH
    .tfm_bl2_shared_data : ALIGN(32)
    {
        . += (0x400);
    } > RAM
    .msp_stack : ALIGN(32)
    {
        . += __msp_init_stack_size__;
    } > RAM
    Image$$ARM_LIB_STACK_MSP$$ZI$$Base = ADDR(.msp_stack);
    Image$$ARM_LIB_STACK_MSP$$ZI$$Limit = ADDR(.msp_stack) + SIZEOF(.msp_stack);
    .psp_stack : ALIGN(32)
    {
        . += __psp_stack_size__;
    } > RAM
    Image$$ARM_LIB_STACK$$ZI$$Base = ADDR(.psp_stack);
    Image$$ARM_LIB_STACK$$ZI$$Limit = ADDR(.psp_stack) + SIZEOF(.psp_stack);
    .TFM_UNPRIV_DATA : ALIGN(32)
    {
        */tfm_spm_services.o(.data*)
        */dummy_crypto_keys.o(.data*)
        */dummy_nv_counters.o(.data*)
        */dummy_boot_seed.o(.data*)
        */dummy_device_id.o(.data*)
        */platform_retarget_dev.o(.data*)
        */device_definition.o(.data*)
        . = ALIGN(32);
    } > RAM AT> FLASH
    Image$$TFM_UNPRIV_DATA$$RW$$Base = ADDR(.TFM_UNPRIV_DATA);
    Image$$TFM_UNPRIV_DATA$$RW$$Limit = ADDR(.TFM_UNPRIV_DATA) + SIZEOF(.TFM_UNPRIV_DATA);
    .TFM_UNPRIV_BSS : ALIGN(32)
    {
        */tfm_spm_services.o(.bss*)
        */platform_retarget_dev.o(.bss*)
        */device_definition.o(.bss*)
        */dummy_crypto_keys.o(.bss*)
        */dummy_nv_counters.o(.bss*)
        */dummy_boot_seed.o(.bss*)
        */dummy_device_id.o(.bss*)
        */tfm_spm_services.o(COMMON)
        */platform_retarget_dev.o(COMMON)
        */device_definition.o(COMMON)
        */dummy_crypto_keys.o(COMMON)
        */dummy_nv_counters.o(COMMON)
        */dummy_boot_seed.o(COMMON)
        */dummy_device_id.o(COMMON)
        . = ALIGN(32);
    } > RAM AT> RAM
    Image$$TFM_UNPRIV_DATA$$ZI$$Base = ADDR(.TFM_UNPRIV_BSS);
    Image$$TFM_UNPRIV_DATA$$ZI$$Limit = ADDR(.TFM_UNPRIV_BSS) + SIZEOF(.TFM_UNPRIV_BSS);
    Image$$TFM_PSA_RW_STACK_START$$Base = .;
    .TFM_SP_STORAGE_DATA : ALIGN(32)
    {
        *tfm_storage*:*(.data*)
        *(TFM_SP_STORAGE_ATTR_RW)
        . = ALIGN(32);
    } > RAM AT> FLASH
    Image$$TFM_SP_STORAGE_DATA$$RW$$Base = ADDR(.TFM_SP_STORAGE_DATA);
    Image$$TFM_SP_STORAGE_DATA$$RW$$Limit = ADDR(.TFM_SP_STORAGE_DATA) + SIZEOF(.TFM_SP_STORAGE_DATA);
    .TFM_SP_STORAGE_BSS : ALIGN(32)
    {
        start_of_TFM_SP_STORAGE = .;
        *tfm_storage*:*(.bss*)
        *tfm_storage*:*(COMMON)
        *(TFM_SP_STORAGE_ATTR_ZI)
        . += (. - start_of_TFM_SP_STORAGE) ? 0 : 4;
        . = ALIGN(32);
    } > RAM AT> RAM
    Image$$TFM_SP_STORAGE_DATA$$ZI$$Base = ADDR(.TFM_SP_STORAGE_BSS);
    Image$$TFM_SP_STORAGE_DATA$$ZI$$Limit = ADDR(.TFM_SP_STORAGE_BSS) + SIZEOF(.TFM_SP_STORAGE_BSS);
    .TFM_SP_STORAGE_STACK : ALIGN(128)
    {
        . += 0xA00;
    } > RAM
    Image$$TFM_SP_STORAGE_STACK$$ZI$$Base = ADDR(.TFM_SP_STORAGE_STACK);
    Image$$TFM_SP_STORAGE_STACK$$ZI$$Limit = ADDR(.TFM_SP_STORAGE_STACK) + SIZEOF(.TFM_SP_STORAGE_STACK);
    .TFM_SP_ITS_DATA : ALIGN(32)
    {
        *tfm_internal_trusted_storage*:*(.data*)
        *(TFM_SP_ITS_ATTR_RW)
        . = ALIGN(32);
    } > RAM AT> FLASH
    Image$$TFM_SP_ITS_DATA$$RW$$Base = ADDR(.TFM_SP_ITS_DATA);
    Image$$TFM_SP_ITS_DATA$$RW$$Limit = ADDR(.TFM_SP_ITS_DATA) + SIZEOF(.TFM_SP_ITS_DATA);
    .TFM_SP_ITS_BSS : ALIGN(32)
    {
        start_of_TFM_SP_ITS = .;
        *tfm_internal_trusted_storage*:*(.bss*)
        *tfm_internal_trusted_storage*:*(COMMON)
        *(TFM_SP_ITS_ATTR_ZI)
        . += (. - start_of_TFM_SP_ITS) ? 0 : 4;
        . = ALIGN(32);
    } > RAM AT> RAM
    Image$$TFM_SP_ITS_DATA$$ZI$$Base = ADDR(.TFM_SP_ITS_BSS);
    Image$$TFM_SP_ITS_DATA$$ZI$$Limit = ADDR(.TFM_SP_ITS_BSS) + SIZEOF(.TFM_SP_ITS_BSS);
    .TFM_SP_ITS_STACK : ALIGN(128)
    {
        . += 0x500;
    } > RAM
    Image$$TFM_SP_ITS_STACK$$ZI$$Base = ADDR(.TFM_SP_ITS_STACK);
    Image$$TFM_SP_ITS_STACK$$ZI$$Limit = ADDR(.TFM_SP_ITS_STACK) + SIZEOF(.TFM_SP_ITS_STACK);
    .TFM_SP_CRYPTO_DATA : ALIGN(32)
    {
        *tfm_crypto*:*(.data*)
        *(TFM_SP_CRYPTO_ATTR_RW)
        . = ALIGN(32);
    } > RAM AT> FLASH
    Image$$TFM_SP_CRYPTO_DATA$$RW$$Base = ADDR(.TFM_SP_CRYPTO_DATA);
    Image$$TFM_SP_CRYPTO_DATA$$RW$$Limit = ADDR(.TFM_SP_CRYPTO_DATA) + SIZEOF(.TFM_SP_CRYPTO_DATA);
    .TFM_SP_CRYPTO_BSS : ALIGN(32)
    {
        start_of_TFM_SP_CRYPTO = .;
        *tfm_crypto*:*(.bss*)
        *tfm_crypto*:*(COMMON)
        *(TFM_SP_CRYPTO_ATTR_ZI)
        . += (. - start_of_TFM_SP_CRYPTO) ? 0 : 4;
        . = ALIGN(32);
    } > RAM AT> RAM
    Image$$TFM_SP_CRYPTO_DATA$$ZI$$Base = ADDR(.TFM_SP_CRYPTO_BSS);
    Image$$TFM_SP_CRYPTO_DATA$$ZI$$Limit = ADDR(.TFM_SP_CRYPTO_BSS) + SIZEOF(.TFM_SP_CRYPTO_BSS);
    .TFM_SP_CRYPTO_STACK : ALIGN(128)
    {
        . += 0x2000;
    } > RAM
    Image$$TFM_SP_CRYPTO_STACK$$ZI$$Base = ADDR(.TFM_SP_CRYPTO_STACK);
    Image$$TFM_SP_CRYPTO_STACK$$ZI$$Limit = ADDR(.TFM_SP_CRYPTO_STACK) + SIZEOF(.TFM_SP_CRYPTO_STACK);
    .TFM_SP_INITIAL_ATTESTATION_DATA : ALIGN(32)
    {
        *tfm_attest*:*(.data*)
        *(TFM_SP_INITIAL_ATTESTATION_ATTR_RW)
        . = ALIGN(32);
    } > RAM AT> FLASH
    Image$$TFM_SP_INITIAL_ATTESTATION_DATA$$RW$$Base = ADDR(.TFM_SP_INITIAL_ATTESTATION_DATA);
    Image$$TFM_SP_INITIAL_ATTESTATION_DATA$$RW$$Limit = ADDR(.TFM_SP_INITIAL_ATTESTATION_DATA) + SIZEOF(.TFM_SP_INITIAL_ATTESTATION_DATA);
    .TFM_SP_INITIAL_ATTESTATION_BSS : ALIGN(32)
    {
        start_of_TFM_SP_INITIAL_ATTESTATION = .;
        *tfm_attest*:*(.bss*)
        *tfm_attest*:*(COMMON)
        *(TFM_SP_INITIAL_ATTESTATION_ATTR_ZI)
        . += (. - start_of_TFM_SP_INITIAL_ATTESTATION) ? 0 : 4;
        . = ALIGN(32);
    } > RAM AT> RAM
    Image$$TFM_SP_INITIAL_ATTESTATION_DATA$$ZI$$Base = ADDR(.TFM_SP_INITIAL_ATTESTATION_BSS);
    Image$$TFM_SP_INITIAL_ATTESTATION_DATA$$ZI$$Limit = ADDR(.TFM_SP_INITIAL_ATTESTATION_BSS) + SIZEOF(.TFM_SP_INITIAL_ATTESTATION_BSS);
    .TFM_SP_INITIAL_ATTESTATION_STACK : ALIGN(128)
    {
        . += 0x0A00;
    } > RAM
    Image$$TFM_SP_INITIAL_ATTESTATION_STACK$$ZI$$Base = ADDR(.TFM_SP_INITIAL_ATTESTATION_STACK);
    Image$$TFM_SP_INITIAL_ATTESTATION_STACK$$ZI$$Limit = ADDR(.TFM_SP_INITIAL_ATTESTATION_STACK) + SIZEOF(.TFM_SP_INITIAL_ATTESTATION_STACK);
    Image$$TFM_PSA_RW_STACK_END$$Base = .;
    Image$$TFM_APP_RW_STACK_START$$Base = .;
    Image$$TFM_APP_RW_STACK_END$$Base = .;
    .heap : ALIGN(8)
    {
        __end__ = .;
        PROVIDE(end = .);
        __HeapBase = .;
        . += __heap_size__;
        __HeapLimit = .;
        __heap_limit = .;
    } > RAM AT> RAM
    .TFM_DATA : ALIGN(4)
    {
        *(.data*)
        . = ALIGN(4);
        PROVIDE_HIDDEN (__preinit_array_start = .);
        KEEP(*(.preinit_array))
        PROVIDE_HIDDEN (__preinit_array_end = .);
        . = ALIGN(4);
        PROVIDE_HIDDEN (__init_array_start = .);
        KEEP(*(SORT(.init_array.*)))
        KEEP(*(.init_array))
        PROVIDE_HIDDEN (__init_array_end = .);
        . = ALIGN(4);
        PROVIDE_HIDDEN (__fini_array_start = .);
        KEEP(*(SORT(.fini_array.*)))
        KEEP(*(.fini_array))
        PROVIDE_HIDDEN (__fini_array_end = .);
        KEEP(*(.jcr*))
        . = ALIGN(4);
    } > RAM AT> FLASH
    Image$$ER_TFM_DATA$$RW$$Base = ADDR(.TFM_DATA);
    Image$$ER_TFM_DATA$$RW$$Limit = ADDR(.TFM_DATA) + SIZEOF(.TFM_DATA);
    .TFM_BSS : ALIGN(4)
    {
        __bss_start__ = .;
        *(.bss*)
        *(COMMON)
        . = ALIGN(4);
        __bss_end__ = .;
    } > RAM AT> RAM
    Image$$ER_TFM_DATA$$ZI$$Base = ADDR(.TFM_BSS);
    Image$$ER_TFM_DATA$$ZI$$Limit = ADDR(.TFM_BSS) + SIZEOF(.TFM_BSS);
    Image$$ER_TFM_DATA$$Base = ADDR(.TFM_DATA);
    Image$$ER_TFM_DATA$$Limit = ADDR(.TFM_DATA) + SIZEOF(.TFM_DATA) + SIZEOF(.TFM_BSS);
    .gnu.sgstubs : ALIGN(32)
    {
        *(.gnu.sgstubs*)
        . = ALIGN(32);
    } > VENEERS AT> VENEERS
    Load$$LR$$LR_VENEER$$Base = ADDR(.gnu.sgstubs);
    Load$$LR$$LR_VENEER$$Limit = ADDR(.gnu.sgstubs) + SIZEOF(.gnu.sgstubs);
    Load$$LR$$LR_NS_PARTITION$$Base = ((((((0x90000000))) + (((0) + (0x400))))));
    Load$$LR$$LR_SECONDARY_PARTITION$$Base = (((((0x90000000))) + ((((0x0000) + ((0x100000)))))));
    PROVIDE(__stack = Image$$ARM_LIB_STACK$$ZI$$Limit);
}
