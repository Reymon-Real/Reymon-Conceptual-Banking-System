###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

#################
### Compilers ###
#################

COBFLAGS := -Wextra -Wpedantic $(INCLUDE_DIR) -fPIC

###############
### Linkers ###
###############

COBLDFLAGS := -Wl,--warn-once

#################
### Utilities ###
#################

ARFLAGS := rcs
LNFLAGS := -sf

#########################
### Conditional Flags ###
#########################

ifeq ($(BUILDTYPE), debug)

COBFLAGS += -g -Og

else ifeq ($(BUILDTYPE), release)

COBFLAGS   += -O3
COBLDFLAGS += --strip-local --strip-discarded

endif