#!/bin/sh
if ping -c 1 127.0.0.1 &> /dev/null
then
    echo $(hostname) $(date) ok >> /tmp/results/$(hostname)
else
    echo $(hostname) $(date) ko >> /tmp/results/$(hostname)
fi