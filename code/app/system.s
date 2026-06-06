            .syntax     unified
            .cpu        cortex-m0
            .thumb
            .align      1
            .section    .text
            .thumb_func
            .globl      SystemInit
            .type       SystemInit, %function

SystemInit :
            push        {lr}
            bl          sys_core_setup
            bl          sys_core_clk_setup
            pop         {pc}

           .end
