###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

##########################
### Header Directories ###
##########################

INCLUDE_DIR := $(addprefix -I,$(shell find include -type d -name '*'))

##########################
### Source Directories ###
##########################

SOURCE_DIR_CORE   := $(SOURCEDIR)/core
SOURCE_DIR_SYSTEM := $(SOURCEDIR)/system

##########################
### Object Directories ###
##########################

OBJECT_DIR_CORE   := $(BUILDDIR)/object/core
OBJECT_DIR_SYSTEM := $(BUILDDIR)/object/system