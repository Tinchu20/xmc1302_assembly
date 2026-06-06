.equ		BASE_ADDR_NVM,                       0x40050000

.equ		OFFSET_NVM_NVMSTATUS,                0x0000
.equ		REG_ADDR_NVM_NVMSTATUS,              (BASE_ADDR_NVM + OFFSET_NVM_NVMSTATUS)
.equ		REG_NVM_NVMSTATUS_BIT_BUSY_POS,      0
.equ		REG_NVM_NVMSTATUS_BIT_BUSY_MASK,     0x00000001
.equ		REG_NVM_NVMSTATUS_BIT_SLEEP_POS,     1
.equ		REG_NVM_NVMSTATUS_BIT_SLEEP_MASK,    0x00000002
.equ		REG_NVM_NVMSTATUS_BIT_VERR_POS,      2
.equ		REG_NVM_NVMSTATUS_BIT_VERR_MASK,     0x0000000C
.equ		REG_NVM_NVMSTATUS_BIT_ECC1READ_POS,  4
.equ		REG_NVM_NVMSTATUS_BIT_ECC1READ_MASK, 0x00000010
.equ		REG_NVM_NVMSTATUS_BIT_ECC2READ_POS,  5
.equ		REG_NVM_NVMSTATUS_BIT_ECC2READ_MASK, 0x00000020
.equ		REG_NVM_NVMSTATUS_BIT_WRPERR_POS,    6
.equ		REG_NVM_NVMSTATUS_BIT_WRPERR_MASK,   0x00000040

.equ		OFFSET_NVM_NVMPROG,                  0x0004
.equ		REG_ADDR_NVM_NVMPROG,                (BASE_ADDR_NVM + OFFSET_NVM_NVMPROG)
.equ		REG_NVM_NVMPROG_BIT_ACTION_POS,      0
.equ		REG_NVM_NVMPROG_BIT_ACTION_MASK,     0x000000FF
.equ		REG_NVM_NVMPROG_BIT_RSTVERR_POS,     12
.equ		REG_NVM_NVMPROG_BIT_RSTVERR_MASK,    0x00001000
.equ		REG_NVM_NVMPROG_BIT_RSTECC_POS,      13
.equ		REG_NVM_NVMPROG_BIT_RSTECC_MASK,     0x00002000

.equ		OFFSET_NVM_NVMCONF,                  0x0008
.equ		REG_ADDR_NVM_NVMCONF,                (BASE_ADDR_NVM + OFFSET_NVM_NVMCONF)
.equ		REG_NVM_NVMCONF_BIT_HRLEV_POS,       1
.equ		REG_NVM_NVMCONF_BIT_HRLEV_MASK,      0x00000006
.equ		REG_NVM_NVMCONF_BIT_SECPROT_POS,     4
.equ		REG_NVM_NVMCONF_BIT_SECPROT_MASK,    0x00000FF0
.equ		REG_NVM_NVMCONF_BIT_WS_POS,          12
.equ		REG_NVM_NVMCONF_BIT_WS_MASK,         0x00001000
.equ		REG_NVM_NVMCONF_BIT_INT_ON_POS,      14
.equ		REG_NVM_NVMCONF_BIT_INT_ON_MASK,     0x00004000
.equ		REG_NVM_NVMCONF_BIT_NVM_ON_POS,      15
.equ		REG_NVM_NVMCONF_BIT_NVM_ON_MASK,     0x00008000

.equ		OFFSET_NVM_CONFIG1,                  0x0048
.equ		REG_ADDR_NVM_CONFIG1,                (BASE_ADDR_NVM + OFFSET_NVM_CONFIG1)
.equ		REG_NVM_CONFIG1_BIT_FIXWS_POS,       11
.equ		REG_NVM_CONFIG1_BIT_FIXWS_MASK,      0x00000800

            .syntax         unified
            .cpu            cortex-m0
            .thumb
            .align          1
            .section        .text
            .thumb_func
            .global         sys_core_setup
            .type           sys_core_setup, %function
            .global         sys_core_clk_setup
            .type           sys_core_clk_setup, %function

sys_core_setup :
            ldr         r4, =REG_ADDR_NVM_NVMCONF
            ldr         r5, [r4]
            ldr         r6, =REG_NVM_NVMCONF_BIT_WS_MASK
            orrs        r5, r6
            str         r5, [r4]
            ldr         r4, =REG_ADDR_NVM_CONFIG1
            ldr         r5, [r4]
            ldr         r6, =REG_NVM_CONFIG1_BIT_FIXWS_MASK
            orrs        r5, r6
            str         r5, [r4]
            bx          lr

/**
 **********************************************************************************************************************
 * End of the File
 **********************************************************************************************************************
 */
            .end

