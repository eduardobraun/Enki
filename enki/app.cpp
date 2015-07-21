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
