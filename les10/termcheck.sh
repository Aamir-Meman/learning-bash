#!/bin/bash

# Script name : termcheck.sh

if [[ "$TERM" == "sun" ]]; then
    echo "You are using sun console service"
elif [[ "$TERM" == "xterm-256color" ]]; then
    echo "You are using xterm emulator"
elif [[ "$TERM" == "dtterm" ]]; then
    echo "You are using dtterm emulator"
else
    echo " I am not sure what emulator you are using"
fi
