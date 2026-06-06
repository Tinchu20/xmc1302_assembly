DIR_APP = $(DIR_CODE)/app

ASM_SRC_APP     = $(shell find $(DIR_APP) -iname "*.s")
DIR_ASM_SRC_APP = $(patsubst %/, %, $(sort $(dir $(ASM_SRC_APP))))
ASM_OBJ_APP     = $(patsubst $(DIR_CODE)/%.s, $(DIR_OBJ)/%.o, $(ASM_SRC_APP))
DIR_ASM_OBJ_APP = $(patsubst %/, %, $(sort $(dir $(ASM_OBJ_APP))))

$(DIR_ASM_OBJ_APP)/%.o : $(DIR_ASM_SRC_APP)/%.s
	@if [ ! -d $(dir $@) ]; then 			\
		$(MKDIR) $(dir $@);			\
	fi
	@echo
	$(ARM_GCC) $(CFLAGS) $(DEBUG) $(CPU_TYPE) $(MTHUMB) $(ASM_CPP) $(DEP) -c $(FILE_INC) $< -o $@
