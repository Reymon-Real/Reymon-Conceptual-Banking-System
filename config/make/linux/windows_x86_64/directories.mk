###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

################################
### Dependencies Directories ###
################################

DEPEND_DIR_BUILD := $(addprefix -L,$(shell find lib -type d -name '*') $(MAKE_OUTPUT_LIBDIR))

ifndef MAKE_DIR_BUILD_RPATH

MAKE_DIR_BUILD_RPATH := '$$ORIGIN:$$ORIGIN/lib:$$ORIGIN/../lib'

endif

ifndef MAKE_DIR_INSTALL_RPATH

MAKE_DIR_INSTALL_RPATH := '$$ORIGIN:$$ORIGIN/lib:$$ORIGIN/../lib:/usr/lib:/usr/local/lib'

endif

##########################
### Header Directories ###
##########################

INCLUDE_DIR := $(addprefix -I,$(shell find include -type d -name '*'))

##########################
### Source Directories ###
##########################

SOURCE_DIR_CORE := $(SOURCEDIR)/core

SOURCE_DIR_SYSTEM_ACCOUNT     := $(SOURCEDIR)/system/account
SOURCE_DIR_SYSTEM_REGISTER    := $(SOURCEDIR)/system/register
SOURCE_DIR_SYSTEM_TRANSACTION := $(SOURCEDIR)/system/transaction

##########################
### Object Directories ###
##########################

OBJECT_DIR_CORE := $(BUILDDIR)/object/core

OBJECT_DIR_SYSTEM_ACCOUNT     := $(BUILDDIR)/object/system/account
OBJECT_DIR_SYSTEM_REGISTER    := $(BUILDDIR)/object/system/register
OBJECT_DIR_SYSTEM_TRANSACTION := $(BUILDDIR)/object/system/transaction