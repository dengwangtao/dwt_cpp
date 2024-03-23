#include <iostream>
#include <boost/thread/thread.hpp>
#include <cstdlib>

using namespace std;

volatile bool isRunning = true;

void func1() {
    static int cnt = 0;
    while(isRunning) {
        cout << "func1: " << cnt ++ << endl;
        sleep(1);
    }
}

void func2() {
    static int cnt = 0;
    while(isRunning) {
        cout << "func2: " << cnt ++ << endl;
        sleep(2);
    }
}

int main() {

    boost::thread th1(&func1);
    boost::thread th2(&func2);


    system("read");
    isRunning = false;

    th1.join();
    th2.join();


    cout << "exit" << endl;
    return 0;
}