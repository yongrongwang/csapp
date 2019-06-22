#include <stdio.h>

void t2u_u2t() {
  short int v = -12345;
  unsigned short int uv = (unsigned short) v;
  printf("v = %d, uv = %u\n", v, uv);
  unsigned u = 4294967295u;
  int tu = (int) u;
  printf("u = %u, tu = %d\n", u, tu);

}

void explicit_cast() {
  int tx, ty = -1;
  unsigned ux = 1, uy;
  tx = (int) ux;
  uy = (unsigned) ty;
  printf("tx = %d, uy = %u\n", tx, uy);
}

void implicit_cast() {
  int tx, ty = -1;
  unsigned ux = 1, uy;
  tx = ux;
  uy = ty;
  printf("tx = %d, uy = %u\n", tx, uy);
}

void my_trunc() {
  int x = 53191;
  short sx = (short) x;
  int y = sx;
  printf("sx = %d, y = %d\n", sx, y);
}

int main(int argc, char *argv[]) {
  t2u_u2t();
  explicit_cast();
  implicit_cast();
  my_trunc();
}
