###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

#################
### Compilers ###
#################

COBFLAGS := -m64 -Wextra -Wuninitialized -Wpedantic -ffixed-form $(INCLUDE_DIR) -fPIC

###############
### Linkers ###
###############

COBLDFLAGS := -Wl,--warn-once

#################
### Utilities ###
#################

ARFLAGS    := rcs
LNFLAGS    := -sf
STRIPFLAGS := --strip-debug --discard-all

#########################
### Conditional Flags ###
#########################

ifeq ($(BUILDTYPE), debug)

COBFLAGS += -g -Og

else ifeq ($(BUILDTYPE), release)

COBFLAGS   += -O3
COBLDFLAGS += -Wl,--strip-debug -Wl,--strip-discarded -Wl,--discard-all -flto -flto=$(shell nproc)

endif