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
#ifndef SERVICE_HPP
#define SERVICE_HPP

#include <boost/asio.hpp>
#include "thread_group.hpp"

namespace enki {
class service {
  typedef service self;
  typedef boost::asio::io_service::work asio_work;

 public:
  service(int pool_size)
      : io_service_(),
        work_(std::make_unique<asio_work>(asio_work(io_service_))),
        thread_group_(pool_size, std::bind(&self::run_service, this)) {}

  ~service() {}

  void run() { thread_group_.run(); }

  void stop() {
    work_.reset(nullptr);
    thread_group_.join_all();
    io_service_.reset();
  }

  void post(std::function<void()> f) { io_service_.post(f); }

 private:
  void run_service(void) { io_service_.run(); }
  boost::asio::io_service io_service_;
  std::unique_ptr<asio_work> work_;
  enki::thread_group thread_group_;
};
}
#endif /* SERVICE_HPP */
