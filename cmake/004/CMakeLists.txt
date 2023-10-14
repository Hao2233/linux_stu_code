# CMake最小版本
cmake_minimum_required(VERSION 3.20)

# 项目名称
project(compile_link)

# 设置语言标准 
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# 设置构建类型
set(CMAKE_BUILD_TYPE Debug)

# 设置编译类型
set(CMAKE_C_FLAGS_DEBUG "-g -Wall")
set(CMAKE_CXX_FLAGS_DEBUG "-g -Wall")

# 输出信息
message(STATUS "CMAKE_BUILD_TYPE: ${CMAKE_BUILD_TYPE}")
message(STATUS "CMAKE_C_FLAGS_DEBUG: ${CMAKE_C_FLAGS_DEBUG}")
message(STATUS "CMAKE_CXX_FLAGS_DEBUG: ${CMAKE_CXX_FLAGS_DEBUG}")

# 设置二进制文件
add_executable(compile_link main.cpp)


# target_link_libraries 指令
# target_link_libraries(targetName
#     <PRIVATE|PUBLIC|INTERFACE> item1 item2 ...
#     [<PRIVATE|PUBLIC|INTERFACE> item1 item2 ...]
#     ...
# )
# 1. targetName：目标名称
# 2. private：私有链接，只对当前目标有效
# 3. public：公共链接，对当前目标和依赖它的目标都有效
# 4. interface：接口链接，只对依赖它的目标有效
# item：链接项，可以是库文件、库文件路径、链接选项等
# 该指令的作用是将链接项链接到目标上，链接

# target_link_options() 指令
# target_link_options(targetName
#     <PRIVATE|PUBLIC|INTERFACE> item1 item2 ...
#     [<PRIVATE|PUBLIC|INTERFACE> item1 item2 ...]
#     ...
# )

# 1. targetName：目标名称
# 2. private：私有链接选项，只对当前目标有效
# 3. public：公共链接选项，对当前目标和依赖它的目标都有效
# 4. interface：接口链接选项，只对依赖它的目标有效
# item：链接选项，可以是链接器选项等
# 该指令的作用是将链接选项链接到目标上，链接选项
# 与target_link_libraries()指令的区别是，target_link_libraries()指令可以链接库文件，而target_link_options()指令只能链接链接选项
