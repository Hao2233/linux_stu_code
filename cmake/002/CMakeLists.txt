# CMake最小版本
cmake_minimum_required(VERSION 3.20)

# 项目名称
project(math_stu)
# 项目功能
# 将源文件和头文件分开
# 在源文件中调用头文件中的函数

# 设置头文件目录
include_directories(${PROJECT_SOURCE_DIR}/code/include)

# 设置源文件目录
aux_source_directory(${PROJECT_SOURCE_DIR}/code/src SRC_LIST)

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
add_executable(${PROJECT_NAME} ${SRC_LIST})


# include_directories()指令
# 用于向工程添加多个特定的头文件搜索路径，路径之间用空格分割
# 语法：include_directories([AFTER|BEFORE] [SYSTEM] dir1 dir2 ...)
# AFTER|BEFORE：指定搜索路径是添加到其他路径之前还是之后
# SYSTEM：指定包含的目录是系统目录，编译时会去系统目录搜索头文件
# dir1 dir2：指定搜索的路径

