###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

#################
### Main File ###
#################

$(OBJECT_FILE_MAIN): $(SOURCE_FILE_MAIN)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -c $< -o $@

########################
### Static Libraries ###
########################

$(BINARY_LIBRARY_STATIC_RCBS_ACCOUNT): $(OBJECT_FILES_SYSTEM_ACCOUNT)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) -o $@ $^

$(BINARY_LIBRARY_STATIC_RCBS_REGISTER): $(OBJECT_FILES_SYSTEM_REGISTER)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) -o $@ $^

$(BINARY_LIBRARY_STATIC_RCBS_TRANSACTION): $(OBJECT_FILES_SYSTEM_TRANSACTION)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) -o $@ $^

########################
### Shared Libraries ###
########################

$(BINARY_LIBRARY_SHARED_VERSION_RCBS_ACCOUNT): $(OBJECT_FILES_SYSTEM_ACCOUNT)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -shared -Wl,-soname=$(notdir $@) -o $@ $^

$(BINARY_LIBRARY_SHARED_VERSION_RCBS_REGISTER): $(OBJECT_FILES_SYSTEM_REGISTER)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -shared -Wl,-soname=$(notdir $@) -o $@ $^

$(BINARY_LIBRARY_SHARED_VERSION_RCBS_TRANSACTION): $(OBJECT_FILES_SYSTEM_TRANSACTION)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -shared -Wl,-soname=$(notdir $@) -o $@ $^


$(BINARY_LIBRARY_SHARED_SOVERSION_RCBS_ACCOUNT): $(BINARY_LIBRARY_SHARED_VERSION_RCBS_ACCOUNT)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@

$(BINARY_LIBRARY_SHARED_SOVERSION_RCBS_REGISTER): $(BINARY_LIBRARY_SHARED_VERSION_RCBS_REGISTER)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@

$(BINARY_LIBRARY_SHARED_SOVERSION_RCBS_TRANSACTION): $(BINARY_LIBRARY_SHARED_VERSION_RCBS_TRANSACTION)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@


$(BINARY_LIBRARY_SHARED_SYMLINK_RCBS_ACCOUNT): $(BINARY_LIBRARY_SHARED_SOVERSION_RCBS_ACCOUNT)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@

$(BINARY_LIBRARY_SHARED_SYMLINK_RCBS_REGISTER): $(BINARY_LIBRARY_SHARED_SOVERSION_RCBS_REGISTER)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@

$(BINARY_LIBRARY_SHARED_SYMLINK_RCBS_TRANSACTION): $(BINARY_LIBRARY_SHARED_SOVERSION_RCBS_TRANSACTION)
	@mkdir -p $(dir $@)
	$(LN) $(LNFLAGS) $(notdir $<) $@

##################
### Executable ###
##################

$(BINARY_EXECUTABLE_RCBS): $(OBJECT_FILE_MAIN) | $(BINARY_LIBRARY_SHARED_SYMLINK_RCBS_ACCOUNT) $(BINARY_LIBRARY_SHARED_SYMLINK_RCBS_REGISTER) $(BINARY_LIBRARY_SHARED_SYMLINK_RCBS_TRANSACTION)
	@mkdir -p $(dir $@)
	$(COBLD) $(COBLDFLAGS) -o $@ $< $(DEPENDENCIES_EXECUTABLE_RCBS)