ARM_NONE_EABI = arm-none-eabi
ARM_GCC       = $(ARM_NONE_EABI)-gcc
ARM_AS        = $(ARM_NONE_EABI)-as
ARM_LD        = $(ARM_NONE_EABI)-ld
ARM_OBJCOPY   = $(ARM_NONE_EABI)-objcopy
ARM_OBJDUMP   = $(ARM_NONE_EABI)-objdump
ARM_SIZE      = $(ARM_NONE_EABI)-size

CPU_TYPE      = -mcpu=cortex-m0
MTHUMB        = -mthumb
DEP           = -MMD -MP -MF $(@:.o=.d)
OPTIMIZATION  = -O0
DEBUG         = -g $(OPTIMIZATION)
CFLAGS        = -Wall -Werror
ASM_CPP       = -x assembler-with-cpp
