/*
 * Copyright 2015 Eduardo Tiago Braun
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *     Unless required by applicable law or agreed to in writing, software
 *     distributed under the License is distributed on an "AS IS" BASIS,
 *     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *     See the License for the specific language governing permissions and
 *     limitations under the License.
 */

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
