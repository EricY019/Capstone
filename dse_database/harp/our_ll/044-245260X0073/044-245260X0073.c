/* 字符串操作 */
#include <stdio.h>
#include <ctype.h>

void put_stringn(const char s[], int n);
void put_stringr(const char s[]);
int str_length(const char s[]);
void rev_string(char s[]);
void del_digit(char s[]);

int main(void)
{
  char s1[] = "djfaks32132fjdksa1321fei,sjd";


  printf("%s重复输出5次之后:", s1);
  put_stringn(s1, 5);
  putchar('\n');

  printf("%s倒序输出:", s1);
  put_stringr(s1);
  putchar('\n');

  printf("%s反转之后:", s1);
  rev_string(s1);
  printf("%s", s1);
  putchar('\n');

  printf("%s删除数字之后:", s1);
  del_digit(s1);
  printf("%s", s1);
  putchar('\n');

  return 0;
}

void put_stringn(const char s[], int n)
{
  for (int i = 0; i < n; i++) {
    /* printf("%s", s); */
    int j = 0;
    while (s[j]) {
      putchar(s[j++]);
    }
  }
}

void put_stringr(const char s[])
{
  int len = str_length(s);

  for (int i = len - 1; i >= 0; i--) {
    putchar(s[i]);
  }
}

int str_length(const char s[])
{
  int len = 0;

  while (s[len]) {
    len++;
  }
  return len;
}

void rev_string(char s[])
{
  int len = str_length(s);

  for (int i = 0; i < len / 2; i++) {
    int t = s[i];
    s[i] = s[len - i - 1];
    s[len - i - 1] = t;
  }
}

void del_digit(char s[])
{
  int i = 0, j = 0;

  while (s[i]) {
    if (!isdigit(s[i])) {
      s[j++] = s[i];
    }
    i++;
  }
  s[j] = '\0';
}
