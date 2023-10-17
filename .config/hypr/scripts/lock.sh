#!/bin/bash

# If idle for 15s, power down the output
swaylock --image ~/wallpapers/monochrome/z.png --clock --effect-blur 5x5 --indicator --effect-pixelate 10
# Kill the last instance of swayidle so the timer doesn't keep running in background
pkill --newest swayidle
