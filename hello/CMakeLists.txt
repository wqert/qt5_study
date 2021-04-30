# include(CMakeForceCompiler)
# SET(PLATFORM "himix200")

# # this one is important
# SET(CMAKE_SYSTEM_NAME Linux)
# set(CMAKE_SYSTEM_PROCESSOR arm ) 
# #this one not so much
# SET(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
SET(CMAKE_C_COMPILER   arm-himix200-linux-gcc)
SET(CMAKE_CXX_COMPILER arm-himix200-linux-g++)
SET(CMAKE_STRIP        arm-himix200-linux-strip)
SET(CMAKE_ASM_COMPILER  ${CMAKE_C_COMPILER})

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)



SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY  "${CMAKE_SOURCE_DIR}/bin")
SET(CMAKE_LIBRARY_OUTPUT_DIRECTORY  "${CMAKE_SOURCE_DIR}/bin")
SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY  "${CMAKE_SOURCE_DIR}/lib/himix200")

cmake_minimum_required(VERSION 3.5)

# PROJECT(helloworld)
# FIND_PACKAGE(Qt4 REQUIRED)

# SET(helloworld_SOURCES main.cpp)
# QT4_WRAP_CPP(helloworld_HEADERS_MOC ${helloworld_HEADERS})

# INCLUDE(${QT_USE_FILE})
# ADD_DEFINITIONS(${QT_DEFINITIONS})
# ADD_EXECUTABLE(helloworld ${helloworld_SOURCES} ${helloworld_HEADERS_MOC})
# TARGET_LINK_LIBRARIES(helloworld ${QT_LIBRARIES})

PROJECT(example)
FIND_PACKAGE(Qt4 REQUIRED)
SET(QT_DONT_USE_QTGUI TRUE)
INCLUDE(${QT_USE_FILE})


include_directories(
    ${QMAKESPEC}/
    ${ARMQTDIR}/include/
    ${ARMQTDIR}/include/Qt/
	${ARMQTDIR}/include/QtCore/
    ${ARMQTDIR}/include/QtNetwork/
	${ARMQTDIR}/include/QtGui/
		
)

link_directories(
	${ARMQTDIR}/lib/
)

# ADD_DEFINITIONS(
#     -DQT_NO_DEBUG 
#     -DQT_GUI_LIB 
#     -DQT_NETWORK_LIB 
#     -DQT_CORE_LIB 
#     -DQT_SHARED
# )

# SET(QT_LIBS 
#     -lQtNetwork
#     -lQtGui
#     -lQtCore
#     -lpthread
# )

SET(MAIN_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
)

# target_link_libraries(${PROJECT_NAME} ${QT_LIBS})

ADD_EXECUTABLE(${PROJECT_NAME} ${MAIN_SRC} )
TARGET_LINK_LIBRARIES(${PROJECT_NAME}  ${QT_LIBRARIES})


