SET(CMAKE_INCLUDE_CURRENT_DIR ON)

SET(CMAKE_CXX_LINK_FLAGS "-lvulkan")
SET(CMAKE_CXX_LINK_FLAGS "-lassimp")
SET(CMAKE_CXX_LINK_FLAGS "-lxcb")

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DVK_USE_PLATFORM_XCB_KHR")

MESSAGE(STATUS ${VULKAN_LIB})

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DNOMINMAX -DVK_PROTOTYPES -D_USE_MATH_DEFINES")

ADD_DEFINITIONS(-D_CRT_SECURE_NO_WARNINGS)

FIND_PACKAGE(Qt5Widgets REQUIRED)
FIND_PACKAGE(Qt5Gui REQUIRED)
FIND_PACKAGE(Qt5Core REQUIRED)
#FIND_PACKAGE(Qt5Quick REQUIRED)
#FIND_PACKAGE(Qt5Qml REQUIRED)

SET(app_SRCS
    main.cpp
)

INCLUDE_DIRECTORIES(
    ${qtvulkan_SOURCE_DIR}
    ${Qt5Gui_INCLUDE_DIRS}
    ${Qt5Core_INCLUDE_DIRS}
    ${Qt5Widgets_INCLUDE_DIRS}
    #${Qt5Quick_INCLUDE_DIRS}
    #${Qt5Qml_INCLUDE_DIRS}
)

LINK_LIBRARIES(qtvulkan)

SET(app_LIBS
    ${Qt5Widgets_LIBRARIES}
    ${Qt5Quick_LIBRARIES}
    ${Qt5Core_LIBRARIES}
    #${Qt5Gui_LIBRARIES}
    #${QT5Qml_LIBRARIES}
)

ADD_EXECUTABLE(app ${app_SRCS})

SET_TARGET_PROPERTIES(app
    PROPERTIES
    CMAKE_CXX_STANDARD 11
    CMAKE_CXX_STANDARD_REQUIRED ON
)

#TARGET_LINK_LIBRARIES(qtvulkan "-lvulkan" ${qtvulkan_LIBS})
TARGET_LINK_LIBRARIES(app "-lvulkan" ${app_LIBS})

# INSTALL
#INSTALL( TARGETS qtvulkan RUNTIME DESTINATION /usr/local/qtvulkan)
