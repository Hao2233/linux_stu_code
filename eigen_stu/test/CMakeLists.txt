# CMake最小版本
cmake_minimum_required(VERSION 3.20)

# 项目名称
project(eigen_demo)

# 设置语言标准
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# 设置强制检查语法
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_C_EXTENSIONS OFF)

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

# 设置Eigen库路径变量
set(EIGEN3_INCLUDE_DIR /home/zhanghao/SDK/eigen)
# 设置Eigne库头文件
set(EIGEN3_INCLUDE_DIR ${EIGEN3_INCLUDE_DIR} CACHE PATH "Eigen include directory")
# 设置Eigne库库文件
set(EIGEN3_LIBRARY_DIR ${EIGEN3_LIBRARY_DIR} CACHE PATH "Eigen library directory")

# 设置头文件路径
include_directories(${EIGEN3_INCLUDE_DIR}/include)

# 设置源文件路径
set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)
set(SRC_DIR ${PROJECT_SOURCE_DIR})

# 设置打印信息
# 输出构建类型
message(STATUS "CMAKE_BUILD_TYPE: ${CMAKE_BUILD_TYPE}")

# 输出Eigen库路径
message(STATUS "EIGEN3_INCLUDE_DIR: ${EIGEN3_INCLUDE_DIR}")

# 判断Eigen库是否加载成功
if (EIGEN3_INCLUDE_DIR)
    message(STATUS "EIGEN3_INCLUDE_DIR: ${EIGEN3_INCLUDE_DIR}")
else()
    message(FATAL_ERROR "EIGEN3_INCLUDE_DIR: ${EIGEN3_INCLUDE_DIR}")
endif()

# 设置生成可执行文件
add_executable(eigen_demo ${SRC_DIR}/main.cpp)