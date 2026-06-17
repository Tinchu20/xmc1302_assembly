
            .syntax         unified
            .cpu            cortex-m0
            .thumb
            .align          1
            .section        .text
            .thumb_func
            .globl          main
            .type           main, %function


main:
            movs        r0, #1
            //ldr         r0, =7645
            //ldr         r1, =53
            ldr         r0, =697651
            ldr         r1, =443
            bl          udiv

            ldr         r0, =0xFFFFFFFF
            ldr         r1, =57
            bl          udiv

            bl          app_gpio_init


            bx          lr

            .size       main, .-main

            .include        "reg_gpio.inc"

            .end

