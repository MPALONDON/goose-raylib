#include <raylib.h>
#include <stdint.h>

extern "C" void gr_init_window(int32_t width, int32_t height,
                               const char *title) {
  InitWindow(width, height, title);
}
