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
        render_work_(std::make_unique<asio_work>(render_service_)),
        running_(false),
        working_(false),
        queue_lock_() {}

  ~renderer() { stop(); }

  void start() {
    if (!running_) {
      render_worker = std::thread(std::bind(&self::run_render_service, this));
      render_worker.detach();
      running_ = true;
    }
  }

  void stop() {
    if (running_) {
      render_work_.reset();
      render_worker.join();
      render_service_.reset();
      running_ = false;
    }
  }

  void add_work(int p, work_t work) {
    queue_lock_.lock();
    work_queue_.push(queued_handler(p, work));
    if (working_ == false)
      render_service_.post(std::bind(&self::queue_handler, this));
    queue_lock_.unlock();
  }

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

  std::thread render_worker;
  boost::asio::io_service render_service_;
  std::unique_ptr<asio_work> render_work_;
  std::priority_queue<queued_handler> work_queue_;
  std::atomic_bool running_;
  std::atomic_bool working_;
  std::mutex queue_lock_;
};

} /* enki */
#endif
