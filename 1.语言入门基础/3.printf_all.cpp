/*************************************************************************
	> File Name: 3.printf_all.cpp
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Fri 06 Nov 2020 07:50:10 PM CST
 ************************************************************************/

#include <stdio.h>
#define swap(a, b) {\
    __typeof(a) __temp = a;\
    a = b; b = __temp;\
}

int main() {
    int n;
    scanf("%d", &n);
    printf("%d\n", n);
    char str[1000] = {0}, buffer[1000] = {0}, *p = str, *q = buffer;
    sprintf(str, "%d.%d.%d.%d", 192, 168, 3, 74);
    if (n & 1) {
        sprintf(q, "(%s)", p);
        swap(p, q);
    }
    if (n & 2) {
        sprintf(q, "[%s]", p);
        swap(p, q);
    }
    if (n & 4) {
        sprintf(q, "{%s}", p);
        swap(p, q);
    }
    printf("%s\n", p);
    FILE *fout = fopen("3.output.txt", "w");
    fprintf(fout, "str: %s\n", p);
    fprintf(stdout, "stdout: %s\n", p);
    fprintf(stderr, "stderr: %s\n", p);
    return 0;
}
