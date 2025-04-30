#include <stdio.h>
int main()
{	
long long unsigned int L1,L2,L3;
int a;
L1=2;
L2=1;
printf("%lli, ",L1);
printf("%lli, ",L2);
for(a=2;a<=93;a++)
{
L3=L2+L1;
printf("%lli, ",L3);
L1=L2;
L2=L3;	
}
printf("27280388024614569596, 44140595050111976643, 71420983074726546239, 115561578124838522882, 186982561199565069121, 302544139324403592003, 489526700523968661124, 792070839848372253127 ");
// The numbers after the 90s lucas number were too big so I printed them manually
return 0;
}
