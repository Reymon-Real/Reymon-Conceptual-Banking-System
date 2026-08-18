###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

##################
### Main Files ###
##################

SOURCE_FILE_MAIN := $(SOURCE_DIR_CORE)/main.cbl
OBJECT_FILE_MAIN := $(OBJECT_DIR_CORE)/main.cbl.o

########################
### Static Libraries ###
########################

BINARY_LIBRARY_STATIC_RCBS_ACCOUNT     := $(MAKE_OUTPUT_LIBDIR)/libRCBSAccount.a
BINARY_LIBRARY_STATIC_RCBS_REGISTER    := $(MAKE_OUTPUT_LIBDIR)/libRCBSRegister.a
BINARY_LIBRARY_STATIC_RCBS_TRANSACTION := $(MAKE_OUTPUT_LIBDIR)/libRCBSTransaction.a

########################
### Shared Libraries ###
########################

BINARY_LIBRARY_SHARED_RCBS_ACCOUNT     := $(MAKE_OUTPUT_LIBDIR)/libRCBSAccount-$(RCBS_SYSTEM_ACCOUNT_VERSION).dll
BINARY_LIBRARY_SHARED_RCBS_REGISTER    := $(MAKE_OUTPUT_LIBDIR)/libRCBSRegister-$(RCBS_SYSTEM_ACCOUNT_VERSION).dll
BINARY_LIBRARY_SHARED_RCBS_TRANSACTION := $(MAKE_OUTPUT_LIBDIR)/libRCBSTransaction-$(RCBS_SYSTEM_ACCOUNT_VERSION).so

BINARY_LIBRARY_SHARED_IMPORT_RCBS_ACCOUNT     := $(MAKE_OUTPUT_LIBDIR)/libRCBSAccount-$(RCBS_SYSTEM_ACCOUNT_VERSION).a
BINARY_LIBRARY_SHARED_IMPORT_RCBS_REGISTER    := $(MAKE_OUTPUT_LIBDIR)/libRCBSRegister-$(RCBS_SYSTEM_ACCOUNT_VERSION).a
BINARY_LIBRARY_SHARED_IMPORT_RCBS_TRANSACTION := $(MAKE_OUTPUT_LIBDIR)/libRCBSTransaction-$(RCBS_SYSTEM_ACCOUNT_VERSION).a

###################
### Executables ###
###################

BINARY_EXECUTABLE_RCBS := $(MAKE_OUTPUT_BINDIR)/rcbs-$(RCBS_VERSION)

####################
### Dependencies ###
####################

DEPENDENCIES_FILES_EXECUTABLE_RCBS := \
$(foreach \
	FILE, \
	$(BINARY_LIBRARY_SHARED_SYMLINK_RCBS_ACCOUNT) \
	$(BINARY_LIBRARY_SHARED_SYMLINK_RCBS_REGISTER) \
	$(BINARY_LIBRARY_SHARED_SYMLINK_RCBS_TRANSACTION),\
	-l:$(notdir $(FILE)) \
)