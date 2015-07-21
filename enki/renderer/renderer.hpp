#ifndef __RENDERER_HPP
#define __RENDERER_HPP

#include <iostream>
#include <chrono>
#include <thread>
#include <future>
#include <queue>
#include <mutex>
#include <memory>
#include <boost/asio.hpp>
#include <boost/asio/deadline_timer.hpp>
#include <boost/asio/io_service.hpp>
#include <boost/log/trivial.hpp>

namespace enki {

class renderer {
  typedef boost::asio::io_service::work asio_work;
  typedef renderer self;

 public:
  typedef std::function<void()> work_t;
  renderer()
      : render_service_(),
        result_service_(),
        render_work_(std::make_unique<asio_work>(render_service_)),
        result_work_(result_service_),
        running_(false),
        working_(false),
        queue_lock_() {}

  ~renderer() { stop(); }

  void start() {
    if (!running_) {
      render_worker = std::thread(std::bind(&self::run_render_service, this));
      render_worker.detach();
      result_worker = std::thread(std::bind(&self::run_result_service, this));
      result_worker.detach();
      running_ = true;
    }
  }

  void stop() {
    if (running_) {
      /* render_service_.stop(); */
      render_work_.reset();
      render_worker.join();
      result_service_.stop();
      result_worker.join();
      running_ = false;
    }
  }

  void add_work(int p, work_t work) {
    /* render_service_.post(work); */
    queue_lock_.lock();
    work_queue_.push(queued_handler(p, work));
    if (working_ == false)
      render_service_.post(std::bind(&self::queue_handler, this));
    queue_lock_.unlock();
  }

  void add_result(work_t result) { result_service_.post(result); }

 private:
  class queued_handler {
   public:
    queued_handler(int p, std::function<void()> f)
        : priority_(p), function_(f) {}

    void execute() { function_(); }

    friend bool operator<(const queued_handler& a, const queued_handler& b) {
      return a.priority_ < b.priority_;
    }

   private:
    int priority_;
    std::function<void()> function_;
  };

  void queue_handler() {
    queue_lock_.lock();
    working_ = true;
    while (!work_queue_.empty()) {
      queued_handler handler = work_queue_.top();
      work_queue_.pop(); /* must pop here, if done after execution could pop
                            wrong element */
      queue_lock_.unlock();
      handler.execute();
      queue_lock_.lock();
    }
    working_ = false;
    queue_lock_.unlock();
  }

  void run_render_service() { render_service_.run(); }

  void run_result_service() { result_service_.run(); }

  std::thread render_worker;
  std::thread result_worker;
  boost::asio::io_service render_service_;
  boost::asio::io_service result_service_;
  /* boost::asio::io_service::work render_work_; */
  std::unique_ptr<asio_work> render_work_;
  boost::asio::io_service::work result_work_;
  std::priority_queue<queued_handler> work_queue_;
  std::atomic_bool running_;
  std::atomic_bool working_;
  std::mutex queue_lock_;
};

} /* enki */
#endif
