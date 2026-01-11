#!/bin/bash

HEADPHONES_MAC="A4:05:6E:7A:68:85"

bluetoothctl trust $HEADPHONES_MAC
bluetoothctl power on
bluetoothctl connect $HEADPHONES_MAC