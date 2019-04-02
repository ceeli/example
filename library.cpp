#include "library.hpp"

std::string message(int sel)
{
    if (sel == 0)
        return "Hello, World!";
    return "No";
}

int my_random()
{
    return 4;
}
