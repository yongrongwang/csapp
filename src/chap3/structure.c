struct rec {
  int i;
  int j;
  int a[2];
  int *p;
};

void copy(struct rec *r) {
  r->j = r->i;
}

struct rec *p;

void link_p(struct rec *r) {
  r->p = &r->a[r->i + r->j];
}
