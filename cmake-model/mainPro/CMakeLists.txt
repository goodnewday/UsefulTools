#****************************This is Project Info****************************
PROJECT(all)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
set(MAJOR_VERSION 1)
set(MINOR_VERSION 0)
set(PATCH_VERSION 1)

#****************************This is Compile Flag****************************
if(DEBUG)
    message( STATUS "==============================debug==============================" )
    ADD_DEFINITIONS(-g)
else(DEBUG)
	message( STATUS "==============================release============================" )
endif()

ADD_DEFINITIONS(-Wno-sign-compare -Wno-enum-compare)
ADD_DEFINITIONS("-std=c++11")

#****************************This is Include File/Directories****************

add_subdirectory(./ProjectCode/IPCCommandSvr/IPCCommandSvr/)
add_subdirectory(./ModuleCode/CDatabase/CDatabase/)


#*************************Pack*******************************************#

install (DIRECTORY  ${PROJECT_SOURCE_DIR}/../../bin/linux/                         DESTINATION      ./)
install (FILES    ${PROJECT_SOURCE_DIR}/../../bin/linux/RunSvr.sh                  DESTINATION      ./  PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
                    GROUP_EXECUTE GROUP_READ)
include (InstallRequiredSystemLibraries)
set (CPACK_PACKAGE_VERSION_MAJOR     "${MAJOR_VERSION}")
set (CPACK_PACKAGE_VERSION_MINOR     "${MINOR_VERSION}")
set (CPACK_PACKAGE_VERSION_PATCH     "${PATCH_VERSION}")
################################### go to this path,generate install CPackages ###################################
set (CPACK_PACKAGE_DIRECTORY         "${PROJECT_SOURCE_DIR}/../../../../Installer/IACSvr/")
include (CPack)











