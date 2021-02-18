/*************************************************************************
	> File Name: 5.MAX_micro.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Mon 16 Nov 2020 03:56:22 PM CST
 ************************************************************************/

#include <stdio.h>

#define MAX(a, b) ({\
    __typeof(a) _a = (a);\
    __typeof(b) _b = (b);\
    _a > _b ? _a : _b;\
})
#define MAX2(a, b) ((a) > (b) ? (a) : (b))

#define P(b) { \
    printf("%s : %d\n", #b, (b));\
}

void test() {
    P(MAX(2, 3));
    P(5 + MAX(2, 3));
    P(MAX(2, MAX(3, 4)));
    P(MAX(2, 3 > 4 ? 3 : 4));
    int a = 7;
    P(MAX(a++, 6));
    P(a);
    return ;
}
int main() {
    test();

    return 0;
}
