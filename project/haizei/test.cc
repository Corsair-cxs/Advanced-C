#include <string.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <haizei/test.h>
int func_cnt = 0;
Function *Func_head = NULL, *Func_now = NULL; 
FunctionInfo haizei_test_info;
int TEST_TOTAL = 0;
int TEST_SUCCESS = 0;
unsigned char RUN_ALL_TESTS() {
    Function *p = Func_head;
    while (p) {
        TEST_SUCCESS = 0;
        TEST_TOTAL = 0;
        haizei_test_info.success = 0;
        haizei_test_info.total = 0;
        printf(GREEN_HL("[====RUN====]") BLUE(" Group: %-3d") YELLOW("%10s") "\n", ++func_cnt, p->str);
        p->func();
        double rate = 1.0 * haizei_test_info.success / haizei_test_info.total;
        rate *= 100;
        if (fabs(rate - 100.0) < 1e-6) {
            rate = 100.0;
            printf(GREEN("[  %6.2f %% ] "), rate);
        } else {
            printf(RED("[  %6.2f %% ] "), rate);
        }
        printf("total : %-3d success : %-3d\n", 
            haizei_test_info.total, 
            haizei_test_info.success
        );
        p = p->next;
    }
    return 0;
}

void add_function(TestFuncT func, const char*str) {
    Function *Func_p = (Function*)(malloc(sizeof(Function)));
    Func_p->func = func;
    Func_p->str = strdup(str);
    if (Func_head == NULL) {
        Func_head = Func_p;
        Func_now = Func_p;
    } else {
        Func_now->next = Func_p;
        Func_now = Func_p;
    } 
    return ;
}
