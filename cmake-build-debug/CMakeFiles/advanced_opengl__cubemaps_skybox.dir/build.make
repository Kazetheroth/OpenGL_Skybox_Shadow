# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\OpenGL_Skybox_Shadow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\OpenGL_Skybox_Shadow\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\advanced_opengl__cubemaps_skybox.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\advanced_opengl__cubemaps_skybox.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\advanced_opengl__cubemaps_skybox.dir\flags.make

CMakeFiles\advanced_opengl__cubemaps_skybox.dir\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp.obj: CMakeFiles\advanced_opengl__cubemaps_skybox.dir\flags.make
CMakeFiles\advanced_opengl__cubemaps_skybox.dir\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp.obj: ..\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\OpenGL_Skybox_Shadow\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/advanced_opengl__cubemaps_skybox.dir/src/advanced_opengl/cubemaps_skybox/Skybox_Shadow.cpp.obj"
	C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\advanced_opengl__cubemaps_skybox.dir\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp.obj /FdCMakeFiles\advanced_opengl__cubemaps_skybox.dir\ /FS -c D:\OpenGL_Skybox_Shadow\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp
<<

CMakeFiles\advanced_opengl__cubemaps_skybox.dir\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/advanced_opengl__cubemaps_skybox.dir/src/advanced_opengl/cubemaps_skybox/Skybox_Shadow.cpp.i"
	C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx64\x64\cl.exe > CMakeFiles\advanced_opengl__cubemaps_skybox.dir\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\OpenGL_Skybox_Shadow\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp
<<

CMakeFiles\advanced_opengl__cubemaps_skybox.dir\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/advanced_opengl__cubemaps_skybox.dir/src/advanced_opengl/cubemaps_skybox/Skybox_Shadow.cpp.s"
	C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\advanced_opengl__cubemaps_skybox.dir\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp.s /c D:\OpenGL_Skybox_Shadow\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp
<<

# Object files for target advanced_opengl__cubemaps_skybox
advanced_opengl__cubemaps_skybox_OBJECTS = \
"CMakeFiles\advanced_opengl__cubemaps_skybox.dir\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp.obj"

# External object files for target advanced_opengl__cubemaps_skybox
advanced_opengl__cubemaps_skybox_EXTERNAL_OBJECTS =

..\bin\advanced_opengl\advanced_opengl__cubemaps_skybox.exe: CMakeFiles\advanced_opengl__cubemaps_skybox.dir\src\advanced_opengl\cubemaps_skybox\Skybox_Shadow.cpp.obj
..\bin\advanced_opengl\advanced_opengl__cubemaps_skybox.exe: CMakeFiles\advanced_opengl__cubemaps_skybox.dir\build.make
..\bin\advanced_opengl\advanced_opengl__cubemaps_skybox.exe: STB_IMAGE.lib
..\bin\advanced_opengl\advanced_opengl__cubemaps_skybox.exe: GLAD.lib
..\bin\advanced_opengl\advanced_opengl__cubemaps_skybox.exe: CMakeFiles\advanced_opengl__cubemaps_skybox.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\OpenGL_Skybox_Shadow\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\advanced_opengl\advanced_opengl__cubemaps_skybox.exe"
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/cubemaps.fs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/cubemaps.vs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/debug_quad.vs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/debug_quad_depth.fs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/shadow_mapping.fs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/shadow_mapping.vs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/shadow_mapping_depth.fs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/shadow_mapping_depth.vs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/skybox.fs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E copy D:/OpenGL_Skybox_Shadow/src/advanced_opengl/cubemaps_skybox/skybox.vs D:/OpenGL_Skybox_Shadow/bin/advanced_opengl
	C:\Users\Medhi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E vs_link_exe --intdir=CMakeFiles\advanced_opengl__cubemaps_skybox.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\mt.exe --manifests  -- C:\PROGRA~2\MICROS~4\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\advanced_opengl__cubemaps_skybox.dir\objects1.rsp @<<
 /out:..\bin\advanced_opengl\advanced_opengl__cubemaps_skybox.exe /implib:advanced_opengl__cubemaps_skybox.lib /pdb:D:\OpenGL_Skybox_Shadow\bin\advanced_opengl\advanced_opengl__cubemaps_skybox.pdb /version:0.0  /machine:x64 /debug /INCREMENTAL /subsystem:console   -LIBPATH:D:\OpenGL_Skybox_Shadow\lib  glfw3.lib opengl32.lib assimp.lib freetype.lib irrKlang.lib STB_IMAGE.lib GLAD.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\advanced_opengl__cubemaps_skybox.dir\build: ..\bin\advanced_opengl\advanced_opengl__cubemaps_skybox.exe

.PHONY : CMakeFiles\advanced_opengl__cubemaps_skybox.dir\build

CMakeFiles\advanced_opengl__cubemaps_skybox.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\advanced_opengl__cubemaps_skybox.dir\cmake_clean.cmake
.PHONY : CMakeFiles\advanced_opengl__cubemaps_skybox.dir\clean

CMakeFiles\advanced_opengl__cubemaps_skybox.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\OpenGL_Skybox_Shadow D:\OpenGL_Skybox_Shadow D:\OpenGL_Skybox_Shadow\cmake-build-debug D:\OpenGL_Skybox_Shadow\cmake-build-debug D:\OpenGL_Skybox_Shadow\cmake-build-debug\CMakeFiles\advanced_opengl__cubemaps_skybox.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\advanced_opengl__cubemaps_skybox.dir\depend

