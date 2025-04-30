// °£À­ÍÐÉ«ÄáÉ¸Íø·¨(Sieve of Erastosthenes)²úÉú150ÒÔÄÚËùÓÐµÄÖÊÊý 
// ×¢ÒânºÍÊý×é³¤¶ÈÓ¦¸Ã·Ö¿ª¶¨Òå 
#include <stdio.h>

int main(void){
	int i, j, n = 150; 
	int P[151];
	
	// ³õÊ¼»¯Êý×é£¬ÖÊÊý´Ó2¿ªÊ¼ 
	for(i = 2; i < n; ++i){
		P[i] = 0;
	}

	for(i = 2; i < n; ++i){
		if(P[i] == 0)
			printf("%i ", i);
		
		// É¸³ýµôËùÓÐ¿ÉÒÔ·Ö½â³ÉÁ½¸öÊýÏà³ËµÄÕûÊý£¬¼´É¸³ýËØÊý 
		for(j = 1; i * j <= n; ++j)
			P[i * j]  = 1;	
	}
	
	return 0;
}
