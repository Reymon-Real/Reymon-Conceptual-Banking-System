###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

##############################
### System Object Patterns ###
##############################

$(OBJECT_DIR_SYSTEM_ACCOUNT)/%.cbl.o: $(SOURCE_DIR_SYSTEM_ACCOUNT)/%.cbl | $(HEADER_FILES_SYSTEM_ACCOUNT)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -c $< -o $@

$(OBJECT_DIR_SYSTEM_REGISTER)/%.cbl.o: $(SOURCE_DIR_SYSTEM_REGISTER)/%.cbl | $(HEADER_FILES_SYSTEM_REGISTER)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -c $< -o $@

$(OBJECT_DIR_SYSTEM_TRANSACTION)/%.cbl.o: $(SOURCE_DIR_SYSTEM_TRANSACTION)/%.cbl | $(HEADER_FILES_SYSTEM_TRANSACTION)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -c $< -o $@