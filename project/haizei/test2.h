/*************************************************************************
	> File Name: test.h
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Sat 31 Oct 2020 08:36:10 PM CST
 ************************************************************************/

#ifndef _TEST_H
#define _TEST_H

// 课后自己实现
#define NAME(a, b) a##_##b

#define TEST(a, b)\
void a##_##b();\
__attribute__((constructor))\
void add##_TEST_##a##_##b() {\
    add_function(a##_##b, #a "_" #b);\
}\
void a##_##b()

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

#define ERR_LOG(a, b, comp)  {\
        printf("\n");\
        printf(RED_HL("\t %s:%d: failure\n"), __FILE__, __LINE__); \
        printf(YELLOW("\t\t expect : %-10s %-3s %5s\n"), #a, #comp, #b);\
        printf(YELLOW("\t\t actual : %-5d vs %5s\n\n"), (a), #b);\
} 

#define Type(a) _Generic((a), \
    int : "%d",\
    double : "%lf",\
    float : "%f",\
    char : "%c",\
    long long : "%lld",\
    const char *: "%s",\
    char * : "%s"\
)

#define P(a, color) {\
    char frm[1000];\
    sprintf(frm, color("%s"), Type(a));\
    printf(frm, a);\
}
#define EXPECT(a, b, comp) { \
    haizei_test_info.total += 1;\
    __typedef(a) _a = (a);\
    __typedef(b) _b = (b);\
    printf("%s ", (a) comp (b) ? GREEN("[   TRUE    ]") : RED("[   FALSE   ]"));\
    printf("%-10s %-3s %5s\n", #a, #comp, #b);\
    if ((_a) comp (_b)) {\
        haizei_test_info.success++;\
    } else {\
        P(a, YELLOW_HL);\
        printf(YELLOW(" vs "));\
        P(b, YELLOW_HL);\
        printf("\n\n");\
        ERR_LOG(a, b, comp)\
    }\
}
#define EXPECT_EQ(a, b) EXPECT(a, b, ==)
#define EXPECT_NE(a, b) EXPECT(a, b, !=)
#define EXPECT_LT(a, b) EXPECT(a, b, <)
#define EXPECT_LE(a, b) EXPECT(a, b, <=)
#define EXPECT_GT(a, b) EXPECT(a, b, >)
#define EXPECT_GE(a, b) EXPECT(a, b, >=)

typedef void (*TestFuncT)();

typedef struct Function {
    TestFuncT func;
    const char *str;
    struct Function *next;
    int total;
    int success;
} Function;

typedef struct FunctionInfo {
    int total;
    int success;
} FunctionInfo;

extern FunctionInfo haizei_test_info;

unsigned char RUN_ALL_TESTS();

void add_function(TestFuncT, const char *);
#endif
