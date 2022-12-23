#include <vector>
#include <iostream>
#include <sqlite3.h>

int main() {
    std::cout << "this is working :>" << std::endl;
    sqlite3 *database;

    sqlite3_open("moinmoin", &database);
}
