#!/bin/bash


TTY=${1:-ttyUSB0}
BPS=4800

stty -F "/dev/$TTY" $BPS istrip cs7 parenb -parodd brkint \
        ignpar icrnl ixon ixany opost onlcr cread hupcl isig icanon \
        echo echoe echok;

while [ -e "/dev/$TTY" ]; do
        agetty -c -L -i -I "\033\143" $TTY $BPS minitel1b-80
        sleep 1
done
