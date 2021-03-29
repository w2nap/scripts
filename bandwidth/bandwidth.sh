#!/bin/sh
#Last update 29 MAR, 2021

init="$(($(cat /sys/class/net/[ew]*/statistics/rx_bytes | paste -sd '+')))"

printf "Recording bandwidth. Press enter to stop."

read -r lol

fin="$(($(cat /sys/class/net/[ew]*/statistics/rx_bytes | paste -sd '+')))"

printf "%4sB of bandwidth used.\\n" $(numfmt --to=iec $(($fin-$init)))
