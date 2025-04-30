#include<stdio.h>
#include <unistd.h>
#include <dirent.h>
int main(){
  struct dirent **namelist;
  int i,total;

  total = scandir(".",&namelist,0,alphasort);

  if(total < 0)
      perror("scandir");
  else{
    for(i = 0;i < total;i++){
      printf("%s\n",namelist[i]->d_name);
    }
    printf("total = %d\n",total);
  }
  return 0;
}
