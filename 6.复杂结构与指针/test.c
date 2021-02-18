/*************************************************************************
	> File Name: test.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Thu 29 Oct 2020 08:34:10 PM CST
 ************************************************************************/

#include <stdio.h>

int main() {

    int n = 23;
    int *m = &n;
    scanf("%d", m);
    printf("%p\n", m);
    printf("%p\n", m + 1);
    printf("%p\n", &m);
    printf("%p\n", &m + 1);
    printf("%d\n", n);
    return 0;
}
