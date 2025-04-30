/*
 * File name : example_01.c
 * Description : 
 * Date : Fri Oct 31 14:49:07 CST 2014
 * Author : xgqin@guet.edu.cn 
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Defines the length for each line in menu */
#define MENU_LENGTH 40
/* Defines the sperator characeter in seperator line */
#define SEPERATOR_CHAR '='

void print_menu_item(const char * menu_text, int align, int new_line)
{
	int text_len;
	int prefix_num, i;

	text_len = strlen(menu_text);
	prefix_num = (MENU_LENGTH - text_len) / 2;
	
	if (align == 1)
	{
		for (i = 0; i < prefix_num; i++)
		{
			putchar(' ');
		}
	}
	
	printf("%s", menu_text);

	for (i = 0; i < prefix_num; i++)
	{
		putchar(' ');
	}

	if (new_line == 1)
	{
		putchar('\n');
	}
}

void print_seperator_line()
{
	int i;

	for (i = 0; i < MENU_LENGTH; i++)
	{
		putchar(SEPERATOR_CHAR);
	}

	putchar('\n');
}

void print_menu_choice()
{
	print_menu_item("Please input your choices (1-5):", 0, 0);
}

void print_menu()
{
	print_menu_item("Menu", 1, 1);
	print_seperator_line();

	print_menu_item("1. Input the student's names and scores", 0, 1);
	print_menu_item("2. Search scores of some students", 0, 1);
	print_menu_item("3. Modify scores of some students", 0, 1);
	print_menu_item("4. List all students' scores", 0, 1);
	print_menu_item("3. Quit the system", 0, 1);

	print_seperator_line();

	print_menu_choice();
}

int main ()
{
	print_menu();
	return 0;
}
