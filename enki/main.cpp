#include <iostream>

//#define GLFW_INCLUDE_GLU
// #include <GLFW/glfw3.h>

/* #include <enki/renderer/renderer.hpp> */

float aspect_ratio;

// //========================================================================
// // Window resize callback function
// //========================================================================

// static void resize_callback(GLFWwindow* window, int width, int height)
// {
// 	// should never happen, but need to use the window variable
// 	// to get rid of the warning.
// 	if (!window){
// 		glfwTerminate();
// 		exit(EXIT_FAILURE);
// 	}

//     glViewport(0, 0, width, height);
//     aspect_ratio = height ? width / (float) height : 1.f;
//     std::cout << "New size: " << std::to_string(width) << "x" <<
//                   std::to_string(height) << " ratio: " <<
//                   std::to_string(aspect_ratio) << std::endl;
// }

int main(int argc, char** argv)
{
    std::cout << "Main stub.\n";
    std::cout << "argc: " << argc << "\n";
    std::cout << "argv: " << argv << "\n";


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
