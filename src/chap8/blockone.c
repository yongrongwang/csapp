#include "../include/csapp.h"

int main() {
  sigset_t mask, prev_mask;

  Sigemptyset(&mask);
  Sigaddset(&mask, SIGINT);
  Sigprocmask(SIG_BLOCK, &mask, &prev_mask);
  Sigprocmask(SIG_SETMASK, &prev_mask, NULL);

  exit(0);
}
