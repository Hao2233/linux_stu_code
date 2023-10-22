cmake_minimum_required(VERSION 3.20)

project(cmaeke_find_file_demo)

add_executable(cmaeke_find_file_demo main.cpp)


# find_file
# find_file(outVar
#     name | NAMES name1 [name2 ...]
#     [HINTS path1 [path2 ...]]
#     [PATHS path1 [path2 ...]]
#     [PATH_SUFFIXES suffix1 [suffix2 ...]]
#     [DOC "cache documentation string"]
#     [NO_DEFAULT_PATH]
#     [NO_CMAKE_ENVIRONMENT_PATH]
#     [NO_CMAKE_PATH]
#     [NO_SYSTEM_ENVIRONMENT_PATH]
#     [NO_CMAKE_SYSTEM_PATH]
#     [CMAKE_FIND_ROOT_PATH_BOTH | ONLY_CMAKE_FIND_ROOT_PATH | NO_CMAKE_FIND_ROOT_PATH]
#     [CMAKE_FIND_ROOT_PATH_MODE_BOTH | ONLY_CMAKE_FIND_ROOT_PATH | NO_CMAKE_FIND_ROOT_PATH]
#     [CMAKE_FIND_ROOT_PATH_MODE_PACKAGE]
#    )

# find_package()
# find_package(<package> [version] [EXACT] [QUIET] [MODULE]
#     [REQUIRED] [[COMPONENTS] [components...]]
#     [OPTIONAL_COMPONENTS components...]
#     [NO_POLICY_SCOPE]
#     [NAMES name1 [name2 ...]]
#     [CONFIG | NO_MODULE | NO_POLICY_SCOPE]
#     [PATHS path1 [path2 ...]]
#     [PATH_SUFFIXES suffix1 [suffix2 ...]]
#     [HINTS path1 [path2 ...]]
#     [HINTS_PROVIDED | NO_HINTS_PROVIDED]
#     [NO_DEFAULT_PATH]
#     [NO_CMAKE_ENVIRONMENT_PATH]
#     [NO_CMAKE_PATH]
#     [NO_SYSTEM_ENVIRONMENT_PATH]
#     [NO_CMAKE_SYSTEM_PATH]
#     [CMAKE_FIND_ROOT_PATH_BOTH | ONLY_CMAKE_FIND_ROOT_PATH | NO_CMAKE_FIND_ROOT_PATH]
#     [CMAKE_FIND_ROOT_PATH_MODE_BOTH | ONLY_CMAKE_FIND_ROOT_PATH | NO_CMAKE_FIND_ROOT_PATH]
#     [CMAKE_FIND_ROOT_PATH_MODE_PACKAGE]
#     [CMAKE_FIND_FRAMEWORK]
#     [CMAKE_FIND_APPBUNDLE]
#     [CMAKE_FIND_ROOT_PATH_BOTH | ONLY_CMAKE_FIND_ROOT_PATH | NO_CMAKE_FIND_ROOT_PATH]
#     [CMAKE_FIND_ROOT_PATH_MODE_BOTH | ONLY_CMAKE_FIND_ROOT_PATH | NO_CMAKE_FIND_ROOT_PATH]
#     [CMAKE_FIND_ROOT_PATH_MODE_PACKAGE]
# )