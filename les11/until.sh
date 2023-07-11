#!/bin/bash
# Script name: until.sh
num=1
until ((num == 6)); do
    echo "The value of num is: $num"
    ((num = num + 1))
done
echo "Done."
