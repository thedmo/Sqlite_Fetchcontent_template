# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/Dev/Tests/FetchContent/fetchContent_example/build/_deps/sqlite3-src"
  "D:/Dev/Tests/FetchContent/fetchContent_example/build/_deps/sqlite3-build"
  "D:/Dev/Tests/FetchContent/fetchContent_example/build/_deps/sqlite3-subbuild/sqlite3-populate-prefix"
  "D:/Dev/Tests/FetchContent/fetchContent_example/build/_deps/sqlite3-subbuild/sqlite3-populate-prefix/tmp"
  "D:/Dev/Tests/FetchContent/fetchContent_example/build/_deps/sqlite3-subbuild/sqlite3-populate-prefix/src/sqlite3-populate-stamp"
  "D:/Dev/Tests/FetchContent/fetchContent_example/build/_deps/sqlite3-subbuild/sqlite3-populate-prefix/src"
  "D:/Dev/Tests/FetchContent/fetchContent_example/build/_deps/sqlite3-subbuild/sqlite3-populate-prefix/src/sqlite3-populate-stamp"
)

set(configSubDirs Debug;Release;MinSizeRel;RelWithDebInfo)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/Dev/Tests/FetchContent/fetchContent_example/build/_deps/sqlite3-subbuild/sqlite3-populate-prefix/src/sqlite3-populate-stamp/${subDir}")
endforeach()
