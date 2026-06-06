            .syntax         unified
            .cpu            cortex-m0
            .thumb
            .align          1
            .section        .text
            .thumb_func
            .globl          sdiv
            .type           sdiv, %function
            .globl          udiv
            .type           udiv, %function

/**
 **********************************************************************************************************************
 * @brief       : Signed Division
 *
 * @param[in]   : r0 - Dividend,
 *              : r1 : Divisor
 *
 * @param[out]  :
 *
 * @retval      : r0 - Quotient,
 *              : r1 - Remainder
 **********************************************************************************************************************
 */

sdiv:
            bx          lr

/**
 **********************************************************************************************************************
 * @brief       : Unsigned Division
 *
 * @param[in]   : r0 - Dividend,
 *              : r1 : Divisor
 *
 * @param[out]  :
 *
 * @retval      : r0 - Quotient,
 *              : r1 - Remainder
 **********************************************************************************************************************
 */

udiv:
            push        {r2-r6, lr}
            cmp         r0, #0
            beq         udiv_dividend_zeroL
            cmp         r1, #0
            beq         udiv_divisor_zeroL
            cmp         r1, r0
            bhi         udiv_divisor_gt_dividendL
            cmp         r0, r1
            beq         udiv_divisor_eq_dividendL
            cmp         r1, #1
            beq         udiv_divisor_is_1L

udiv_divisor_pow2_chkL:
            mov         r2, r0
            subs        r3, r1, #1
            tst         r1, r3
            bne         udiv_divisor_not_pow2L
            movs        r3, r1
            movs        r4, #0
udiv_divisor_rshiftL:
            lsrs        r3, r3, #1
            bcs         udiv_divisor_pow2_doneL
            adds        r4, #1
            b           udiv_divisor_rshiftL
udiv_divisor_pow2_doneL:
            mov         r2, r0
            subs        r3, r1, #1
            lsrs        r0, r0, r4
            ands        r2, r3
            movs        r1, r2
            pop         {r2-r6, pc} /* return from the function */

udiv_divisor_not_pow2L:
            mov         r2, r0
            mov         r3, r1
            movs        r4, #0
            movs        r5, #0
            movs        r6, #1

udiv_divisor_lshiftL:
            lsls        r3, r3, #1
            bcs         udiv_overflowL
            adds        r4, #1
            cmp         r2, r3
            bhi         udiv_divisor_lshiftL
            lsrs        r3, r3, #1
            subs        r4, #1
udiv_divisor_subL:
            lsls        r6, r6, r4
            adds        r5, r5, r6
            subs        r2, r2, r3
            cmp         r2, r1
            blo         udiv_returnL
            movs        r3, r1
            movs        r4, #0
            movs        r6, #1
            b           udiv_divisor_lshiftL
udiv_overflowL:
            lsrs        r3, r3, #1
            movs        r6, #1
            lsls        r6, r6, #31
            orrs        r3, r3, r6
            movs        r6, #1
            b           udiv_divisor_subL
udiv_returnL:
            movs        r0, r5
            movs        r1, r2
            pop         {r2-r6, pc} /* return from the function */

udiv_dividend_zeroL:
udiv_divisor_zeroL:
udiv_divisor_gt_dividendL:
            movs        r0, #0
            movs        r1, #0
            pop         {r2-r6, pc} /* return from the function */

udiv_divisor_eq_dividendL:
            movs        r0, #1
            movs        r1, #0
            pop         {r2-r6, pc} /* return from the function */

udiv_divisor_is_1L:
            movs        r1, #0
            pop         {r2-r6, pc} /* return from the function */

/**
 **********************************************************************************************************************
 * End of the File
 **********************************************************************************************************************
 */
            .end
