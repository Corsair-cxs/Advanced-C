/*************************************************************************
	> File Name: 1.素数筛.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Sun 15 Nov 2020 11:45:50 AM CST
 ************************************************************************/

#include <stdio.h>
#define MAX_N 10000

int prime[MAX_N + 5] = {0};
void init() {
    for (int i = 2; i < MAX_N; i++) {
        if (prime[i]) continue;
        prime[++prime[0]] = i;
        for (int j = i * i; j < MAX_N; j += i) {
            prime[j] = 1;
        }
    }
}

int main() {
    init();
    for (int i = 1; i <= prime[0]; i++) {
        printf("%d\n", prime[i]);
    }
    return 0;
}
