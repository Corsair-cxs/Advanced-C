/*************************************************************************
	> File Name: 4.牛顿迭代.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Mon 16 Nov 2020 09:41:00 AM CST
 ************************************************************************/

#include <stdio.h>
#include <math.h>

double F(double x, double n) {
    return x * x - n;
}

double f(double x) {
    return 2 * x;
}

double NewTon(double (*F)(double, double), double (*f)(double), double n) {
    double x = n / 2.0;
    #define EPSL 1e-7
    while (fabs(F(x, n)) > EPSL) {
        x -= F(x, n) / f(x);
    }
    #undef EPSL
    return x;
}

double my_sqrt(double n) {
    return NewTon(F, f, n);
}
int main() {
    double n;
    while (~scanf("%lf", &n)) {
        printf("sqrt(%g): %g\n", n, sqrt(n));
        printf("my_sqrt(%g): %g\n", n, my_sqrt(n));
    }
    return 0;
}
