// Player (Ausbaustufe 1)

#include <stdio.h>

void read_line(char *buf, int buf_sz) {
  int c, i = 0;
  while ((i < buf_sz - 1) && ((c = getc(stdin)) != EOF)) { // buf_sz -1 wegen \0
    if (c == '\n') {
      break;
    }
    buf[i] = c;
    ++i;
  }
  buf[i] = 0; // Null-Terminierung
}

struct player_t {
  char *name; // FALSCH
  int energy;
};

struct player_t player_new(char *name) {
  struct player_t p;
  p.name = name; // FALSCH
  p.energy = 100;
  return p;
}

struct player_t player_new_ask_user_for_name() {
  const int buf_sz = 10;
  char buf[buf_sz];
  read_line(buf, buf_sz);

  struct player_t p = player_new(buf);
  printf("Created player '%s'\n", p.name);
  return p;
}

int main(void) {
  struct player_t p = player_new_ask_user_for_name();
  // printf("Test\n");
  printf("New player: '%s'\n", p.name);

  return 0;
}
