#!/bin/bash
# Script name : while_test.sh
num=5
while [[ $num -le 10 ]]; do
    echo "$num"
    num=$((num + 1 ))
done
