find_package(PkgConfig)

PKG_CHECK_MODULES(PC_GR_RTTY gnuradio-rtty)

FIND_PATH(
    GR_RTTY_INCLUDE_DIRS
    NAMES gnuradio/rtty/api.h
    HINTS $ENV{RTTY_DIR}/include
        ${PC_RTTY_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GR_RTTY_LIBRARIES
    NAMES gnuradio-rtty
    HINTS $ENV{RTTY_DIR}/lib
        ${PC_RTTY_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/gnuradio-rttyTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GR_RTTY DEFAULT_MSG GR_RTTY_LIBRARIES GR_RTTY_INCLUDE_DIRS)
MARK_AS_ADVANCED(GR_RTTY_LIBRARIES GR_RTTY_INCLUDE_DIRS)
