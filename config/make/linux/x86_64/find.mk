###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

############################
### Search Headers Files ###
############################

HEADER_FILES_SYSTEM := $(wildcard include/**/*.cpy)

###########################
### Search Source Files ###
###########################

SOURCE_FILES_CORE   := $(wildcard $(SOURCE_DIR_CORE)/*.cbl)
SOURCE_FILES_SYSTEM := $(shell find $(SOURCE_DIR_SYSTEM) -type f -name '*.cbl')

###########################
### Search Object Files ###
###########################

OBJECT_FILES_CORE   := $(patsubst $(SOURCE_DIR_CORE)/%.cbl,$(OBJECT_DIR_CORE)/%.cbl.o,$(SOURCE_FILES_CORE))
OBJECT_FILES_SYSTEM := $(patsubst $(SOURCE_DIR_SYSTEM)/%.cbl,$(OBJECT_DIR_SYSTEM)/%.cbl.o,$(SOURCE_FILES_SYSTEM))