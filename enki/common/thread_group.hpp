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
#ifndef THREAD_GROUP_HPP
#define THREAD_GROUP_HPP

#include <thread>
#include <vector>

namespace enki {
class thread_group {
 public:
  thread_group(int threads, std::function<void()> function)
      : function_(function), thread_count_(threads) {}

  ~thread_group() {}

  void run() {
    for (int i = 0; i < thread_count_; ++i) {
      auto t = std::make_unique<std::thread>(std::thread(function_));
      t->detach();
      thread_pool_.push_back(std::move(t));
    }
  }

  void join_all() {
    for (auto &t : thread_pool_) {
      t->join();
      t.reset(nullptr);
    }
    thread_pool_.clear();
  }

 private:
  std::function<void()> function_;
  int thread_count_;
  std::vector<std::unique_ptr<std::thread>> thread_pool_;
};
}
#endif /* THREAD_GROUP_HPP */
