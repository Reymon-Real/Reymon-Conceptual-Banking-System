###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

##################
### Main Files ###
##################

HEADER_FILE_RCBS := include/rcbs.cpy
SOURCE_FILE_MAIN := $(SOURCE_DIR_CORE)/main.cbl
OBJECT_FILE_MAIN := $(OBJECT_DIR_CORE)/main.cbl.o

########################
### Static Libraries ###
########################

BINARY_LIBRARY_STATIC_RCBS := $(MAKE_OUTPUT_LIBDIR)/libRCBS.a

########################
### Shared Libraries ###
########################

BINARY_LIBRARY_SHARED_VERSION_RCBS    := $(MAKE_OUTPUT_LIBDIR)/libRCBS.so.$(RCBS_SYSTEM_VERSION)
SYMLINK_LIBRARY_SHARED_SOVERSION_RCBS := $(MAKE_OUTPUT_LIBDIR)/libRCBS.so.$(RCBS_SYSTEM_SOVERSION)
SYMLINK_LIBRARY_SHARED_RCBS           := $(MAKE_OUTPUT_LIBDIR)/libRCBS.so

###################
### Executables ###
###################

BINARY_EXECUTABLE_RCBS := $(MAKE_OUTPUT_BINDIR)/rcbs-$(RCBS_VERSION)