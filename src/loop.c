#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/timer.h"
#include "hardware/watchdog.h"
#include "hardware/clocks.h"

#include "loop.h"
#include "blinker.h"

int counter = 0;

int64_t alarm_callback(alarm_id_t id, void *user_data) {
	counter++;
	return 0;
}

void looper_main() {
	// Timer example code - This example fires off the callback after 2000ms
	add_alarm_in_ms(2000, alarm_callback, NULL, false);


	puts("\nLooper init done");

}
