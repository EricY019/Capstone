/*
 *	字符串相关的实用函数
 */

#include <stdio.h>
static const char *skip(const char *in) {while (in && *in && (unsigned char)*in<=32) in++; return in;} //跳过前面的空白字符 ascii码小于等于32的略过

int main()
{
	char str[] = "  zhangyifei";
	printf("%s\n",skip(str));
}
