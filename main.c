#include <stdlib.h>             /* malloc */

extern void foo(unsigned char *data);

int
main(void) {
  unsigned char *data = (unsigned char *) malloc (1024 * 1024 * 1024);
  foo(data);
  return 0;
}
