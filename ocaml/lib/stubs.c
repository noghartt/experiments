#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/callback.h>
#include <caml/signals.h>
#include <caml/fail.h>
#include <caml/bigarray.h>
#include <caml/custom.h>

CAMLprim uint32_t add_two_int(uint32_t x, uint32_t y) {
  printf("add_two_int(%d, %d)\n", x, y);
  return x + y;
}
