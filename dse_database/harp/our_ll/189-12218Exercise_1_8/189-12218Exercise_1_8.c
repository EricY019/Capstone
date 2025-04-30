#include<stdio.h>
struct cal{
  char monthName[12];
  int monthDays;
};

int main(){
  struct cal c[12] = {
    { "January", 31 },
    { "Febrav", 28 },
    { "March", 31 },
    { "April", 30 },
    { "May", 31 },
    { "June", 30 },
    { "July", 31 },
    { "August", 31 },
    { "Septem", 30 },
    { "Octobe", 31 },
    { "Novemb", 30 },
    { "Decemb", 31 },
  };
  printf("%s\t\t %s\n", "Months", "No. of Days"  );
  for( int i=0;i<12;i++ ){
    printf("%s\t\t %d\n", c[i].monthName, c[i].monthDays );
  }
  return 0;
}
