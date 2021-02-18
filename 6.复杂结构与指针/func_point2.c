/*************************************************************************
	> File Name: func_point2.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Mon 02 Nov 2020 10:21:20 PM CST
 ************************************************************************/

#include <stdio.h>

double Add(double a, double b) {return a + b;};
double Sub(double a, double b) {return a - b;};
double Mul(double a, double b) {return a * b;};
double Div(double a, double b) {return a / b;};
double Mod(double a, double b) {return (double)((int)a % (int)b);};

typedef double func_t(double, double);
func_t *funcs_2[5] = {Add, Sub, Mul, Div, Mod};

typedef double (*func_tp)(double, double);
func_tp funcs_3[5] = {Add, Sub, Mul, Div, Mod};

double (*funcs_1[5])(double, double) = {Add, Sub, Mul, Div, Mod};
char *msgTable[5] = {"Add", "Sub", "Mul", "Div", "Mod"};

int main() {
    double x = 0, y = 0;

    //Input
    if (scanf("%lf %lf", &x, &y) != 2) {
        printf("Invalid input!\n");
    }
    for (int i = 0; i < 5; i++) {
        printf("func1: %10s: %6.2lf, pointor: %10p\n", msgTable[i], funcs_1[i](x, y), (&funcs_1[i]));
        printf("func2: %10s: %6.2lf, pointor: %10p\n", msgTable[i], funcs_2[i](x, y), (&funcs_2[i]));
        printf("func3: %10s: %6.2lf, pointor: %10p\n", msgTable[i], funcs_3[i](x, y), (&funcs_3[i]));
    }

    return 0;
}
