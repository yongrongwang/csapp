#include "../include/csapp.h"

void garbage() {
  int *p = (int *) Malloc(15213); //This should use Free() after Malloc()
  return;
}

int *matrec(int **A, int *x, int n) {
  int i, j;
  int *y = (int *)Malloc(n * sizeof(int)); //This should use Calloc()

  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      y[i] = A[i][j] * x[j];

  return y;
}

void bufoverflow() {
  char buf[64];

  gets(buf); //This should use fgets()
  return;
}

int **makeArray1(int n, int m) {
  int i;
  int **A = (int **)Malloc(n * sizeof(int)); //This should be sizeof(int *)

  for (i = 0; i < n; i++)
    A[i] = Malloc(m * sizeof(int));
  return A;
}

int **makeArray2(int n, int m) {
  int i;
  int **A = (int **)Malloc(n * sizeof(int *));

  for (i = 0; i <= n; i++) //This should be i < n
    A[i] = Malloc(m * sizeof(int));
  return A;
}

int *binheapDelete(int **binheap, int *size) {
  int *packet = binheap[0];

  binheap[0] = binheap[*size - 1];
  *size--; //This should be (*size)--
  heapfy(binheap, *size, 0);
  return (packet);
}

int *search(int *p, int val) {
  while (*p && *p != val)
    p += sizeof(int); //This should be p++
  return p;
}

int *stackref() {
  int val;
  return &val; //This shouldn't be used after return
}

int *heapref(int n, int m) {
  int i;
  int *x, *y;
  x = (int *)Malloc(n * sizeof(int));
  Free(x);
  y = (int *)Malloc(m * sizeof(int));
  for (i = 0; i < m; i++)
    y[i] = x[i]++; //x[] shouldn't be used after it is freed,
  return y;
}

void leak(int n) {
  int *x = (int *)Malloc(n * sizeof(int));
  return; //x is garbage at this point
}
