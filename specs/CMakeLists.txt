FILE(GLOB EnkiSpecSourceFiles *.cpp **/*.cpp)
add_executable(enki-specs ${EnkiSpecSourceFiles} )
set_target_properties(enki-specs PROPERTIES COTIRE_CXX_PREFIX_HEADER_INIT "specs.h")
set_target_properties(enki-specs PROPERTIES COTIRE_ADD_UNIT_BUILD FALSE)
cotire(enki-specs)

