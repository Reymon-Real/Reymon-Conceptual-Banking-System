###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

#######################
### Compile Options ###
#######################

ARCH   := x86_64
SYSTEM := linux

PREFIX    := /usr/local
BUILDTYPE := debug

BUILDDIR  := ./build/$(BUILDTYPE)/$(SYSTEM)/$(ARCH)
SOURCEDIR := ./src

####################
### Make Options ###
####################

MAKE_OUTPUT_BINDIR := $(BUILDDIR)/bin
MAKE_OUTPUT_LIBDIR := $(BUILDDIR)/lib

MAKE_INSTALL_BINDIR := $(PREFIX)/bin
MAKE_INSTALL_LIBDIR := $(PREFIX)/lib