#include<stdio.h>
#include<string.h>

typedef struct{
    char firstName[30];
    char lastName[30];
    int age;
    float gpa;
} Student;

void writeStudent(FILE* fp){
    Student student;
    char temp[10];

    strcpy(student.firstName, "Mary");
    strcpy(student.lastName, "Jones");
    student.age = 17;
    student.gpa = 3.9;

  
    fputs(student.firstName, fp);
    fputs(",", fp);
    fputs(student.lastName, fp);    
    fputs(",", fp);

    sprintf(temp, "%d", student.age);
    fputs(temp, fp);
    fputs(",", fp);

    sprintf(temp, "%0.1f", student.gpa);
    fputs(temp, fp);
    fputs("\n", fp);
}

int main(void){
    
    FILE* fp = fopen("C:\\dev\\temp\\students1.dat", "w");
    
    if(fp != NULL){

        for(int i=0;i<10;i++){
            writeStudent(fp);
        }
    
        fclose(fp);
    }

    return 0;
}