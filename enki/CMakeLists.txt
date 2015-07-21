add_library (enki enki.cpp enki.h ./renderer/renderer.hpp ./renderer/director.hpp
             ./common/thread_group.hpp ./common/service.hpp)

add_executable (demo main.cpp)
target_link_libraries (demo enki glfw ${Boost_LIBRARIES} ${OPENGL_glu_LIBRARY} ${GLFW_LIBRARIES})

