#!/bin/bash
# Script name : while.sh
num=1
while [[ $num -lt 6 ]]; do
    echo "The value of num is: $num"
    num=$((num + 1))
done
