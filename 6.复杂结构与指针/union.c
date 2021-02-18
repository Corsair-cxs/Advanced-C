/*************************************************************************
	> File Name: union.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Thu 29 Oct 2020 07:13:20 PM CST
 ************************************************************************/

#include <stdio.h>

union IP {
    struct {
        unsigned char a1;
        unsigned char a2;
        unsigned char a3;
        unsigned char a4;
    } ip;
    unsigned int num;
};
int is_little() {
    static int num = 1;
    return ((char *)(&num))[0];
}

int main() {
    printf("%d\n", is_little());
    union IP p;
    char str[100] = {0};
    int arr[4];
    while (~scanf("%s", str)) {
        sscanf(str, "%d.%d.%d.%d", arr, arr + 1, arr + 2, arr + 3);
        p.ip.a1 = arr[0];
        p.ip.a2 = arr[1];
        p.ip.a3 = arr[2];
        p.ip.a4 = arr[3];
        printf("%u\n", p.num);
    }
    return 0;
}
