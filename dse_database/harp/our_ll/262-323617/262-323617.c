#include <stdio.h>
void print_array_5(double* array){
    int i;
    for(i=0;i<5;i++)
        printf("%.4f ",*(array+i));
    printf("\n");
}

void cleandata(double* p){
    int i,j=0;
    for(i=0;i<5;i++){
        if(*(p+i)>=0.001){
            *(p+j)=*(p+i);
            j++;
        }
    }
    for(;j<5;j++)
        *(p+j)=0;
}
            
int main(){
    double data[5]={0.89,0.78,0.0009,0.67,0.56};
    print_array_5(data);
    cleandata(data);
    print_array_5(data);
    return 0;
}