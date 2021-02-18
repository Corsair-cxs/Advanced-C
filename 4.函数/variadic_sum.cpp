/*************************************************************************
	> File Name: variadic_sum.cpp
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Thu 12 Nov 2020 09:46:59 AM CST
 ************************************************************************/

#include <stdio.h>
#include <stdarg.h>

#define P_INT_SUM(a) printf("%d\n", a)

int sum(int n, ...) {
    int sum = 0;
    va_list v;
    va_start(v, n);
    while (n--) {
        int tmp = va_arg(v, int);
        sum += tmp * n;
        printf("sum += %-4d * %-4d\n", tmp, n);
    }
    printf("SUM = %-4d\n\n", sum);
    return sum;
}

int main() {
    va_list v;
    P_INT_SUM(sum(3, 1, 4, 7));
    P_INT_SUM(sum(5, 56, 3, 89, 1));
    return 0;
}
