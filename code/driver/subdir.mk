DIR_DRIVER = $(DIR_CODE)/driver

ASM_SRC_DRIVER     = $(shell find $(DIR_DRIVER) -iname "*.s")
DIR_ASM_SRC_DRIVER = $(patsubst %/, %, $(sort $(dir $(ASM_SRC_DRIVER))))
ASM_OBJ_DRIVER     = $(patsubst $(DIR_CODE)/%.s, $(DIR_OBJ)/%.o, $(ASM_SRC_DRIVER))
DIR_ASM_OBJ_DRIVER = $(patsubst %/, %, $(sort $(dir $(ASM_OBJ_DRIVER))))

$(DIR_ASM_OBJ_DRIVER)/%.o : $(DIR_ASM_SRC_DRIVER)/%.s
	@if [ ! -d $(dir $@) ]; then 			\
		$(MKDIR) $(dir $@);			\
	fi
	@echo
	$(ARM_GCC) $(CFLAGS) $(DEBUG) $(CPU_TYPE) $(MTHUMB) $(ASM_CPP) $(DEP) -c $(FILE_INC) $< -o $@
