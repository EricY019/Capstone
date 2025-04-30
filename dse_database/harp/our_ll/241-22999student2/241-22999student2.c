// Structures

#include <stdio.h>
#include <string.h>

struct Student {
	int id;
	char *firstName;
	char *lastName;
};

int main(){
	struct Student s;
	struct Student *sptr;
	
	sptr = &s;
	s.id = 100;
	s.firstName = "John";
	s.lastName = "Doe";
	
	printf("The id for s = %d\n", sptr->id);
	printf("The first name for s = %s\n", sptr->firstName);
	printf("The last name for s = %s\n", sptr->lastName);
	
}