.equ		BASE_ADDR_SCU_GENERAL,                      0x40010000

.equ		OFFSET_SCU_GENERAL_DBGROMID,                0x0000
.equ		REG_ADDR_SCU_GENERAL_DBGROMID,              (BASE_ADDR_SCU_GENERAL + OFFSET_SCU_GENERAL_DBGROMID)
.equ		REG_SCU_GENERAL_DBGROMID_BIT_MANUFID_POS,   1
.equ		REG_SCU_GENERAL_DBGROMID_BIT_MANUFID_MASK,  0x00000FFE
.equ		REG_SCU_GENERAL_DBGROMID_BIT_PARTNO_POS,    12
.equ		REG_SCU_GENERAL_DBGROMID_BIT_PARTNO_MASK,   0x0FFFF000
.equ		REG_SCU_GENERAL_DBGROMID_BIT_VERSION_POS,   28
.equ		REG_SCU_GENERAL_DBGROMID_BIT_VERSION_MASK,  0xF0000000

.equ		OFFSET_SCU_GENERAL_IDCHIP,                  0x0004
.equ		REG_ADDR_SCU_GENERAL_IDCHIP,                (BASE_ADDR_SCU_GENERAL + OFFSET_SCU_GENERAL_IDCHIP)
.equ		REG_SCU_GENERAL_IDCHIP_BIT_IDCHIP_POS,      0
.equ		REG_SCU_GENERAL_IDCHIP_BIT_IDCHIP_MASK,     0xFFFFFFFF

.equ		OFFSET_SCU_GENERAL_ID,                      0x0008
.equ		REG_ADDR_SCU_GENERAL_ID,                    (BASE_ADDR_SCU_GENERAL + OFFSET_SCU_GENERAL_ID)
.equ		REG_SCU_GENERAL_ID_BIT_MOD_REV_POS,         0
.equ		REG_SCU_GENERAL_ID_BIT_MOD_REV_MASK,        0x000000FF
.equ		REG_SCU_GENERAL_ID_BIT_MOD_TYPE_POS,        8
.equ		REG_SCU_GENERAL_ID_BIT_MOD_TYPE_MASK,       0x0000FF00
.equ		REG_SCU_GENERAL_ID_BIT_MOD_NUMBER_POS,      16
.equ		REG_SCU_GENERAL_ID_BIT_MOD_NUMBER_MASK,     0xFFFF0000

.equ		OFFSET_SCU_GENERAL_SSW0,                    0x0014
.equ		REG_ADDR_SCU_GENERAL_SSW0,                  (BASE_ADDR_SCU_GENERAL + OFFSET_SCU_GENERAL_SSW0)
.equ		REG_SCU_GENERAL_SSW0_BIT_DAT_POS,           0
.equ		REG_SCU_GENERAL_SSW0_BIT_DAT_MASK,          0xFFFFFFFF

.equ		OFFSET_SCU_GENERAL_PASSWD,                  0x0024
.equ		REG_ADDR_SCU_GENERAL_PASSWD,                (BASE_ADDR_SCU_GENERAL + OFFSET_SCU_GENERAL_PASSWD)
.equ		REG_SCU_GENERAL_PASSWD_BIT_MODE_POS,        0
.equ		REG_SCU_GENERAL_PASSWD_BIT_MODE_MASK,       0x00000003
.equ		REG_SCU_GENERAL_PASSWD_BIT_PROTS_POS,       2
.equ		REG_SCU_GENERAL_PASSWD_BIT_PROTS_MASK,      0x00000004
.equ		REG_SCU_GENERAL_PASSWD_BIT_PASS_POS,        3
.equ		REG_SCU_GENERAL_PASSWD_BIT_PASS_MASK,       0x000000F8

.equ		OFFSET_SCU_GENERAL_CCUCON,                  0x0030
.equ		REG_ADDR_SCU_GENERAL_CCUCON,                (BASE_ADDR_SCU_GENERAL + OFFSET_SCU_GENERAL_CCUCON)
.equ		REG_SCU_GENERAL_CCUCON_BIT_GSC40_POS,       0
.equ		REG_SCU_GENERAL_CCUCON_BIT_GSC40_MASK,      0x00000001
.equ		REG_SCU_GENERAL_CCUCON_BIT_GSC80_POS,       8
.equ		REG_SCU_GENERAL_CCUCON_BIT_GSC80_MASK,      0x00000100

.equ		OFFSET_SCU_GENERAL_MIRRSTS,                 0x0048
.equ		REG_ADDR_SCU_GENERAL_MIRRSTS,               (BASE_ADDR_SCU_GENERAL + OFFSET_SCU_GENERAL_MIRRSTS)
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_CTR_POS,    0
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_CTR_MASK,   0x00000001
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_ATIM0_POS,  1
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_ATIM0_MASK, 0x00000002
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_ATIM1_POS,  2
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_ATIM1_MASK, 0x00000004
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_TIM0_POS,   3
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_TIM0_MASK,  0x00000008
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_TIM1_POS,   4
.equ		REG_SCU_GENERAL_MIRRSTS_BIT_RTC_TIM1_MASK,  0x00000010

.equ		OFFSET_SCU_GENERAL_PMTSR,                   0x0054
.equ		REG_ADDR_SCU_GENERAL_PMTSR,                 (BASE_ADDR_SCU_GENERAL + OFFSET_SCU_GENERAL_PMTSR)
.equ		REG_SCU_GENERAL_PMTSR_BIT_MTENS_POS,        0
.equ		REG_SCU_GENERAL_PMTSR_BIT_MTENS_MASK,       0x00000001

.equ 		REG_SCU_GEN_PASSWD_BIT_PROT_DISABLE_MASK,	0x000000C0
.equ 		REG_SCU_GEN_PASSWD_BIT_PROT_ENABLE_MASK,	0x000000C3

            .syntax         unified
            .cpu            cortex-m0
            .thumb
            .align          1
            .section        .text
            .thumb_func
            .globl          scu_gen_bit_prot_disable
            .globl          scu_gen_bit_prot_enable
            .type           scu_gen_bit_prot_disable, %function
            .type           scu_gen_bit_prot_enable,  %function

scu_gen_bit_prot_disable:
            ldr     r4, =REG_ADDR_SCU_GENERAL_PASSWD
            ldr     r5, =REG_SCU_GEN_PASSWD_BIT_PROT_DISABLE_MASK
            str     r5, [r4]
            bx      lr

scu_gen_bit_prot_enable:
            ldr     r4, =REG_ADDR_SCU_GENERAL_PASSWD
            ldr     r5, =REG_SCU_GEN_PASSWD_BIT_PROT_ENABLE_MASK
            str     r5, [r4]
            bx      lr


/**
 **********************************************************************************************************************
 * End of the File
 **********************************************************************************************************************
 */
            .end
