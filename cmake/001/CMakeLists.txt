# CMake最小版本
cmake_minimum_required(VERSION 3.20)

# 项目名称
project(HelloWorld)
# 项目功能
# 单个mianc.cpp 文件的项目
# 输出HelloWorld

# 设置语言标准
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# 设置构建类型
set(CMAKE_BUILD_TYPE Debug)
# set(CMAKE_BUILD_TYPE Release)

# 设置编译选项
if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    set(CMAKE_C_FLAGS_DEBUG "-g -Wall")
    set(CMAKE_CXX_FLAGS_DEBUG "-g -Wall")
elseif(CMAKE_BUILD_TYPE STREQUAL "Release")
    set(CMAKE_C_FLAGS_RELEASE "-O3 -Wall")
    set(CMAKE_CXX_FLAGS_RELEASE "-O3 -Wall")
endif()

# 输出信息
# 输出项目名称
message(STATUS "Project: ${PROJECT_NAME}")

# 输出语言标准
message(STATUS "CMAKE_C_STANDARD: ${CMAKE_C_STANDARD}")
message(STATUS "CMAKE_CXX_STANDARD: ${CMAKE_CXX_STANDARD}")

# 输出构建类型
message(STATUS "CMAKE_BUILD_TYPE: ${CMAKE_BUILD_TYPE}")

# 输出编译选项
message(STATUS "CMAKE_C_FLAGS_DEBUG: ${CMAKE_C_FLAGS_DEBUG}")

# 输出编译选项
message(STATUS "CMAKE_CXX_FLAGS_DEBUG: ${CMAKE_CXX_FLAGS_DEBUG}")

# 二进制文件
add_executable(HelloWorld main.cpp)