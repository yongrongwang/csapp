long fact_do(long n) {
  long result = 1;
  do {
    result *= n;
    n = n - 1;
  } while (n > 1);
  return result;
}

long fact_do_goto(long n) {
  long result = 1;
 loop:
  result *= n;
  n = n - 1;
  if (n > 1)
    goto loop;
  return result;
}

long fact_while(long n) {
  long result = 1;
  while (n > 1) {
    result *= n;
    n = n - 1;
  }
  return result;
}

long fact_while_jm_goto(long n) {
  long result = 1;
  goto test;
 loop:
  result *= n;
  n = n - 1;
 test:
  if (n > 1)
    goto loop;
  return result;
}

long fact_while_gd_goto(long n) {
  long result = 1;
  if (n <= 1)
    goto done;
 loop:
  result *= n;
  n = n - 1;
  if (n != 1)
    goto loop;
 done:
  return result;
}
