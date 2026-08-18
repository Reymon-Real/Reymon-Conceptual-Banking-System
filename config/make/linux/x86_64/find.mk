###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

############################
### Search Headers Files ###
############################

HEADER_FILES_SYSTEM_ACCOUNT     := $(shell find include/account -type f -name '*.cpy')
HEADER_FILES_SYSTEM_REGISTER    := $(shell find include/register -type f -name '*.cpy')
HEADER_FILES_SYSTEM_TRANSACTION := $(shell find include/transaction -type f -name '*.cpy')

###########################
### Search Source Files ###
###########################

SOURCE_FILES_SYSTEM_ACCOUNT     := $(shell find $(SOURCE_DIR_SYSTEM_ACCOUNT) -type f -name '*.cbl')
SOURCE_FILES_SYSTEM_REGISTER    := $(shell find $(SOURCE_DIR_SYSTEM_REGISTER) -type f -name '*.cbl')
SOURCE_FILES_SYSTEM_TRANSACTION := $(shell find $(SOURCE_DIR_SYSTEM_TRANSACTION) -type f -name '*.cbl')

###########################
### Search Object Files ###
###########################

OBJECT_FILES_SYSTEM_ACCOUNT     := $(patsubst $(SOURCE_DIR_SYSTEM_ACCOUNT)/%.cbl,    $(OBJECT_DIR_SYSTEM_ACCOUNT)/%.cbl.o,    $(SOURCE_FILES_SYSTEM_ACCOUNT))
OBJECT_FILES_SYSTEM_REGISTER    := $(patsubst $(SOURCE_DIR_SYSTEM_REGISTER)/%.cbl,   $(OBJECT_DIR_SYSTEM_REGISTER)/%.cbl.o,   $(SOURCE_FILES_SYSTEM_REGISTER))
OBJECT_FILES_SYSTEM_TRANSACTION := $(patsubst $(SOURCE_DIR_SYSTEM_TRANSACTION)/%.cbl,$(OBJECT_DIR_SYSTEM_TRANSACTION)/%.cbl.o,$(SOURCE_FILES_SYSTEM_TRANSACTION))