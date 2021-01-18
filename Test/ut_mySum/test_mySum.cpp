#include "CppUTest/TestHarness.h"

/* extern "C" block needed to compile c files using g++ */
extern "C"
{
#include "mySum.h"
}

TEST_GROUP(mySum)
{
    int res;
    void setup()
    {
    }

    void teardown()
    {
    }
};

TEST(mySum, add_Add1and2)
{
    res = mySum_add(1,2);
    CHECK_EQUAL(3,res);
}

TEST(mySum, add_Add0and0)
{
    res = mySum_add(0,0);
    CHECK_EQUAL(0,res);
}