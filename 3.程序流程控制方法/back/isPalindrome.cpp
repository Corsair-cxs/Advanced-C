/*************************************************************************
	> File Name: isPalindrome.cpp
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Wed 11 Nov 2020 09:49:43 AM CST
 ************************************************************************/

#include <stdio.h>

bool isPalindrome(int x, int n) {
    if (x < 0) return false;
    int y = 0, z = x;
    while (x) {
        y = y * n + x % n;
        x /= n;
    }
    return z == y;
}

int main() {
    int n, Cov = 10;
    scanf("%d", &n);
    if (isPalindrome(n, Cov)) {
        printf("Num: %d in Cov: %d is a reverse num!\n", n, Cov);
    } else {
        printf("NO! It's not a reverse num!\n");
    }
    return 0;
}
