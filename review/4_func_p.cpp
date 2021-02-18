/*************************************************************************
	> File Name: 4_func_p.cpp
	> Author: ChenXiansen 
	> Mail: 1494089474@qq.com 
	> Created Time: Wed 11 Nov 2020 08:54:32 AM CST
 ************************************************************************/
#include <stdio.h>

typedef long long ll;
//三角形
ll triangle(ll n) {
    return n * (n + 1) / 2;
}
//五边形
ll pentagonal(ll n) {
    return n * (3 * n - 1) / 2;
}
//六边形
ll hexagonal (ll n) {
    return n * (2 * n - 1);
}

ll binary_search(ll (*func)(ll), ll x, ll n) {
    ll left = 1, right = n, mid;
    while (left <= right) {
        mid = (left + right) >> 1;
        if (func(mid) == x) {
            return mid;
        }
        if (func(mid) < x) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return -1;
}

int main() {
    ll n = 143;
    for ( ; ; ) {
        n += 1;
        ll temp = hexagonal(n);
        if (binary_search(pentagonal, temp, temp) == -1) continue;
        printf("%lld", pentagonal(n));
        break;
    }
    

    return 0;
}
