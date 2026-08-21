###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

################################
### Dependencies Directories ###
################################

DEPEND_DIR_BUILD := $(addprefix -L,lib $(MAKE_OUTPUT_LIBDIR))

ifndef MAKE_DIR_BUILD_RPATH

MAKE_DIR_BUILD_RPATH := '$$ORIGIN:$$ORIGIN/lib:$$ORIGIN/../lib'

endif

ifndef MAKE_DIR_INSTALL_RPATH

MAKE_DIR_INSTALL_RPATH := '$$ORIGIN:$$ORIGIN/lib:$$ORIGIN/../lib:/usr/lib:/usr/local/lib'

endif

######################
### Relative Paths ###
######################

ifeq ($(BUILDTYPE), debug)

RPATH_EXECUTABLE_RCBS := -Wl,-rpath=$(MAKE_DIR_BUILD_RPATH)

else ifeq ($(BUILDTYPE), release)

RPATH_EXECUTABLE_RCBS := -Wl,-rpath=$(MAKE_DIR_INSTALL_RPATH)

endif

####################
### Dependencies ###
####################

DEPENDENCIES_FILES_EXECUTABLE_RCBS := \
$(foreach \
	FILE, \
	$(BINARY_LIBRARY_SHARED_SYMLINK_RCBS), \
	-l:$(notdir $(FILE)) \
)

DEPENDENCIES_EXECUTABLE_RCBS := $(DEPEND_DIR_BUILD) -Wl,--start-group $(DEPENDENCIES_FILES_EXECUTABLE_RCBS) -Wl,--end-group $(RPATH_EXECUTABLE_RCBS)