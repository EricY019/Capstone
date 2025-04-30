// ¹Û²ìguessµÄÊÕÁ²ËÙ¶È¡¢µü´úÔËÐÐµÄ´ÎÊý¡¢ÐèÒª¼ÆËãÆ½·½¸ùµÄÊý×Ö£¬ÒÔ¼°×î³õµÄ²Â²âÖµÖ®¼äµÄ¹ØÏµ
// ¼ÆËãµÄÊý×ÖÔ½´ó£¬µü´úµÄ´ÎÊýÔ½¶à£¬ÊÕÁ²µÃÔ½¿ì£¬Óë×î³õ²Â²âÖµ¹ØÏµ²»´ó¡£ 
#include <stdio.h>

float absoluteValue(float x){
	if(x < 0)
		x = -x;
	return (x);
} 

// ¼ÆËãÄ³ÊýÆ½·½¸ùµÄº¯Êý
float squareRoot(float x, float epsilon){
	float guess = 1.0;
	
	while(absoluteValue(guess * guess - x) >= epsilon){
		guess = (x / guess + guess) / 2.0;
		printf("%.3f\n", guess);
	}
		
	return guess;
} 

int main(void){
	printf("squareRoot(2.0) = %f\n", squareRoot(2.0, 0.00001));
	printf("squareRoot(144.0) = %f\n", squareRoot(144.0, 0.00001));
	printf("squareRoot(17.5) = %f\n", squareRoot(17.5, 0.00001));
	
	return 0;
}
