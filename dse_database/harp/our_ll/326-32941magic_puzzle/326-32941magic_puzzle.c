#include <stdio.h>

#define TRUE 1
#define FALSE 0

#define WIDTH 4

#define WM (WIDTH-1)
#define WP (WIDTH+1)
#define SIZE (WIDTH*WIDTH)

typedef int bool;

#if WIDTH == 3

#define GOAL 21
const static int choices[SIZE] = {3,4,5,6,7,8,9,10,11};

#elif WIDTH == 4

#define GOAL 34
const static int choices[SIZE] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};

#endif

static bool picked[SIZE];
static int a[SIZE];

typedef void (*perform)(int);

typedef struct Action {
  int pos;
  perform action;
  int indexes[WIDTH];
} Action;

Action actions[SIZE + 3];

static int choiceSearch(int c) {
  // Since our list is expected to be so small, we actually just do a linear search.
  for(int i = 0; i < SIZE; ++i) {
    if (choices[i] == c) return i;
  }
  return -1;
}

static void choose(int ai) {
  int i;
  const Action* ap = &actions[ai];
  for (i = 0; i < SIZE; ++i) {
    if (!picked[i]) {
      a[ap->pos] = choices[i];
      picked[i] = TRUE;
      actions[ai + 1].action(ai + 1);
      picked[i] = FALSE;
    }
  }
}

static void decide(int ai) {
  int i, n;
  const Action* ap = &actions[ai];
  for(i = 0, n = GOAL; i < WIDTH - 1; ++i) {
    n -= a[ap->indexes[i]];
  }
  i = choiceSearch(n);
  if (i == -1 || picked[i]) {
    return;
  }
  a[ap->pos] = n;
  picked[i] = TRUE;
  actions[ai + 1].action(ai + 1);
  picked[i] = FALSE;
}

static void validate(int ai) {
  int i, n;
  const Action* ap = &actions[ai];
  for(i = 0, n = GOAL; i < WIDTH; ++i) {
    n -= a[ap->indexes[i]];
  }
  if (n == 0) {
    actions[ai + 1].action(ai + 1);
  }
}

// Prints out a solution
static void solution(int ai) {
  static int count = 0;
  int i, c;
  char sep;
  printf("--- Solution %d ---\n", ++count);
  for(i = 0, c = 1; i < SIZE; ++i, ++c) {
    if (c == WIDTH) {
      sep = '\n';
      c = 0;
    } else {
      sep = ' ';
    }
    printf("%2d%c", a[i], sep);
  }
}

int main(int argc, const char* argv[]) {
  int i = -1;
#if WIDTH == 3
  actions[++i].pos = 0; actions[i].action = &choose;
  actions[++i].pos = 1; actions[i].action = &choose;
  actions[++i].pos = 2; actions[i].action = &decide; actions[i].indexes[0] = 0; actions[i].indexes[1] = 1;
  actions[++i].pos = 4; actions[i].action = &choose;
  actions[++i].pos = 8; actions[i].action = &decide; actions[i].indexes[0] = 0; actions[i].indexes[1] = 4;
  actions[++i].pos = 5; actions[i].action = &decide; actions[i].indexes[0] = 2; actions[i].indexes[1] = 8;
  actions[++i].pos = 3; actions[i].action = &decide; actions[i].indexes[0] = 4; actions[i].indexes[1] = 5;
  actions[++i].pos = 6; actions[i].action = &decide; actions[i].indexes[0] = 0; actions[i].indexes[1] = 3;
  actions[++i].pos = 7; actions[i].action = &decide; actions[i].indexes[0] = 6; actions[i].indexes[1] = 8;
  actions[++i].pos = 0; actions[i].action = &validate; actions[i].indexes[0] = 1; actions[i].indexes[1] = 4; actions[i].indexes[2] = 7;
  actions[++i].pos = 0; actions[i].action = &validate; actions[i].indexes[0] = 2; actions[i].indexes[1] = 4; actions[i].indexes[2] = 6;
  actions[++i].pos = 0; actions[i].action = &solution;
#elif WIDTH == 4
  actions[++i].pos =  0; actions[i].action = &choose;
  actions[++i].pos =  1; actions[i].action = &choose;
  actions[++i].pos =  2; actions[i].action = &choose;
  actions[++i].pos =  3; actions[i].action = &decide; actions[i].indexes[0] =  0; actions[i].indexes[1] =  1; actions[i].indexes[2] =  2;
  actions[++i].pos =  5; actions[i].action = &choose;
  actions[++i].pos =  9; actions[i].action = &choose;
  actions[++i].pos = 13; actions[i].action = &decide; actions[i].indexes[0] =  1; actions[i].indexes[1] =  5; actions[i].indexes[2] =  9;
  actions[++i].pos = 10; actions[i].action = &choose;
  actions[++i].pos = 15; actions[i].action = &decide; actions[i].indexes[0] =  0; actions[i].indexes[1] =  5; actions[i].indexes[2] = 10;
  actions[++i].pos =  6; actions[i].action = &choose;
  actions[++i].pos = 14; actions[i].action = &decide; actions[i].indexes[0] =  2; actions[i].indexes[1] =  6; actions[i].indexes[2] = 10;
  actions[++i].pos = 12; actions[i].action = &decide; actions[i].indexes[0] = 13; actions[i].indexes[1] = 14; actions[i].indexes[2] = 15;
  actions[++i].pos =  4; actions[i].action = &choose;
  actions[++i].pos =  7; actions[i].action = &decide; actions[i].indexes[0] =  4; actions[i].indexes[1] =  5; actions[i].indexes[2] =  6;
  actions[++i].pos =  8; actions[i].action = &decide; actions[i].indexes[0] =  0; actions[i].indexes[1] =  4; actions[i].indexes[2] = 12;
  actions[++i].pos = 11; actions[i].action = &decide; actions[i].indexes[0] =  8; actions[i].indexes[1] =  9; actions[i].indexes[2] = 10;
  actions[++i].pos =  0; actions[i].action = &validate; actions[i].indexes[0] =  3; actions[i].indexes[1] =  7; actions[i].indexes[2] = 11; actions[i].indexes[3] = 15;
  actions[++i].pos =  0; actions[i].action = &validate; actions[i].indexes[0] =  3; actions[i].indexes[1] =  6; actions[i].indexes[2] =  9; actions[i].indexes[3] = 12;
  actions[++i].pos =  0; actions[i].action = &solution;
#endif
  actions[0].action(0);
  return 0;
}
