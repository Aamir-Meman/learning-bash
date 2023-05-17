#!/bin/bash
# Script name: leap2.sh
set -xv
if [[ $# -ne 1 ]]; then
    echo "USAGE: $0 arg1"
    exit 2
fi

year=$1

if [[ "$((year % 400))" -eq 0 ]] || [[ "$((year % 4))" -eq 0 ]] && [[ "$((year % 100))" -ne 0 ]]; then
    echo "$year is a leap year"
else
    echo "$year is not a leap year"
fi
