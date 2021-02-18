/*************************************************************************
	> File Name: 2.test.c
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Fri 20 Nov 2020 03:59:50 PM CST
 ************************************************************************/

#include <stdio.h>

typedef long long ll;

ll Tn(ll n) {
    return n * (n + 1) / 2;
}
ll Pn(ll n) {
    return n * (3 * n - 1) / 2;
}
ll Hn(ll n) {
    return n * (2 * n - 1);
}

ll Binary_search(ll (*arr)(ll), ll n, ll x) {
    ll head = 1, tail = n, mid;
    while (head <= tail) {
        mid = (head + tail) >> 1;
        if (arr(mid) == x) {
            return mid;
        }
        if (arr(mid) < x) {
            head = mid + 1;
        } else {
            tail = mid - 1;
        }
    }
    return head;
}
int main() {
    ll n, goal, result, start;
    scanf ("%lld", &n);
    start = (int)(n * 1.5);
    goal = Hn(n);
    result = Binary_search(Pn, start, goal);
    ll result_num = Pn(result);
    if (result_num != goal) {
        printf("NO");
        return 0;
    } 
    printf("YES");
    return 0;
}
