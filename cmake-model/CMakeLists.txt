#****************************This is Project Info****************************
PROJECT(IPCCommandSvr)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

#****************************This is Compile Flag****************************
if(DEBUG)
    message( STATUS "==============================debug==============================" )
    ADD_DEFINITIONS(-g)
else(DEBUG)
	message( STATUS "==============================release============================" )
    ADD_DEFINITIONS(-O2)
endif()

ADD_DEFINITIONS(-Wno-sign-compare -Wno-enum-compare)
ADD_DEFINITIONS("-std=c++11")


#****************************This is Include File/Directories****************
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/../../Global/)

#****************************This is Source File/Directories*****************
AUX_SOURCE_DIRECTORY(. DIR_SRCS)

#****************************This is 3Party Library   Directories**************************
LINK_DIRECTORIES(${PROJECT_BINARY_DIR}/../../../Libs/Linux/)
LINK_DIRECTORIES(./)

if (WIN32)
	list(APPEND LIB_LIST ws2_32.lib websockets_static.lib)
elseif (UNIX)
	list(APPEND LIB_LIST pthread websockets)
endif()

#****************************This is 3Party Library **************************
LINK_LIBRARIES(${LIB_LIST})

#  file(GLOB_RECURSE ALL_FILETYPE_SRCS . "*.cpp" "*.c" "*.h" "*.hpp" )
#  support this files ,but don't contain subdirectories


file(GLOB ALL_FILETYPE_SRCS . "*.cpp" "*.c" "*.h" "*.hpp" )
#  support this files ,contain subdirectories

#****************************This is Output Directory************************
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/../../../Libs/Linux)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/../../../Libs/Linux)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/../../../Libs/Linux)

#****************************This is Output Library**************************
ADD_EXECUTABLE(${PROJECT_NAME} ${DIR_SRCS}   ${ALL_FILETYPE_SRCS})
#ADD_LIBRARY(${PROJECT_NAME} SHARED ${DIR_SRCS} )
#ADD_LIBRARY(${PROJECT_NAME} STATIC ${DIR_SRCS} )
TARGET_LINK_LIBRARIES( ${PROJECT_NAME} ${LIB_LIST})











