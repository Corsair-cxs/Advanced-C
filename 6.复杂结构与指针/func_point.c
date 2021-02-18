/*************************************************************************
	> File Name: func_point.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Mon 02 Nov 2020 10:08:31 PM CST
 ************************************************************************/

#include <stdio.h>

typedef int (*func)(int);

int func2(int n) {
    printf("func2(%d) = %d\n", n,  n * n);
    return n + n;
};

func func1 = func2;
int main() {
    int m = func1(3);
    printf("m = %d\n", m);
    m = (*func2)(4);
    printf("m = %d\n", m);
    return 0;
}
