project(
	'Reymon Minimalist Financial System',

	version: '1.0.0',
	meson_version: '>=1.8.0'
)

# *******************
# *** Directories ***
# *******************

# *************
# *** Files ***
# *************

main  = 'reyminfin'

reydb   = 'reydb'
reycore = 'reycore'

# *************
# *** Tools ***
# *************

ar   = find_program('ar')
cob2 = find_program('cob2')

# cobc = find_program('cobc')

# ******************
# *** Tool Flags ***
# ******************

arflags   = ['rcs']
cob2flags = ['-I../include']

# cobcflags = ['-Wall', '-Wextra', '-Werror', '-fstatic-call', '-std=ibm-strict', '-Os', '-I../include']

# ********************
# *** Dependencies ***
# ********************

cobol_dependency = [
#	'-L.',
#	'-L../lib',

	'-lreydb',
	'-lreycore',
]

# **********************
# *** Subdirectories ***
# **********************

subdir('src/db')
subdir('src/core')
subdir('src/main')

# ******************
# *** Generators ***
# ******************

cobcgen = generator(
	cob2,
	output: '@PLAINNAME@.o',
	arguments: [
		cob2flags,
		'-c',
		'@INPUT@',
		'-o',
		'@OUTPUT@',
	]
)

# ********************
# *** Object Files ***
# ********************

db_object   = cobcgen.process(db_cobol)
core_object = cobcgen.process(core_cobol)
main_object = custom_target(main, input: main_cobol, output: 'main.o', command: [cob2, cob2flags, '-c', '@INPUT@', '-o', '@OUTPUT@'], build_by_default: true)

# *****************
# *** Libraries ***
# *****************

libreydb_static   = custom_target('lib' + reydb + '_static',   input: db_object,   output: 'lib' + reydb + '.a',   command: [ar, arflags, '-o', '@OUTPUT@', '@INPUT@'], build_by_default: true, install: true, install_dir: '/usr/lib/x86_64-linux-gnu')
libreycore_static = custom_target('lib' + reycore + '_static', input: core_object, output: 'lib' + reycore + '.a', command: [ar, arflags, '-o', '@OUTPUT@', '@INPUT@'], build_by_default: true, install: true, install_dir: '/usr/lib/x86_64-linux-gnu')

# *******************
# *** Executables ***
# *******************

exec_main = custom_target('exec_' + main, input: [main_object, libreydb_static, libreycore_static], output: main, command: [cob2, cob2flags, '-x', '@INPUT@', '-o', '@OUTPUT@'], build_by_default: true)