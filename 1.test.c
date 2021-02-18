/*************************************************************************
	> File Name: 1.test.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Fri 20 Nov 2020 03:42:24 PM CST
 ************************************************************************/

#include <stdio.h>

typedef union node {
    struct ch {
        char c1;
        char c2;
        char c3;
        char c4;
    } ch;
    int num;
} Node;

int main() {
    Node n1, n2;
    scanf ("%d", &n1.num);
    n2.ch.c4 = n1.ch.c2;
    n2.ch.c3 = n1.ch.c1;
    n2.ch.c2 = n1.ch.c4;
    n2.ch.c1 = n1.ch.c3;
    
    printf("%0x -> %0x\n", n1.num, n2.num);
    printf("%d -> %d\n", n1.num, n2.num);
    return 0;
}
