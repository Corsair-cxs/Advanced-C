/*************************************************************************
	> File Name: variadic_func.cpp
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Thu 12 Nov 2020 09:18:30 AM CST
 ************************************************************************/
#include <stdio.h>
#include <inttypes.h>
#include <stdarg.h>

int sum(int n, ...) {
    int sum = 0;
    va_list arg;
    va_start(arg, n);
    while (n--) {
        int tmp = va_arg(arg, int);
        printf("%d ", tmp);
        sum += tmp;
    }
    printf("\n");
    va_end(arg);
    return sum;
}

int max_int(int n, ...) {
    int ans = INT32_MIN;
    va_list arg;
    va_start(arg, n);
    while (n--) {
        int tmp = va_arg(arg, int);
        if (tmp > ans) ans = tmp;
    }
    va_end(arg);
    return ans;
}

int main() {
    printf("%d\n", max_int(3, 1, 5, 10));
    printf("%d\n", max_int(2, 1, 3));
    printf("%d\n", sum(4, 1, 8, 19, 12, 99));


    return 0;
}
