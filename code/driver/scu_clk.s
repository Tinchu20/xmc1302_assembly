.equ		BASE_ADDR_SCU_CLK,                     0x40010300

.equ		OFFSET_SCU_CLK_CLKCR,                  0x0000
.equ		REG_ADDR_SCU_CLK_CLKCR,                (BASE_ADDR_SCU_CLK + OFFSET_SCU_CLK_CLKCR)
.equ		REG_SCU_CLK_CLKCR_BIT_FDIV_POS,        0
.equ		REG_SCU_CLK_CLKCR_BIT_FDIV_MASK,       0x000000FF
.equ		REG_SCU_CLK_CLKCR_BIT_IDIV_POS,        8
.equ		REG_SCU_CLK_CLKCR_BIT_IDIV_MASK,       0x0000FF00
.equ		REG_SCU_CLK_CLKCR_BIT_PCLKSEL_POS,     16
.equ		REG_SCU_CLK_CLKCR_BIT_PCLKSEL_MASK,    0x00010000
.equ		REG_SCU_CLK_CLKCR_BIT_RTCCLKSEL_POS,   17
.equ		REG_SCU_CLK_CLKCR_BIT_RTCCLKSEL_MASK,  0x000E0000
.equ		REG_SCU_CLK_CLKCR_BIT_CNTADJ_POS,      20
.equ		REG_SCU_CLK_CLKCR_BIT_CNTADJ_MASK,     0x3FF00000
.equ		REG_SCU_CLK_CLKCR_BIT_VDDC2LOW_POS,    30
.equ		REG_SCU_CLK_CLKCR_BIT_VDDC2LOW_MASK,   0x40000000
.equ		REG_SCU_CLK_CLKCR_BIT_VDDC2HIGH_POS,   31
.equ		REG_SCU_CLK_CLKCR_BIT_VDDC2HIGH_MASK,  0x80000000

.equ		OFFSET_SCU_CLK_PWRSVCR,                0x0004
.equ		REG_ADDR_SCU_CLK_PWRSVCR,              (BASE_ADDR_SCU_CLK + OFFSET_SCU_CLK_PWRSVCR)
.equ		REG_SCU_CLK_PWRSVCR_BIT_FPD_POS,       0
.equ		REG_SCU_CLK_PWRSVCR_BIT_FPD_MASK,      0x00000001

.equ		OFFSET_SCU_CLK_CGATSTAT0,              0x0008
.equ		REG_ADDR_SCU_CLK_CGATSTAT0,            (BASE_ADDR_SCU_CLK + OFFSET_SCU_CLK_CGATSTAT0)
.equ		REG_SCU_CLK_CGATSTAT0_BIT_VADC_POS,    0
.equ		REG_SCU_CLK_CGATSTAT0_BIT_VADC_MASK,   0x00000001
.equ		REG_SCU_CLK_CGATSTAT0_BIT_CCU80_POS,   1
.equ		REG_SCU_CLK_CGATSTAT0_BIT_CCU80_MASK,  0x00000002
.equ		REG_SCU_CLK_CGATSTAT0_BIT_CCU40_POS,   2
.equ		REG_SCU_CLK_CGATSTAT0_BIT_CCU40_MASK,  0x00000004
.equ		REG_SCU_CLK_CGATSTAT0_BIT_USIC0_POS,   3
.equ		REG_SCU_CLK_CGATSTAT0_BIT_USIC0_MASK,  0x00000008
.equ		REG_SCU_CLK_CGATSTAT0_BIT_BCCU0_POS,   4
.equ		REG_SCU_CLK_CGATSTAT0_BIT_BCCU0_MASK,  0x00000010
.equ		REG_SCU_CLK_CGATSTAT0_BIT_POSIF0_POS,  7
.equ		REG_SCU_CLK_CGATSTAT0_BIT_POSIF0_MASK, 0x00000080
.equ		REG_SCU_CLK_CGATSTAT0_BIT_MATH_POS,    8
.equ		REG_SCU_CLK_CGATSTAT0_BIT_MATH_MASK,   0x00000100
.equ		REG_SCU_CLK_CGATSTAT0_BIT_WDT_POS,     9
.equ		REG_SCU_CLK_CGATSTAT0_BIT_WDT_MASK,    0x00000200
.equ		REG_SCU_CLK_CGATSTAT0_BIT_RTC_POS,     10
.equ		REG_SCU_CLK_CGATSTAT0_BIT_RTC_MASK,    0x00000400

.equ		OFFSET_SCU_CLK_CGATSET0,               0x000C
.equ		REG_ADDR_SCU_CLK_CGATSET0,             (BASE_ADDR_SCU_CLK + OFFSET_SCU_CLK_CGATSET0)
.equ		REG_SCU_CLK_CGATSET0_BIT_VADC_POS,     0
.equ		REG_SCU_CLK_CGATSET0_BIT_VADC_MASK,    0x00000001
.equ		REG_SCU_CLK_CGATSET0_BIT_CCU80_POS,    1
.equ		REG_SCU_CLK_CGATSET0_BIT_CCU80_MASK,   0x00000002
.equ		REG_SCU_CLK_CGATSET0_BIT_CCU40_POS,    2
.equ		REG_SCU_CLK_CGATSET0_BIT_CCU40_MASK,   0x00000004
.equ		REG_SCU_CLK_CGATSET0_BIT_USIC0_POS,    3
.equ		REG_SCU_CLK_CGATSET0_BIT_USIC0_MASK,   0x00000008
.equ		REG_SCU_CLK_CGATSET0_BIT_BCCU0_POS,    4
.equ		REG_SCU_CLK_CGATSET0_BIT_BCCU0_MASK,   0x00000010
.equ		REG_SCU_CLK_CGATSET0_BIT_POSIF0_POS,   7
.equ		REG_SCU_CLK_CGATSET0_BIT_POSIF0_MASK,  0x00000080
.equ		REG_SCU_CLK_CGATSET0_BIT_MATH_POS,     8
.equ		REG_SCU_CLK_CGATSET0_BIT_MATH_MASK,    0x00000100
.equ		REG_SCU_CLK_CGATSET0_BIT_WDT_POS,      9
.equ		REG_SCU_CLK_CGATSET0_BIT_WDT_MASK,     0x00000200
.equ		REG_SCU_CLK_CGATSET0_BIT_RTC_POS,      10
.equ		REG_SCU_CLK_CGATSET0_BIT_RTC_MASK,     0x00000400

.equ		OFFSET_SCU_CLK_CGATCLR0,               0x0010
.equ		REG_ADDR_SCU_CLK_CGATCLR0,             (BASE_ADDR_SCU_CLK + OFFSET_SCU_CLK_CGATCLR0)
.equ		REG_SCU_CLK_CGATCLR0_BIT_VADC_POS,     0
.equ		REG_SCU_CLK_CGATCLR0_BIT_VADC_MASK,    0x00000001
.equ		REG_SCU_CLK_CGATCLR0_BIT_CCU80_POS,    1
.equ		REG_SCU_CLK_CGATCLR0_BIT_CCU80_MASK,   0x00000002
.equ		REG_SCU_CLK_CGATCLR0_BIT_CCU40_POS,    2
.equ		REG_SCU_CLK_CGATCLR0_BIT_CCU40_MASK,   0x00000004
.equ		REG_SCU_CLK_CGATCLR0_BIT_USIC0_POS,    3
.equ		REG_SCU_CLK_CGATCLR0_BIT_USIC0_MASK,   0x00000008
.equ		REG_SCU_CLK_CGATCLR0_BIT_BCCU0_POS,    4
.equ		REG_SCU_CLK_CGATCLR0_BIT_BCCU0_MASK,   0x00000010
.equ		REG_SCU_CLK_CGATCLR0_BIT_POSIF0_POS,   7
.equ		REG_SCU_CLK_CGATCLR0_BIT_POSIF0_MASK,  0x00000080
.equ		REG_SCU_CLK_CGATCLR0_BIT_MATH_POS,     8
.equ		REG_SCU_CLK_CGATCLR0_BIT_MATH_MASK,    0x00000100
.equ		REG_SCU_CLK_CGATCLR0_BIT_WDT_POS,      9
.equ		REG_SCU_CLK_CGATCLR0_BIT_WDT_MASK,     0x00000200
.equ		REG_SCU_CLK_CGATCLR0_BIT_RTC_POS,      10
.equ		REG_SCU_CLK_CGATCLR0_BIT_RTC_MASK,     0x00000400

.equ		OFFSET_SCU_CLK_OSCCSR,                 0x0014
.equ		REG_ADDR_SCU_CLK_OSCCSR,               (BASE_ADDR_SCU_CLK + OFFSET_SCU_CLK_OSCCSR)
.equ		REG_SCU_CLK_OSCCSR_BIT_OSC2L_POS,      0
.equ		REG_SCU_CLK_OSCCSR_BIT_OSC2L_MASK,     0x00000001
.equ		REG_SCU_CLK_OSCCSR_BIT_OSC2H_POS,      1
.equ		REG_SCU_CLK_OSCCSR_BIT_OSC2H_MASK,     0x00000002
.equ		REG_SCU_CLK_OSCCSR_BIT_OWDRES_POS,     16
.equ		REG_SCU_CLK_OSCCSR_BIT_OWDRES_MASK,    0x00010000
.equ		REG_SCU_CLK_OSCCSR_BIT_OWDEN_POS,      17
.equ		REG_SCU_CLK_OSCCSR_BIT_OWDEN_MASK,     0x00020000

.equ        REG_SCU_CLK_CLKCR_DATA,                0x3FF10100
.equ 		DCO1_FREQ, 				               6400000

            .syntax         unified
            .cpu            cortex-m0
            .thumb
            .align          1
            .section        .text
            .thumb_func
            .global         sys_core_clk_setup
            .type           sys_core_clk_setup, %function

sys_core_clk_setup:
            push        {lr}
            bl          scu_gen_bit_prot_disable
            ldr         r4, =REG_ADDR_SCU_CLK_CLKCR
            ldr         r5, =REG_SCU_CLK_CLKCR_DATA
            str         r5, [r4]

sys_core_clk_setup_clkcr_bit_chkL:
            ldr         r5, [r4]
            ldr         r6, =REG_SCU_CLK_CLKCR_BIT_VDDC2LOW_MASK
            tst         r5, r6
            bne         sys_core_clk_setup_clkcr_bit_chkL
            bl          scu_gen_bit_prot_enable
            ldr         r4, =REG_ADDR_SCU_CLK_CLKCR
            ldr         r5, [r4]
            ldr         r6, =REG_SCU_CLK_CLKCR_BIT_IDIV_MASK
            ands        r6, r5
            lsrs        r6, r6, #REG_SCU_CLK_CLKCR_BIT_IDIV_POS
            ldr         r7, =REG_SCU_CLK_CLKCR_BIT_FDIV_MASK
            ands        r7, r5
            lsrs        r7, r7, #REG_SCU_CLK_CLKCR_BIT_FDIV_POS
            cmp         r6, #0
            beq         sys_core_clk_setup_idiv_is_zeroL
            ldr         r4, =DCO1_FREQ
            lsls        r4, r4, #6
            lsls        r6, r6, #8
            adds        r6, r7
            movs        r0, r4
            movs        r1, r6
            bl          udiv
            lsls        r0, r0, #1
            ldr         r4, =SystemCoreClock
            str         r0, [r4]
            pop         {pc}

sys_core_clk_setup_idiv_is_zeroL:
            lsrs        r4, r4, #1
            ldr         r5, =SystemCoreClock
            str         r4, [r5]
            pop         {pc}

            .data
            .globl      SystemCoreClock
SystemCoreClock:
            .word       0

/**
 **********************************************************************************************************************
 * End of the File
 **********************************************************************************************************************
 */
            .end

