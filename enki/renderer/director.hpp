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
