#!/bin/bash
# Script name: whiletest2.sh
set -xv
num=5
while (( num )); do
    echo $num
    ((num--)) # The value in num is reduced by one
done 
