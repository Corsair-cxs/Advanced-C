/*************************************************************************
	> File Name: test.cpp
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Sat 31 Oct 2020 08:21:27 PM CST
 ************************************************************************/
#include <stdio.h>
#include <haizei/test.h>
int add_lf(double a, double b) {
    return a + b;
};

int add(int a, int b) {
    return a + b;
};

TEST(testfunc, add) {
    EXPECT_EQ(add_lf(2.1,2.9), 5.0);
    EXPECT_EQ(add_lf(1.1,3.9), 5.1);
    EXPECT_EQ(add_lf(1.1,3.9), 5);
    EXPECT_EQ(add_lf(0,1), 1.0);
}

TEST(test, funcadd) {
    EXPECT_EQ(add(0,-1), 2);
    EXPECT_EQ(add(1,3), 4);
    EXPECT_EQ(add(2,2), 2);
    EXPECT_EQ(add(0,1), 1);
}

TEST(testfunc, add2) {
    EXPECT_EQ(add(2,3), 2);
    EXPECT_EQ(add(1,3), 4);
    EXPECT_EQ(add(2,2), 2);
    EXPECT_EQ(add(0,1), 1);
}

int main(int argc, char *argv[]) {
    double x = 9.0;
    return RUN_ALL_TESTS();
    //return 0;
}

