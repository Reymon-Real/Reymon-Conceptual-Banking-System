# *****************
# *** Directory ***
# *****************

SRC_DIR      := ./src
SRC_DB_DIR   := ./src/db
SRC_CORE_DIR := ./src/core

INC_DIR := ./include

BUILD_OBJ_DIR := ./build/obj
BUILD_LIB_DIR := ./build/lib
BUILD_BIN_DIR := ./build/bin

# *************
# *** Files ***
# *************

LIBREYDB   := $(BUILD_LIB_DIR)/libreydb.a
LIBREYCORE := $(BUILD_LIB_DIR)/libreycore.a

EXECUTABLE := $(BUILD_BIN_DIR)/reyminfin

# *************************
# *** Find Source Files ***
# *************************

SOURCE_COBOL      := $(shell find $(SRC_DIR) -type f -name '*.cbl')
SOURCE_COBOL_DB   := $(shell find $(SRC_DB_DIR) -type f -name '*.cbl')
SOURCE_COBOL_CORE := $(shell find $(SRC_CORE_DIR) -type f -name '*.cbl')

# ********************
# *** Object Files ***
# ********************

OBJECT_COBOL      := $(patsubst $(SRC_DIR)/%.cbl,$(BUILD_OBJ_DIR)/%.o,$(SOURCE_COBOL))
OBJECT_COBOL_DB   := $(patsubst $(SRC_DB_DIR)/%.cbl,$(BUILD_OBJ_DIR)/%.o,$(SOURCE_DB_COBOL))
OBJECT_COBOL_CORE := $(patsubst $(SRC_CORE_DIR)/%.cbl,$(BUILD_OBJ_DIR)/%.o,$(SOURCE_CORE_COBOL))

# *************
# *** Tools ***
# *************

AR  := ar
COB := cob2

# *******************
# *** Tools Flags ***
# *******************

ARFLAGS  := rcs
COBFLAGS := -Iinclude

# *************
# *** Rules ***
# *************

all: $(LIBREYDB) $(LIBREYCORE) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECT_COBOL)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -x $^ -o $@

clean: $(OBJECT_COBOL) $(EXECUTABLE)
	$(RM) $^

# ***************************
# *** Custom Compilations ***
# ***************************

$(LIBREYCORE): ./src/main/main.cbl
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -c -x

# ****************
# *** Patterns ***
# ****************

$(BUILD_OBJ_DIR)/%.o: $(SRC_DIR)/db/%.cbl

$(BUILD_OBJ_DIR)/%.o: $(SRC_DIR)/%.cbl
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -c $< -o $@