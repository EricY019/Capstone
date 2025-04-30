#include <stdlib.h>
#include <stdio.h>

char * bits_of_double(double d) {
  unsigned long byte_count = sizeof(d);
  unsigned char * bytes = (unsigned char *) &d;
  char * bits_of_double = (char *) malloc(byte_count * 8 + 1);
  bits_of_double[byte_count * 8] = 0;
  unsigned char byte;
  int i, j, k;
  for (i = byte_count, j = 0; i > 0; i--) {
    byte = bytes[i-1];
    for (k = j+8; j < k; j++) {
      if (byte & 0x80) {
	bits_of_double[j] = '1';
      } else {
	bits_of_double[j] = '0';
      }
      byte = byte << 1;
    }
  }
  return bits_of_double;
}

void print_bits_of_double(char * bits) {
  int i = -1;
  while(bits[++i] != 0) {
    if (i == 1 || i == 12) {
      printf(" ");
    }
    printf("%c", bits[i]);
  }
}

int main(void) {
  /*
     For d = 0.25, bits are
     0 01111111101 0000000000000000000000000000000000000000000000000000
     1 23456781234 5678123456781234567812345678123456781234567812345678
     1        2        3       4       5       6       7       8
  */
  double d = 5432.0;
  char * bits = bits_of_double(d);
  printf("For d = %f, bits are\n", d);
  print_bits_of_double(bits);
  printf("\n");
  printf("1 23456781234 5678123456781234567812345678123456781234567812345678\n");
  printf("1        2        3       4       5       6       7       8\n");
  free(bits);
  return 0;
}
