# 指定CMake的最低版本
cmake_minimum_required(VERSION 3.10)

# 指定项目名称
project(MyProject)

# 查找HDF5库
set(HDF5_ROOT /usr/local/HDF_Group/HDF5/1.14.2)
find_package(HDF5 REQUIRED COMPONENTS C HL)

# 判断HDF5库是否找到
if (HDF5_FOUND)
    message(STATUS "HDF5_INCLUDE_DIRS: ${HDF5_INCLUDE_DIRS}")
    message(STATUS "HDF5_LIBRARIES: ${HDF5_LIBRARIES}")
else()
    message(FATAL_ERROR "HDF5 library not found")
endif()

# 添加可执行文件 注意这里的名称一致
add_executable(myTarget main.cpp)

# 添加HDF5库的头文件路径 注意这里的名称一致
target_include_directories(myTarget PRIVATE ${HDF5_INCLUDE_DIRS})

# 链接HDF5库
target_link_libraries(myTarget PRIVATE ${HDF5_LIBRARIES} ${HDF5_HL_LIBRARIES})
