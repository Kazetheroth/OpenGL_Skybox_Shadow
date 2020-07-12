cmake_minimum_required (VERSION 2.8)
cmake_policy(VERSION 2.8)

project (Skybox_Shadow)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/modules/")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

link_directories(${CMAKE_SOURCE_DIR}/lib)

list(APPEND CMAKE_CXX_FLAGS "-std=c++11")


set(LIBS glfw3 opengl32 assimp freetype irrKlang)

set(CHAPTERS
        advanced_opengl
        skybox_shadow
)

set(advanced_opengl
    skybox_shadow
)




configure_file(configuration/root_directory.h.in configuration/root_directory.h)
include_directories(${CMAKE_BINARY_DIR}/configuration)

# first create relevant static libraries requried for other projects
add_library(STB_IMAGE "src/stb_image.cpp")
set(LIBS ${LIBS} STB_IMAGE)

add_library(GLAD "src/glad.c")
set(LIBS ${LIBS} GLAD)

macro(makeLink src dest target)
  add_custom_command(TARGET ${target} POST_BUILD COMMAND ${CMAKE_COMMAND} -E create_symlink ${src} ${dest}  DEPENDS  ${dest} COMMENT "mklink ${src} -> ${dest}")
endmacro()

# then create a project file per tutorial
foreach(CHAPTER ${CHAPTERS})
    foreach(DEMO ${${CHAPTER}})
        file(GLOB SOURCE
            "src/${CHAPTER}/${DEMO}/*.h"
            "src/${CHAPTER}/${DEMO}/*.cpp"
            "src/${CHAPTER}/${DEMO}/*.vs"
            "src/${CHAPTER}/${DEMO}/*.fs"
            "src/${CHAPTER}/${DEMO}/*.gs"
        )
        set(NAME "${CHAPTER}__${DEMO}")
        add_executable(${NAME} ${SOURCE})
        target_link_libraries(${NAME} ${LIBS})
        if(WIN32)
            set_target_properties(${NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/${CHAPTER}")
            set_target_properties(${NAME} PROPERTIES VS_DEBUGGER_WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/${CHAPTER}/Debug")
        elseif(UNIX AND NOT APPLE)
            set_target_properties(${NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/${CHAPTER}")
        elseif(APPLE)
            set_target_properties(${NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/${CHAPTER}")
            set_target_properties(${NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_SOURCE_DIR}/bin/${CHAPTER}")
            set_target_properties(${NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_SOURCE_DIR}/bin/${CHAPTER}")
        endif(WIN32)
        # copy shader files to build directory
        file(GLOB SHADERS
                 "src/${CHAPTER}/${DEMO}/*.vs"
                 # "src/${CHAPTER}/${DEMO}/*.frag"
                 "src/${CHAPTER}/${DEMO}/*.fs"
                 "src/${CHAPTER}/${DEMO}/*.gs"
        )
        foreach(SHADER ${SHADERS})
            if(WIN32)
                # configure_file(${SHADER} "test")
                add_custom_command(TARGET ${NAME} PRE_BUILD COMMAND ${CMAKE_COMMAND} -E copy ${SHADER} $<TARGET_FILE_DIR:${NAME}>)
            elseif(UNIX AND NOT APPLE)
                file(COPY ${SHADER} DESTINATION ${CMAKE_SOURCE_DIR}/bin/${CHAPTER})
            elseif(APPLE)
                # create symbolic link for *.vs *.fs *.gs
                get_filename_component(SHADERNAME ${SHADER} NAME)
                makeLink(${SHADER} ${CMAKE_SOURCE_DIR}/bin/${CHAPTER}/${SHADERNAME} ${NAME})
            endif(WIN32)
        endforeach(SHADER)
        # if compiling for visual studio, also use configure file for each project (specifically to set up working directory)
        if(MSVC)
            configure_file(${CMAKE_SOURCE_DIR}/configuration/visualstudio.vcxproj.user.in ${CMAKE_CURRENT_BINARY_DIR}/${NAME}.vcxproj.user @ONLY)
        endif(MSVC)
    endforeach(DEMO)
endforeach(CHAPTER)

include_directories(${CMAKE_SOURCE_DIR}/includes)
