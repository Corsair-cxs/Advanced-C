/*************************************************************************
	> File Name: 2.线性筛.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Sun 15 Nov 2020 05:33:47 PM CST
 ************************************************************************/

#include <stdio.h>

#define MAX_N 8000000
int prime[MAX_N + 5];

void init() {
    for (int i = 2; i <= MAX_N; i++) {
        if (!prime[i]) prime[++prime[0]] = i;
        for (int j = 1; j <= prime[0]; j++) {
            if (i * prime[j] > MAX_N) break;
            prime[prime[j] * i] = 1;
            if(prime[i] % j == 0) break;
        }
    }
    return ;
}

int main() {
    init();
    printf("%d", prime[prime[0]]);
    return 0;
}
