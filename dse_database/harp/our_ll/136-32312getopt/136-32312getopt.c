#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
  int opt;
  char * config = NULL;
  char * type = NULL;
  while ((opt = getopt(argc, argv, "c:t:")) != -1)
  {
    switch (opt)
    {
      case 'c': // config
        config = optarg;
        break;
      case 't': // type
        type = optarg;
        break;
    }
  }

  printf("config %s, type %s\n", config, type);

}
