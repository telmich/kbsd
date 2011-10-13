#!/bin/sh

BASE="/sys/bus/platform/drivers/applesmc/applesmc.768"
LIGHT_SENSOR="light"
LED="leds/smc::kbd_backlight/brightness"

light_path="$BASE/$LIGHT_SENSOR"
led_path="$BASE/$LED"

light=$(sed 's/^(\(.*\),.*)/\1/' "$light_path")

led_light=$((255-$light))

echo "$led_light" > "$led_path"
