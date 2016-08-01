#****************************This is Project Info****************************
PROJECT(all)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)


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













