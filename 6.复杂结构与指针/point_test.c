/*************************************************************************
	> File Name: point_test.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Thu 12 Nov 2020 04:34:21 PM CST
 ************************************************************************/

#include <stdio.h>
#define CNT 5 
int func1(int n) {

    return n;
}
int func2(int n) {

    return n;
}
int func3(int n) {

    return n;
}
int main() {
    int((*p[CNT])(int));
    p[0] = func1;
    p[1] = func2;
    p[2] = func3;
    for (int i = 0; i < CNT; i++) {
        printf("Address of p[%d] = %p\n", i, p[i]);
    }
    return 0;
}
