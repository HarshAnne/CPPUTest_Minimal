#include "CppUTest/TestHarness.h"

// create a test group
TEST_GROUP(dummy_test)
{
    void setup()
    {
        //init
    }

    void teardown()
    {
        //deinit
    }
};

// create a test for that test group
TEST(dummy_test, pass_me)
{
    CHECK_EQUAL(1,1);
}

// create test to confirm fail works
// TEST(dummy_test, fail_me)
// {
//     CHECK_EQUAL(1,0);
// }
