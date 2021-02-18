/*************************************************************************
	> File Name: test.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Sun 15 Nov 2020 07:56:27 PM CST
 ************************************************************************/

#include <stdio.h>

typedef struct S {
    int a;
    char b;
}S;
int main() {
    S sa[5][6];
    printf("%ld", &sa[5][5] - &sa[0][0]);
    int num['10'];
    return 0;
}
