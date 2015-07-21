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
class Application
{
  public:
    Application()
    {
      // create default context
      // create glrenderer
      // create signals

      // create controllers
      _running = false;
    }
    ~Application()
    {
      // clean up threads
    }

    void run()
    {
      _running = true;
      while(_running)
      {
        //default_context.signals["updatescenestart"].emit(get_default_context())
        //default_context.signals["renderstart"].emit(get_default_context())
        //wait till next frame
      }
    }

  private:
    bool _running;
    // default_context
};
