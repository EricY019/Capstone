/*
 * Copyright (C) 2015 Dan Rulos [dalmemail@amaya.tk]
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <fcntl.h>

/* VERSION 0.3 */
#define VERSION "0.3"

int filekey(int n_bytes, char *path)
{
	int fd;
	if ((fd = open(path, O_WRONLY)) < 0) {
		printf("Error: Al abrir %s\n", path);
		return -1;
	}
	char key[n_bytes];
	srand(time(NULL));
	int i;
	for (i = 0; i < n_bytes; i++) {
		key[i] = rand() % 126 + 33;
	}
	write(fd, key, n_bytes);
	close(fd);
	return 0;
}

void makekey(int n_bytes)
{
	char key[n_bytes];
	srand(time(NULL));
	int i;
	for (i = 0; i < n_bytes; i++) {
		key[i] = rand() % 126 + 33;
	}
	i = 0;
	printf("Key: ");
	while (i < n_bytes) {
		printf("%c", key[i++]);
	}
	putchar('\n');
}

int checkarg(char *arg)
{
	int i, ret = 0;
	for (i = 0; i < strlen(arg); i++) {
		if (arg[i] != '0'&&arg[i] != '1'&&arg[i] != '2'&&arg[i] != '3'&&arg[i] != '4'&&arg[i] != '5'
			&&arg[i] != '6'&&arg[i] != '7'&&arg[i] != '8'&&arg[i] != '9') {
			ret = -1;
		}
	}
	if (ret == 0 && atoi(arg) == 0) {
		ret = -1;
	}
	return ret;
}

int main(int argc, char **argv)
{
	int ret = EXIT_SUCCESS;
	if (argc != 2 && argc != 3) {
		printf("Uso: %s numero_de_bytes\n", argv[0]);
	}
	else {
		if ((strcmp(argv[1], "--help")) == 0) {
			printf("RandomKey %s\n", VERSION);
			printf("Uso: %s numero_de_bytes\n", argv[0]);
			printf("Uso: %s numero_de_bytes archivo.txt\n", argv[0]);
			printf("Contacto: dalmemail@amaya.tk\n");
		}
		else {
			if (checkarg(argv[1]) < 0) {
				printf("%s error: %s no es valido\n", argv[0], argv[1]);
				ret = EXIT_FAILURE;
			}
			else {
				if (argv[2]) {
					ret = filekey(atoi(argv[1]), argv[2]);
				}
				else {
					makekey(atoi(argv[1]));
				}
			}
		}
	}
	return ret;
}
