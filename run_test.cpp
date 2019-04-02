#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "library.hpp"

TEST_CASE("Hello World Program")
{
    REQUIRE(message() == "Hello, World!");
}
