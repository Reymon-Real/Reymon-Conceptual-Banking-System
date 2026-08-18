###################################
### Autor: Eduardo Pozos Huerta ###
### Datum: 17. August. 2026     ###
### Aktua: 17. August. 2026     ###
### Lizenz: MIT                 ###
###################################

#################
### Compilers ###
#################

ifndef COB

COB := x86_64-w64-mingw32-gcobol

endif

###############
### Linkers ###
###############

ifndef COB

COBLD := x86_64-w64-mingw32-gcobol

endif

#################
### Utilities ###
#################

AR := x86_64-w64-mingw32-ar
LN := ln