#define BOOST_LOG_DYN_LINK 1
#include <iostream>
#include <boost/log/trivial.hpp>

#include "renderer/director.hpp"

/* #include <enki/renderer/renderer.hpp> */

float aspect_ratio;

/* static void resize_callback(GLFWwindow* window, int width, int height) */
/* { */
/*   // should never happen, but need to use the window variable */
/*   // to get rid of the warning. */
/*   if (!window){ */
/*     glfwTerminate(); */
/*     exit(EXIT_FAILURE); */
/*   } */

/*   glViewport(0, 0, width, height); */
/*   aspect_ratio = height ? width / (float) height : 1.f; */
/*   std::cout << "New size: " << std::to_string(width) << "x" << */
/*     std::to_string(height) << " ratio: " << */
/*     std::to_string(aspect_ratio) << std::endl; */
/* } */

void funlog(const char* t) { BOOST_LOG_TRIVIAL(trace) << t; }
int main(int argc, char** argv) {
  std::cout << "Main stub.\n";
  std::cout << "argc: " << argc << "\n";
  std::cout << "argv: " << argv << "\n";

  enki::director director{};
  director.start();

  std::cout << "end\n";
  while (true)
    ;
  /* renderer.stop(); */
  // Enki::Window win{};
  // win.Init();

  // while(!win.should_close())
  // {
  // 	win.render();
  // }

  /* Enki::Renderer renderer{}; */
  /* renderer.Start(); */

  return 0;
}
