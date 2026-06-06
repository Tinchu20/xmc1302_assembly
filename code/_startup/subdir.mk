DIR_STARTUP = $(DIR_CODE)/_startup

ASM_SRC_STARTUP     = $(shell find $(DIR_STARTUP) -iname "*.s")
DIR_ASM_SRC_STARTUP = $(patsubst %/, %, $(sort $(dir $(ASM_SRC_STARTUP))))
ASM_OBJ_STARTUP     = $(patsubst $(DIR_CODE)/%.s, $(DIR_OBJ)/%.o, $(ASM_SRC_STARTUP))
DIR_ASM_OBJ_STARTUP = $(patsubst %/, %, $(sort $(dir $(ASM_OBJ_STARTUP))))

$(DIR_ASM_OBJ_STARTUP)/%.o : $(DIR_ASM_SRC_STARTUP)/%.s
	@if [ ! -d $(dir $@) ]; then 			\
		$(MKDIR) $(dir $@);			\
	fi
	@echo
	$(ARM_GCC) $(CFLAGS) $(DEBUG) $(CPU_TYPE) $(MTHUMB) $(ASM_CPP) $(DEP) -c $< -o $@
