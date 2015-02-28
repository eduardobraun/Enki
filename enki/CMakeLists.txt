add_library (enki enki.cpp enki.h)

add_executable (demo main.cpp)
target_link_libraries (demo enki glfw ${OPENGL_glu_LIBRARY} ${GLFW_LIBRARIES})

