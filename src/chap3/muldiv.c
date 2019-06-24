#include <inttypes.h>
typedef unsigned __int128 uint128_t;

void store_uprod(uint128_t *dest, uint64_t x, uint64_t y) {
  *dest = x * (uint128_t) y;
}

void remdiv(long x, long y, long *qp, long *rp) {
  long q = x / y;
  long r = x % y;
  *qp = q;
  *rp = r;
}
