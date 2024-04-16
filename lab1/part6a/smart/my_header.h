#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

extern uint64_t copy_from_user_c(void *to, const uint8_t *from, uint64_t count);

extern uint64_t copy_to_user_c(void *to, const uint8_t *from, uint64_t count);

uint64_t read_active_smart(void *buf, uint64_t count);

uint64_t write_active_smart(const uint8_t *buf, uint64_t count);
