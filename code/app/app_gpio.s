            .syntax         unified
            .cpu            cortex-m0
            .thumb
            .align          1
            .section        .text
            .thumb_func
            .globl          app_gpio_init
            .type           app_gpio_init, %function


app_gpio_init:
            push            {lr}

            movs            r0, #GPIO_PORT_0
            movs            r1, #GPIO_PORT_PIN_0
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_SET
            bl              gpio_init

            movs            r0, #GPIO_PORT_0
            movs            r1, #GPIO_PORT_PIN_1
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_SET
            bl              gpio_init

            movs            r0, #GPIO_PORT_0
            movs            r1, #GPIO_PORT_PIN_6
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_RESET
            bl              gpio_init

            movs            r0, #GPIO_PORT_0
            movs            r1, #GPIO_PORT_PIN_7
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_RESET
            bl              gpio_init


            movs            r0, #GPIO_PORT_0
            movs            r1, #GPIO_PORT_PIN_8
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_RESET
            bl              gpio_init

            movs            r0, #GPIO_PORT_0
            movs            r1, #GPIO_PORT_PIN_9
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_RESET
            bl              gpio_init

            movs            r0, #GPIO_PORT_0
            movs            r1, #GPIO_PORT_PIN_13
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_RESET
            bl              gpio_init

            movs            r0, #GPIO_PORT_1
            movs            r1, #GPIO_PORT_PIN_5
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_SET
            bl              gpio_init

            movs            r0, #GPIO_PORT_2
            movs            r1, #GPIO_PORT_PIN_10
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_SET
            bl              gpio_init

            movs            r0, #GPIO_PORT_1
            movs            r1, #GPIO_PORT_PIN_3
            movs            r2, #GPIO_PIN_PCX_OUT_PP_GP
            movs            r3, #GPIO_PORT_PIN_OUTPUT_LEVEL_RESET
            bl              gpio_init

            pop             {pc}

            .include        "reg_gpio.inc"

            .end
