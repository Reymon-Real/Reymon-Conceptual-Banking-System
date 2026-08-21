###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

##################
### Main Rules ###
##################

all: object libraries executable

compile: object libraries executable

install:
	install $(BINARY_LIBRARY_STATIC_RCBS)
	install $(BINARY_LIBRARY_SHARED_VERSION_RCBS)
	install $(BINARY_LIBRARY_SHARED_SOVERSION_RCBS)
	install $(BINARY_LIBRARY_SHARED_SYMLINK_RCBS)
	install $(BINARY_EXECUTABLE_RCBS)

###############
### Running ###
###############

run: $(BINARY_EXECUTABLE_RCBS)
	@./$<

debug: $(BINARY_EXECUTABLE_RCBS)
	@gdb ./$<

#################
### Cleaning ###
#################

clean:
	rm -f $(shell find $(BUILDDIR)/object -type f -name '*.o')

distclean:
	rm -rf $(BUILDDIR)

###################
### Depen Rules ###
###################

object: $(OBJECT_FILES_SYSTEM)
libraries: $(BINARY_LIBRARY_STATIC_RCBS) $(BINARY_LIBRARY_SHARED_VERSION_RCBS) $(BINARY_LIBRARY_SHARED_SOVERSION_RCBS) $(BINARY_LIBRARY_SHARED_SYMLINK_RCBS)
executable: $(BINARY_EXECUTABLE_RCBS)