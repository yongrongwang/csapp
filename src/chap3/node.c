struct node_s {
  struct node_s *left;
  struct ndoe_s *right;
  double data[2];
};

union node_u {
  struct {
    union node_u *left;
    union node_u *right;
  } internal;
  double data[2];
};

typedef enum {N_LEAF, N_INTERNAL} nodetype_t;

struct node_t {
  nodetype_t type;
  union {
    struct {
      struct node_t *left;
      struct node_t *right;
    } internal;
    double data[2];
  } info;
};
