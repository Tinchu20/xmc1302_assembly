
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

            movs        r0, #GPIO_PORT_0
            movs        r1, #GPIO_PORT_PIN_5
            movs        r2, #GPIO_PIN_PCX_OUT_PP_GP
            bl          gpio_init


            movs        r0, #GPIO_PORT_1
            movs        r1, #GPIO_PORT_PIN_11
            movs        r2, #GPIO_PIN_PCX_OUT_PP_GP
            bl          gpio_init

            movs        r0, #GPIO_PORT_2
            movs        r1, #GPIO_PORT_PIN_14
            movs        r2, #GPIO_PIN_PCX_OUT_PP_GP
            bl          gpio_init


            movs        r0, #GPIO_PORT_1
            movs        r1, #GPIO_PORT_PIN_9
            movs        r2, #GPIO_PIN_PCX_OUT_PP_GP
            bl          gpio_init


            bl          led

            bl          led_blinking

            bx          lr
            .size       main, .-main

            .include        "reg_gpio.inc"

            .end

