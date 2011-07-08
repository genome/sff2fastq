cmake_minimum_required(VERSION 2.8)

project(sff2fastq)

set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/build-common/cmake")

include(TestHelper)
include(VersionHelper)
include(ProjectHelper)

configure_file(version/version.h.in version/version.h @ONLY)
include_directories(${PROJECT_BINARY_DIR}/version)

set(CMAKE_INSTALL_PREFIX "/usr")

add_subdirectory(src)

include(PackageInfo.cmake)
