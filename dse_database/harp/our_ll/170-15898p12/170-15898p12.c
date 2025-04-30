#include <stdio.h>


int nfactors(long long n)
{
    long long f;
    int c=2;
    for (f=2; f*f<n; ++f) {
        if (n % f == 0)
            c += 2;
    }
    if (f*f == n) ++c;
    return c;
}

int main()
{
    long long t=0;
    long i;
    for (i=1; nfactors(t)<500; ++i) {
        t += i;
    }
    printf("%lld\n", t);
    return 0;
}
