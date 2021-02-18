/*************************************************************************
	> File Name: 7.swap.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Mon 16 Nov 2020 10:06:31 AM CST
 ************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

#define swap_value(a, b) (a) ^= (b) ^= (a) ^=(b)
#define swap_type(a, b) {\
    __typeof(a) c = (a);\
    (a) = (b);\
    (b) = (c);\
}

#define COLOR(a, b) "\033[" #b "m" a "\033[0m"
#define COLOR_HL(a, b) "\033[1;" #b "m" a "\033[0m"

#define GREEN(a)    COLOR(a, 32)
#define RED(a)      COLOR(a, 31)
#define BLUE(a)     COLOR(a, 34)
#define YELLOW(a)   COLOR(a, 33)
#define PURPLE(a)   COLOR(a, 35)

#define GREEN_HL(a)     COLOR_HL(a, 32)
#define RED_HL(a)       COLOR_HL(a, 31)
#define BLUE_HL(a)      COLOR_HL(a, 34)
#define YELLOW_HL(a)    COLOR_HL(a, 33)
#define PURPLE_HL(a)    COLOR_HL(a, 35)

typedef struct char_node {
    char a1, a2, a3, a4;
} Char_node;

typedef struct node {
    union a {
        Char_node ch_n;
        int num;
    } A;
    int number;
} Node;
#define pointer(T) typeof(T*)
#define array(T, n) typeof(T [n])

#define P_NODE(n) { \
    printf("%s \n \tA: a1 = %2x, a2= %2x, a3= %2x, a4= %2x, num = %x\n \tnumber = %d\n",\
           PURPLE(#n),\
           (n).A.ch_n.a1, \
           (n).A.ch_n.a2, \
           (n).A.ch_n.a3, \
           (n).A.ch_n.a4, \
           (n).A.num,\
           (n).number\
          );\
}

int main() {
    //swap_value 
    printf(RED(" ==== 整型值 ====\n"));
    printf(YELLOW(" -- 转换前 --\n"));
    int a_d = 4, b_d = 3;
    printf("a_d = %d b_d = %d\n", a_d, b_d);
    swap_value(a_d, b_d);
    printf(BLUE(" -- 转换后 --\n"));
    printf("a_d = %d b_d = %d\n", a_d, b_d);

    //swap_type
    //double类型的转换
    
    printf(RED("\n\n ==== 浮点数类型 ====\n"));
    printf(YELLOW(" -- 转换前 --\n"));
    double a_lf = 4.55, b_lf = 6.77;
    printf("a_lf = %lf b_lf = %lf\n", a_lf, b_lf);
    //swap_value(a_lf, b_lf); /*这里会报错，不支持对浮点数进行按位异或运算*/
    swap_type(a_lf, b_lf);
    printf(BLUE(" -- 转换后 --\n"));
    printf("a_lf = %lf b_lf = %lf\n", a_lf, b_lf);

    //字符数组指针类型的转换
    
    printf(RED("\n\n ==== 数组指针类型 ====\n"));
    printf(YELLOW(" -- 转换前 --\n"));
    char a_s[50] = {"Hello!"};
    char b_s[50] = {"Welcome to c programming!"};
    printf("a_s = %s\nb_s = %s\n", a_s, b_s);
    char *a_p = a_s, *b_p = b_s;
    swap_type(a_p, b_p);
    printf(BLUE(" -- 转换后 --\n"));
    printf("a_s = %s\nb_s = %s\n", a_p, b_p);
    
    
    printf(RED("\n\n ==== 结构体类型 ====\n"));
    printf(YELLOW(" -- 转换前 --\n"));
    //结构体类型的转换
    Node node1, node2;
    node1.A.num = 0x1234567;
    node1.number = 1;
    node2.A.num = 0x7654321;
    node2.number = 2;

    P_NODE(node1);
    P_NODE(node2);
    swap_type(node1, node2);
    printf(BLUE(" -- 转换后 --\n"));
    P_NODE(node1);
    P_NODE(node2);
    
    __typeof(Node*) node_arr[4];
    node_arr[1] = &node1;
    node_arr[2] = &node2;
    P_NODE(*node_arr[1]);
    P_NODE(*node_arr[2]);

    __typeof(__typeof(Node*)[4]) node_arr2[4];
    node_arr2[1][1] = node_arr[1];
    node_arr2[2][2] = node_arr[2];
    P_NODE(*node_arr2[1][1]);
    P_NODE(*node_arr2[2][2]);

    pointer(Node) node_p = (Node *)malloc(sizeof(Node));
    array(Node, 3) node_arr3;
    node_p = &node1;
    (*node_p).A.num = 0x8888888;
    (*node_p).number = 3;
    node_arr3[1] = (*node_p);
    P_NODE(node_arr3[1]);
    P_NODE(*node_p);
    

    // 求内存偏移量
    printf(RED_HL("\n\n ==== 内存偏移量求解 ====\n"));
    long int offset = (long int)(&(((Node *)NULL)->A.ch_n.a4));
    printf("offset: %ld\n", offset);
    long int offset2 = (long int)offsetof(Node, A.ch_n.a4);
    printf("offset2: %ld\n", offset2);

    return 0;

}
