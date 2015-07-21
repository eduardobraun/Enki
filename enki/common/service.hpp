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
