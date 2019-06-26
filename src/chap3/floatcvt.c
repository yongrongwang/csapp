double fcvt(int i, float *fp, double *dp, long *lp) {
  float f = *fp;
  double d = *dp;
  long l = *lp;
  *lp = (long) d;
  *fp = (float) i;
  *dp = (double) l;
  return (double) f;
}

float float_mov(float v1, float *src, float *dst) {
  float v2 = *src;
  *dst = v1;
  return v2;
}
