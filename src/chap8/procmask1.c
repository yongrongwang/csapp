#include "../include/csapp.h"

void initjobs() {
  
}

void addjob(pid_t pid) {
  
}

void deletejob(pid_t pid) {
  
}

void handler(int sig) {
  int olderrno = errno;
  sigset_t mask_all, prev_all;
  pid_t pid;

  Sigfillset(&mask_all);
  while ((pid = waitpid(-1, NULL, 0)) > 0) {
    Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    deletejob(pid);
    Sigprocmask(SIG_SETMASK, &prev_all, NULL);
  }
  if (errno != ECHILD)
    Sio_error("waitpid error");

  errno = olderrno;
}

int main(int argc, char **argv) {
  pid_t pid;
  sigset_t mask_all, prev_all;

  Sigfillset(&mask_all);
  Signal(SIGCHLD, handler);
  initjobs();

  while (1) {
    if ((pid = Fork()) == 0) {
      Execve("/bin/date", argv, NULL);
    }
    Sigprocmask(SIG_BLOCK, &mask_all, &prev_all);
    addjob(pid);
    Sigprocmask(SIG_SETMASK, &prev_all, NULL);
  }

  exit(0);
}
