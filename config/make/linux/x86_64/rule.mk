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

ldd: $(BINARY_EXECUTABLE_RCBS)
	@ldd ./$<

#################
### Cleaning ###
#################

clean:
	@for file in $(shell find $(BUILDDIR)/object -type f -name '*.o'); do \
		echo "Remove $$file"; \
		rm -r $$file; \
	done

distclean:
	@for dir in $(shell find $(BUILDDIR) -type d -name '*'); do \
		echo "Remove $$dir"; \
		rm -rf "$$dir"; \
	done

###################
### Depen Rules ###
###################

object: $(OBJECT_FILES_SYSTEM) $(OBJECT_FILE_MAIN)
libraries: $(BINARY_LIBRARY_STATIC_RCBS) $(BINARY_LIBRARY_SHARED_VERSION_RCBS) $(SYMLINK_LIBRARY_SHARED_SOVERSION_RCBS) $(SYMLINK_LIBRARY_SHARED_RCBS)
executable: $(BINARY_EXECUTABLE_RCBS)