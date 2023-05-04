#!/bin/bash
mth=$(date +%m)

if [[ "$mth" == 02 ]]; then
    echo "February is usally a 28 days"
    echo "February if it is a leap year then 29 days"

elif [[ "$mth" == @(04|06|09|11) ]]; then
    echo "The current month is of 30 days"
else
    echo "The current month has the 31 days"
fi
