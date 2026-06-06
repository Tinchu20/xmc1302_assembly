WORKSPACE   = $(abspath $(CURDIR)/..)

DIR_BIN     = $(WORKSPACE)/bin
DIR_OBJ     = $(WORKSPACE)/obj
DIR_CODE    = $(WORKSPACE)/code
DIR_LINKER  = $(WORKSPACE)/linker

ASM_SRC     = $(shell find $(DIR_CODE) -iname "*.s")
DIR_ASM_SRC = $(patsubst %/, %, $(sort $(dir $(ASM_SRC))))
ASM_OBJ     = $(patsubst $(DIR_CODE)/%.s, $(DIR_OBJ)/%.o, $(ASM_SRC))
ASM_DEPS    = $(ASM_OBJ:.o=.d)
FILE_LINKER = $(DIR_LINKER)/linker.ld

SUBDIR_MKS  = $(shell find $(WORKSPACE) -type f -iname "*.mk")
FILE_INC    = $(addprefix -I, $(patsubst %/, %, $(sort $(dir $(shell find $(WORKSPACE) -type f -iname "*.inc")))))

MKDIR       = mkdir -p
RM          = rm -rf

-include $(SUBDIR_MKS)

all : $(TARGET_ELF) $(TARGET_HEX) $(TARGET_LST) $(TARGET_SIZE)

.PHONY : all clean

$(TARGET_ELF) : $(ASM_OBJ)
	@echo
	@echo "**********************************************************************************************************************************************"
	@echo "Linking File : "$@
	@echo "**********************************************************************************************************************************************"
	@if [ ! -d $(dir $@) ]; then 	\
		$(MKDIR) $(dir $@);			\
	fi
	@echo
	$(ARM_LD) $(DEBUG) -Llib -Map=$(TARGET_MAP) -T$(FILE_LINKER) $^ -o $@

$(TARGET_HEX) : $(TARGET_ELF)
	@echo
	@echo "**********************************************************************************************************************************************"
	@echo "Creating Hex File : "$@
	@echo "**********************************************************************************************************************************************"
	@if [ ! -d $(dir $@) ]; then 	\
		$(MKDIR) $(dir $@);			\
	fi
	@echo
	$(ARM_OBJCOPY) -O ihex $< $@

$(TARGET_LST) : $(TARGET_ELF)
	@echo
	@echo "**********************************************************************************************************************************************"
	@echo "Creating LST File : "$@
	@echo "**********************************************************************************************************************************************"
	@if [ ! -d $(dir $@) ]; then 	\
		$(MKDIR) $(dir $@);			\
	fi
	@echo
	$(ARM_OBJCOPY) -h -s $(TARGET_ELF) > $@

$(TARGET_SIZE) : $(TARGET_ELF)
	@echo
	@echo "**********************************************************************************************************************************************"
	@echo "Creating size File : "$@
	@echo "**********************************************************************************************************************************************"
	@if [ ! -d $(dir $@) ]; then 	\
		$(MKDIR) $(dir $@);			\
	fi
	@echo
	$(ARM_SIZE) --format=berkley $(ASM_OBJ) $(TARGET_ELF)
	@echo

clean :
	$(RM) $(DIR_BIN) $(DIR_OBJ)

-include $(ASM_DEPS)

temp :
	@echo $(ASM_SRC)
	@echo $(DIR_ASM_SRC)
	@echo $(ASM_OBJ)
	@echo
	@echo $(SUBDIR_MKS)
	@echo
	@echo
	@echo $(ASM_DEPS)
	@echo
