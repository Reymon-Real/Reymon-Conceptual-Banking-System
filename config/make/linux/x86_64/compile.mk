###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

#################
### Main File ###
#################

$(OBJECT_FILE_MAIN): $(SOURCE_FILE_MAIN) | $(HEADER_FILE_RCBS)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -c $< -o $@

########################
### Static Libraries ###
########################

$(BINARY_LIBRARY_STATIC_RCBS): $(OBJECT_FILES_SYSTEM)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) -o $@ $^

########################
### Shared Libraries ###
########################

$(BINARY_LIBRARY_SHARED_VERSION_RCBS): $(OBJECT_FILES_SYSTEM)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -shared -Wl,-soname=$(notdir $@) -o $@ $^

$(BINARY_LIBRARY_SHARED_SOVERSION_RCBS): $(BINARY_LIBRARY_SHARED_VERSION_RCBS)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@

$(BINARY_LIBRARY_SHARED_SYMLINK_RCBS): $(BINARY_LIBRARY_SHARED_SOVERSION_RCBS)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@

##################
### Executable ###
##################

$(BINARY_EXECUTABLE_RCBS): $(OBJECT_FILE_MAIN) | $(BINARY_LIBRARY_SHARED_SYMLINK_RCBS)
	@mkdir -p $(dir $@)
	$(COBLD) $(COBLDFLAGS) -o $@ $< $(DEPENDENCIES_EXECUTABLE_RCBS)