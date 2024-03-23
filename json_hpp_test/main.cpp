#include <json.hpp>
#include <iostream>

using namespace std;
using json = nlohmann::json;

int main() {
    json js;

    js["name"] = "dengwangtao";
    js["age"] = 23;
    js["ids"] = {1, 2, 3, 4, 5};

    cout << js.dump() << endl;

    return 0;
}