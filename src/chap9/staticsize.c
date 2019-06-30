#include "../include/csapp.h"
#define MAXN 15213
int array[MAXN];

int main() {
  int i, n;

  scanf("%d", &n);
  if (n > MAXN)
    app_error("Input file is too big\n");
  for (i = 0; i < n; i++)
    scanf("%d", &array[i]);

  exit(0);
}
