#include <stdio.h>
#define N (100ll*1000*1000*1000*1000*1000)
typedef long long LL;
LL sum = 0;

void testing(LL b, LL c, LL x) {
	LL a, i;
	if (b < 0) b = -b;
	if (x >= c || x >= b) return;

	a = b * c / 2;
	for (i = N / a; i; i /= -25) sum += i;
}

void gen(LL a, LL b, LL c) {
	if (c * c >= N) return;
	testing(2 * a - b, 2 * b + a, c);
	testing(2 * b - a, 2 * a + b, c);

	LL d, e, f, g;
	g = 2 * (a + b + c); gen(d = g - a, e = g - b, f = g + c);
	g = 2 * (a *= 2); gen(d - a, e - g, f - g);
	g = 2 * (b *= 2); gen(d - g, e - b, f - g);
}

int main() {
	sum = 0;
	gen(3, 4, 5);
	printf("%lld\n", sum);

	return 0;
}
