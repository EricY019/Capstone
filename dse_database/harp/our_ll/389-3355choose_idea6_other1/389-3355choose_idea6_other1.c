//http://my.oschina.net/baoer1024/blog/62826
/*interface*/
/*interface implementation*/
#define MAXN 1000
int C[MAXN+1][MAXN+1];
void initial() {
    int i,j;
    for(i=0; i<=MAXN; ++i) {
        C[0][i] = 0;
        C[i][0] = 1;
    }
    for(i=1; i<=MAXN; ++i) {
        for(j=1; j<=MAXN; ++j)
            C[i][j] = (C[i-1][j] + C[i-1][j-1]);
    }
}
int choose(int n, int k) {
	return C[n][k];
}
/*client*/
#include<stdio.h>
int main() {
    int n,k;
    initial();
    for(n=0; n<10; n++) {
        for(k=0; k<=n; k++) {
            printf(" %d",choose(n,k));
        }
        printf("\n");
    }
    return 0;
}
