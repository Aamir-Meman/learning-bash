#!/bin/bash
# Script name: readinput.sh

echo "Enter a string: "

while read -r var; do
    echo "Keyboard input is: $var"
    echo -n "Enter a string: "
done

