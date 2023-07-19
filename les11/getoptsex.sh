#!/bin/bash
# Script name: getoptsex.sh
USAGE="usage: $0 -x -y"
while getopts :xy opt_char; do
    case $opt_char in
    x)
        echo "You entered the x option"
        ;;
    y)
        echo "You entered the y option"
        ;;
    \?)
        echo "$OPTARG is not a valid option"
        echo "$USAGE"
        ;;
    esac
done
