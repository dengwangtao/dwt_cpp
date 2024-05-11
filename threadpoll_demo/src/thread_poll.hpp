#include <thread>               // 线程
#include <mutex>                // 互斥锁
#include <condition_variable>   // 条件变量
#include <queue>
#include <functional>

class ThreadPoll {

public:
    ThreadPoll(int thread_num = 4):m_is_closed(false), m_thread_num(thread_num)  {

        for(int i = 0; i < thread_num; ++ i) {
            auto t = std::thread(std::bind(&ThreadPoll::Run, this));

            t.detach(); // 线程分离
        }

    }

    ~ThreadPoll() {
        close();
    }

    template<class T>
    void addTask(T&& task) {
        {
            std::unique_lock<std::mutex> lock(m_mtx);
            m_tasks_queue.emplace(std::forward<T>(task));
        }
        m_cv.notify_one();  // 唤醒
    }

    void close() {
        {
            std::lock_guard<std::mutex> lock(m_mtx);
            m_is_closed = true;
        }

        m_cv.notify_all();  // 唤醒所有线程
    }

private:
    void Run() {
        while(true) {
            std::unique_lock<std::mutex> lock(m_mtx);
            if(m_is_closed) {
                break;
            }
            if(!m_tasks_queue.empty()) {
                auto task = std::move(m_tasks_queue.front());
                m_tasks_queue.pop();
                lock.unlock(); // 解锁

                // 做任务
                task();

                // lock.lock(); // 加锁
            } else {
                m_cv.wait(lock);
            }
        }
    }


private:
    std::condition_variable m_cv; // 条件变量
    std::mutex m_mtx;             // 互斥锁

    std::queue<std::function<void()>> m_tasks_queue;    // 任务队列

    bool m_is_closed; // 是否关闭线程池
    int m_thread_num;  // 线程数

};