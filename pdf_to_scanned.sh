#!/bin/bash
DPI=150
ROTATION=$(shuf -n 1 -e '-' '')$(shuf -n 1 -e $(seq 0.1 .2 1))
convert -density $DPI -background white -alpha remove -alpha off "$1" -linear-stretch 3.5%x10% -blur 0x0.5 -attenuate 0.25 -rotate "${ROTATION}" +noise Gaussian -compress jpeg "$1-scanned.pdf"
