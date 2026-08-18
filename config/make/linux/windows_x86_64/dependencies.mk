###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

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

DEPENDENCIES_EXECUTABLE_RCBS := $(DEPEND_DIR_BUILD) -Wl,--start-group $(DEPENDENCIES_FILES_EXECUTABLE_RCBS) -Wl,--end-group $(RPATH_EXECUTABLE_RCBS)