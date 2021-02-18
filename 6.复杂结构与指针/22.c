/*************************************************************************
	> File Name: 22.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Sat 31 Oct 2020 02:16:27 PM CST
 ************************************************************************/

#include <stdio.h>

#define P(func) {\
    printf("%s = %d\n", #func, func);\
}
#define Pp(func) {\
    printf("%s = %p\n", #func, func);\
}
struct Date {
    int x, y;
};
int main() {
    struct Date a[2], *p = a; //a[1].x;
    a[0].x = a[0].y = 0;
    a[1].x = a[1].y = 1;
    Pp(p);
    Pp(p + 1);
    Pp(a);
    Pp(a + 1);
    P((*(a + 1)).x);
    P((a + 1) -> x);
    P((p + 1) -> x);
    P((*(p + 1)).x);
    P(p[1].x);
    P((&p[1])->x);
    P((&p[0] + 1)->x);
    P((*(&p[0] + 1)).x);
    return 0;
}
