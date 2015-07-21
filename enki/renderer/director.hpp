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
#ifndef DIRECTOR_HPP
#define DIRECTOR_HPP

#include <memory>
#include <boost/asio.hpp>

#include <enki/common/service.hpp>

#include "renderer.hpp"
#define GLFW_INCLUDE_GLU
#include <GLFW/glfw3.h>

namespace enki {

class director {
  typedef director self;

 public:
  director() : service_(5), renderer_() {}
  ~director() {}

  void start() {
    service_.run();
    renderer_.start();
    renderer_.add_work(99,
                       std::bind(&self::window_init, this, "Teste", 640, 480));
  }

  void stop() {
    service_.stop();
    renderer_.stop();
  }

 private:
  void window_init(std::string name, int w, int h) {
    if (!glfwInit()) {
      BOOST_LOG_TRIVIAL(fatal) << "glfwInit() failed!";
      return;
    }
    GLFWwindow* window = glfwCreateWindow(w, h, name.c_str(), NULL, NULL);
    if (!window) {
      glfwTerminate();
      BOOST_LOG_TRIVIAL(fatal) << "glfwCreateWindow() failed!";
      return;
    }
  }

  service service_;
  renderer renderer_;
};
}
#endif /* DIRECTOR_HPP */
