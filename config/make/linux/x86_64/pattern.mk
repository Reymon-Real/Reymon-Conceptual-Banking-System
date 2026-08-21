###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

##############################
### System Object Patterns ###
##############################

$(OBJECT_DIR_SYSTEM)/%.cbl.o: $(SOURCE_DIR_SYSTEM)/%.cbl | $(HEADER_FILES_SYSTEM)
	@mkdir -p $(dir $@)
	$(COB) $(COBFLAGS) -c $< -o $@