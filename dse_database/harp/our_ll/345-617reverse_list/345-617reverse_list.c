#include <stdio.h>

typedef struct list {
  int value;
  struct list* next;
} TList;

void print_list(TList* head) {
  while (head) {
    printf("%d ", head->value);
    head = head->next;
  }
  printf("\n");
}

TList* reverse(TList* head) {
  TList* new_root = 0;
  while (head) {
    TList* next = head->next;
    head->next = new_root;
    new_root = head;
    head= next;
  }
  return new_root;
}

int main() {
  TList d = { 1, 0 };
  TList c = { 2, &d };
  TList b = { 3, &c };
  TList a = { 4, &b };

  TList* head = &a;
  print_list(head);
  head = reverse(head);
  print_list(head);

  return 0;
}
