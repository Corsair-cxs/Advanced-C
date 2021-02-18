/*************************************************************************
	> File Name: 2.test.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Fri 06 Nov 2020 03:49:58 PM CST
 ************************************************************************/

#include <stdio.h>

int main() {
    char str[100] = {0};
    int ret = 0;
    while (ret = scanf("%[^\n]s", str) != EOF) {
        getchar();
        printf(" has %4d charictors\n", printf("%s", str));
    }
    return 0;
}
