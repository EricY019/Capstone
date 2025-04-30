#include <stdio.h>

int main()
{
  unsigned int alignedInts[4] = { 0x01020304, 0x05060708, 0x090A0B0C, 0x0D0E0F10 };
  int offset;

  for(offset = 0; offset < 4; offset++) {
    unsigned char* misalignedPtr = ((unsigned char*) alignedInts) + offset;
    unsigned int* misalignedInts = (unsigned int*) misalignedPtr;
    printf("Offset %d: %8.8X %8.8X %8.8X\n", offset, misalignedInts[0], misalignedInts[1], misalignedInts[2]);
  }
  return 0;
}
