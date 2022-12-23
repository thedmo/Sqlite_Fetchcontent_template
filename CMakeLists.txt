cmake_minimum_required(VERSION 3.14)
project(sqlite_fetchcontent)

include(FetchContent)

FetchContent_Declare(
        sqlite3
        URL https://www.sqlite.org/2022/sqlite-amalgamation-3400000.zip
        )

FetchContent_MakeAvailable(sqlite3)

add_library(sqlite3_lib STATIC ${sqlite3_SOURCE_DIR}/sqlite3.c)
target_include_directories(sqlite3_lib PUBLIC ${sqlite3_SOURCE_DIR})

add_executable(${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} sqlite3_lib)
target_include_directories(${PROJECT_NAME} PUBLIC ${sqlite3_SOURCE_DIR})
