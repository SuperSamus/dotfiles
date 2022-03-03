#!/bin/sh
if pactl list sinks | grep -q "Active Port: \[Out\] Speaker"; then
  pactl set-sink-port alsa_output.pci-0000_04_00.6.HiFi__hw_Generic_1__sink "[Out] Headphones"
else
  pactl set-sink-port alsa_output.pci-0000_04_00.6.HiFi__hw_Generic_1__sink "[Out] Speaker"
fi