#!/bin/bash

# If idle for 15s, power down the output
swaylock 
# Kill the last instance of swayidle so the timer doesn't keep running in background
pkill --newest swayidle
