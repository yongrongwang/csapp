#define N 16
typedef int fix_matrix[N][N];

int fix_prod_ele(fix_matrix A, fix_matrix B, long i, long k) {
  long j;
  long result = 0;

  for (j = 0; j < N; j++)
    result += A[i][j] * B[j][k];

  return result;
}

int fix_prod_ele_opt(fix_matrix A, fix_matrix B, long i, long k) {
  int *Aptr = &A[i][0];
  int *Bptr = &B[0][k];
  int *Bend = &B[N][k];
  int result = 0;
  do {
    result += *Aptr * *Bptr;
    Aptr++;
    Bptr += N;
  } while (Bptr != Bend);

  return result;
}

int var_prod_ele(long n, int A[n][n], int B[n][n], long i, long k) {
  long j;
  int result = 0;

  for (j = 0; j < n; j++)
    result += A[i][j] * B[j][k];

  return result;
}

int var_prod_ele_opt(long n, int A[n][n], int B[n][n], long i, long k) {
  int *Arow = A[i];
  int *Bptr = &B[0][k];
  int result = 0;
  long j;
  for (j = 0; j < n; j++) {
    result += Arow[j] * *Bptr;
    Bptr += n;
  }
  return result;
}

