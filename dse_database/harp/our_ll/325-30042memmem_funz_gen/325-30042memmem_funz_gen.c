#define _GNU_SOURCE
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void printa (const char *dato, int len) {
  int i;
  for (i = 0; i < len; ++i) {
    printf("%c", dato[i]);
  }
  printf("\n");
}

struct dati {
    char dato[256];
    int lung;
};

void substitutor (struct dati *d, const char *str, const char *sub, const char *neu) {
    //char dest[512];
    char *ret;
    int len_str;
    int len_sub;
    int len_neu;
    int diff_bef;
    int diff_aft;

    len_str = strlen(str);
    len_sub = strlen(sub);
    len_neu = strlen(neu);

    ret = (char *)memmem(str, len_str, sub, len_sub);
    diff_bef = ret - str;
    printa(str, diff_bef);
    diff_aft = len_str - diff_bef - len_sub;
    printa(str + diff_bef + len_sub, diff_aft);
    memcpy(d->dato, str, diff_bef);
    printa(d->dato, diff_bef);
    memcpy(d->dato + diff_bef, neu, len_neu);
    printa(d->dato, diff_bef + len_neu);
    memcpy(d->dato + diff_bef + len_neu, str + diff_bef + len_sub, diff_aft);
    printa(d->dato, len_str -len_sub + len_neu);
    d->lung = len_str - len_sub + len_neu;

}

int main (int argc, char **argv) {
    struct dati d;
    char str[] = "zlatanibrahimovic%40parigistgermain.com";
    char sub[] = "%40";
    char neu[] = "@";
    substitutor(&d, str, sub, neu);
    printa(d.dato, d.lung);

   return(0);
}
