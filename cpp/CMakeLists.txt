cmake_minimum_required(VERSION 3.5.0)
project(xray3d)

find_package( OpenCV REQUIRED )
include_directories( 
    ${OpenCV_INCLUDE_DIRS}
        include )
 
 enable_testing()
add_test(${PROJECT_NAME}-test COMMAND main)

add_library(${PROJECT_NAME} SHARED src/restr.cpp)

add_executable(${PROJECT_NAME}-test test/main_test.cpp)
target_link_libraries( ${PROJECT_NAME}-test ${OpenCV_LIBS} ${PROJECT_NAME})

set(CMAKE_INSTALL_PREFIX ${PROJECT_BINARY_DIR}/install)

install(TARGETS ${PROJECT_NAME}-test DESTINATION bin)

install(DIRECTORY include/ DESTINATION ${PROJECT_BINARY_DIR}/install/include)