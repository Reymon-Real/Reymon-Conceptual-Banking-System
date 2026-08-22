###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

#################
### Main File ###
#################

$(OBJECT_FILE_MAIN): $(SOURCE_FILE_MAIN) $(HEADER_FILE_RCBS)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -c $< -o $@

########################
### Static Libraries ###
########################

ifeq ($(BUILDTYPE), debug)

$(BINARY_LIBRARY_STATIC_RCBS): $(OBJECT_FILES_SYSTEM)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) -o $@ $^

else ifeq ($(BUILDTYPE), release)

$(BINARY_LIBRARY_STATIC_RCBS): $(OBJECT_FILES_SYSTEM)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) -o $@ $^
	$(STRIP) $(STRIPFLAGS) $@

endif

########################
### Shared Libraries ###
########################

$(BINARY_LIBRARY_SHARED_VERSION_RCBS): $(OBJECT_FILES_SYSTEM)
	@mkdir -p $(dir $@)
	$(COBLD) $(COBLDFLAGS) -shared -Wl,-soname=$(notdir $@) -o $@ $^

$(SYMLINK_LIBRARY_SHARED_SOVERSION_RCBS): $(BINARY_LIBRARY_SHARED_VERSION_RCBS)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@

$(SYMLINK_LIBRARY_SHARED_RCBS): $(SYMLINK_LIBRARY_SHARED_SOVERSION_RCBS)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@

##################
### Executable ###
##################

$(BINARY_EXECUTABLE_RCBS): $(OBJECT_FILE_MAIN) $(SYMLINK_LIBRARY_SHARED_RCBS)
	@mkdir -p $(dir $@)
	$(COBLD) $(COBLDFLAGS) -o $@ $< $(DEPENDENCIES_EXECUTABLE_RCBS)