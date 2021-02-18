/*************************************************************************
	> File Name: 3.test.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Fri 20 Nov 2020 04:42:19 PM CST
 ************************************************************************/

#include <stdio.h>

#define MAX_N 10000000
int prime[MAX_N + 5];

void init() {
    for (int i = 2; i <= MAX_N; i++) {
        if (!prime[i]) prime[++prime[0]] = i;
        for (int j = 1;j <= prime[0]; j++) {
            if (prime[j] * i > MAX_N) break;
            prime[prime[j] * i] = 1;
            if (i % prime[j] == 0) break;
        }
    }
}

int binary_search(int goal, int f) {
    int l = 1, r = prime[0];
    while (l <= r) {
        int mid = (l + r) / 2;
        if (prime[mid] == goal) return mid;
        if (prime[mid] < goal) l = mid + 1;
        else r = mid - 1;
    }
    if (f == 1) {
        return l;
    } else if (f == -1) {
        return r;
    }
    return -1;
}

void check() {
    int n, m;
    scanf ("%d %d", &m, &n);
    if (m > n) {
        m ^= n ^= m ^= n;
    }
    int l = binary_search(m, -1), r = binary_search(n, -1);
    //printf("l: %d r: %d\n", prime[l], prime[r]);
    if (l == r && prime[l] != m && prime[r] != r) {
        printf("0");
        return ;
    }
    for (int i = l; i <= r; i++) {
        if (i > l) printf("\n");
        printf("%d", prime[i]);
    }
}
int main() {
    init();
    check();
    return 0;
}
