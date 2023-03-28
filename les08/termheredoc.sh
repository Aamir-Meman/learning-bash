#!/bin/bash

# Script name: termheredoc.sh

echo "Select a terminal type"
cat << ENDINPUT
sun 
ansi
wyse50
ENDINPUT

read -p "Which would you prefer? " termchoice

echo
echo -e "Your choice is terminal type: $termchoice"


