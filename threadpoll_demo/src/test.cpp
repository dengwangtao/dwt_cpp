#include <iostream>
#include <thread>
#include <chrono>
#include "thread_poll.hpp"
using namespace std;

int main() {

    ThreadPoll tp;

    cout << "Hello Thread Poll\n" << flush;

    for(int i = 0; i < 10; ++ i) {
        tp.addTask([i]() {

            for(int k = 0; k < 100; ++ k) {
                cout << std::this_thread::get_id() << " output: " << i << " " << k << endl;
            }
            std::this_thread::sleep_for(std::chrono::milliseconds(500));
            
        });
    }


    std::this_thread::sleep_for(std::chrono::milliseconds(5000));

    return 0;
}