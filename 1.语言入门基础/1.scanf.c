/*************************************************************************
	> File Name: 1.scanf.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Fri 06 Nov 2020 03:38:28 PM CST
 ************************************************************************/

#include <stdio.h>

int main() {
    int n, i = 0;
    while(scanf("%d", &n) != -1) {
        i++;
        printf("%-4d: %4d\n", i, n);
    }
    return -1;

}
