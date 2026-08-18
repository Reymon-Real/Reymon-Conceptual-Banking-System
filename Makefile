###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

###############
### Options ###
###############

include Options.mk

####################
### Shell Config ###
####################

include config/make/$(SYSTEM)/$(ARCH)/shell.mk
include config/make/$(SYSTEM)/$(ARCH)/environment.mk
include config/make/$(SYSTEM)/$(ARCH)/project.mk

include config/make/$(SYSTEM)/$(ARCH)/directories.mk
include config/make/$(SYSTEM)/$(ARCH)/files.mk
include config/make/$(SYSTEM)/$(ARCH)/find.mk

include config/make/$(SYSTEM)/$(ARCH)/tool.mk
include config/make/$(SYSTEM)/$(ARCH)/flag.mk
include config/make/$(SYSTEM)/$(ARCH)/dependencies.mk

include config/make/$(SYSTEM)/$(ARCH)/phony.mk
include config/make/$(SYSTEM)/$(ARCH)/rule.mk
include config/make/$(SYSTEM)/$(ARCH)/compile.mk
include config/make/$(SYSTEM)/$(ARCH)/pattern.mk