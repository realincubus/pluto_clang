# Try to find the pluto library

# PLUTO_FOUND       - System has isl lib
# PLUTO_INCLUDE_DIR - The isl include directory
# PLUTO_LIBRARY     - Library needed to use isl


if (PLUTO_INCLUDE_DIR AND PLUTO_LIBRARY)
	# Already in cache, be silent
	set(PLUTO_FIND_QUIETLY TRUE)
endif()

find_path(PLUTO_INCLUDE_DIR NAMES pluto/libpluto.h)
find_library(PLUTO_LIBRARY NAMES lib/pluto)
find_program(POLYCC_BIN NAMES bin/polycc)
find_program(CLAN_BIN NAMES bin/clan)

set ( PLUTO_INCLUDE_DIR "${PLUTO_INCLUDE_DIR}/pluto/" )

if (PLUTO_LIBRARY AND PLUTO_INCLUDE_DIR)
	message(STATUS "Include pluto found =) ${PLUTO_INCLUDE_DIR}")
	message(STATUS "Library pluto found =) ${PLUTO_LIBRARY}")
else()
	message(STATUS "Include pluto not found =(")
	message(STATUS "Library pluto not found =(")
endif()

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PLUTO DEFAULT_MSG PLUTO_INCLUDE_DIR PLUTO_LIBRARY)

mark_as_advanced(PLUTO_INCLUDE_DIR PLUTO_LIBRARY)
