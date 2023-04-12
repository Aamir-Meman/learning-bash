#!/bin/bash

# Script name : leapyear.sh
# Make sure the user enters the year

if [[ $# -ne 1 ]]; then
    echo "Please enter the year"
    exit 1
fi
declare -i year=$1

if (((year % 400) == 0)); then
    echo "$year is a leap year"
elif (((year % 4) == 0)); then
    if (((year % 100) != 0)); then
        echo "$year is a leap year"
    else
        echo "$year is not a leap year"
    fi
else
    echo "$year is not a leap year"
fi
