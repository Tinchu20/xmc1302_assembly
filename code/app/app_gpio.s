            .syntax         unified
            .cpu            cortex-m0
            .thumb
            .align          1
            .section        .text
            .thumb_func
            .globl          led
            .type           led, %function


led:
            bx          lr

            .include        "reg_gpio.inc"

            .end
