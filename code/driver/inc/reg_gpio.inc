.ifndef     __REG_GPIO_INC__
.equ        __REG_GPIO_INC__,               1
.equ        REG_PORT_IOCR_POS,              3

/**
 **********************************************************************************************************************
 * @brief : XMC1300 GPIO – Standard PCx[4:0] Coding PCx field is bits [4:0] of the IOCR register
 *        : Use - shifted left by 3 when writing to IOCRx
 **********************************************************************************************************************
 */

/* Direct Input */
.equ GPIO_PIN_PCX_IN_NO_PULL,           0x00   /* 00000b – No pull device                 */
.equ GPIO_PIN_PCX_IN_PULL_DOWN,         0x01   /* 00001b – Pull-down active               */
.equ GPIO_PIN_PCX_IN_PULL_UP,           0x02   /* 00010b – Pull-up active                 */
.equ GPIO_PIN_PCX_IN_CONT_SAMPLE,       0x03   /* 00011b – No pull; Pn_OUTx samples input */

/* Inverted Input */
.equ GPIO_PIN_PCX_INV_NO_PULL,          0x04   /* 00100b – No pull device */
.equ GPIO_PIN_PCX_INV_PULL_DOWN,        0x05   /* 00101b – Pull-down active */
.equ GPIO_PIN_PCX_INV_PULL_UP,          0x06   /* 00110b – Pull-up active */
.equ GPIO_PIN_PCX_INV_CONT_SAMPLE,      0x07   /* 00111b – No pull; Pn_OUTx samples input */

/* Output – Push-Pull */
.equ GPIO_PIN_PCX_OUT_PP_GP,            0x10   /* 10000b – General-purpose output */
.equ GPIO_PIN_PCX_OUT_PP_AF1,           0x11   /* 10001b – Alternate function 1 */
.equ GPIO_PIN_PCX_OUT_PP_AF2,           0x12   /* 10010b – Alternate function 2 */
.equ GPIO_PIN_PCX_OUT_PP_AF3,           0x13   /* 10011b – Alternate function 3 */
.equ GPIO_PIN_PCX_OUT_PP_AF4,           0x14   /* 10100b – Alternate function 4 */
.equ GPIO_PIN_PCX_OUT_PP_AF5,           0x15   /* 10101b – Alternate function 5 */
.equ GPIO_PIN_PCX_OUT_PP_AF6,           0x16   /* 10110b – Alternate function 6 */
.equ GPIO_PIN_PCX_OUT_PP_AF7,           0x17   /* 10111b – Alternate function 7 */

/* Output – Open-Drain */
.equ GPIO_PIN_PCX_OUT_OD_GP,            0x18   /* 11000b – General-purpose output */
.equ GPIO_PIN_PCX_OUT_OD_AF1,           0x19   /* 11001b – Alternate function 1 */
.equ GPIO_PIN_PCX_OUT_OD_AF2,           0x1A   /* 11010b – Alternate function 2 */
.equ GPIO_PIN_PCX_OUT_OD_AF3,           0x1B   /* 11011b – Alternate function 3 */
.equ GPIO_PIN_PCX_OUT_OD_AF4,           0x1C   /* 11100b – Alternate function 4 */
.equ GPIO_PIN_PCX_OUT_OD_AF5,           0x1D   /* 11101b – Alternate function 5 */
.equ GPIO_PIN_PCX_OUT_OD_AF6,           0x1E   /* 11110b – Alternate function 6 */
.equ GPIO_PIN_PCX_OUT_OD_AF7,           0x1F   /* 11111b – Alternate function 7 */

/**
 **********************************************************************************************************************
 * @brief : XMC1300 GPIO – output level set/reset
 **********************************************************************************************************************
 */

//.equ GPIO_PORT_PIN_OUTPUT_LEVEL_RESET,  0x10000
//.equ GPIO_PORT_PIN_OUTPUT_LEVEL_SET,    0x01

.equ GPIO_PORT_PIN_OUTPUT_LEVEL_SET,        0
.equ GPIO_PORT_PIN_OUTPUT_LEVEL_RESET,      1
.equ GPIO_PORT_PIN_OUTPUT_LEVEL_TOGGLE,     2

/**
 **********************************************************************************************************************
 * @brief : XMC1300 GPIO – PORTS
 **********************************************************************************************************************
 */

.equ GPIO_PORT_0,                       0
.equ GPIO_PORT_1,                       1
.equ GPIO_PORT_2,                       2

/**
 **********************************************************************************************************************
 * @brief : XMC1300 GPIO – PORTS PIN
 **********************************************************************************************************************
 */

.equ GPIO_PORT_PIN_0,                   0
.equ GPIO_PORT_PIN_1,                   1
.equ GPIO_PORT_PIN_2,                   2
.equ GPIO_PORT_PIN_3,                   3
.equ GPIO_PORT_PIN_4,                   4
.equ GPIO_PORT_PIN_5,                   5
.equ GPIO_PORT_PIN_6,                   6
.equ GPIO_PORT_PIN_7,                   7
.equ GPIO_PORT_PIN_8,                   8
.equ GPIO_PORT_PIN_9,                   9
.equ GPIO_PORT_PIN_10,                  10
.equ GPIO_PORT_PIN_11,                  11
.equ GPIO_PORT_PIN_12,                  12
.equ GPIO_PORT_PIN_13,                  13
.equ GPIO_PORT_PIN_14,                  14
.equ GPIO_PORT_PIN_15,                  15

.endif
