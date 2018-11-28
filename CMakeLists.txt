cmake_minimum_required(VERSION 3.1)

project(DBMigrationHelper LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

file(GLOB_RECURSE SRC "src/*.cpp" "src/*.h" )
file(GLOB_RECURSE QRC "src/*qrc")

add_executable(${PROJECT_NAME} ${SRC} ${QRC})

target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Core Qt5::Quick)
