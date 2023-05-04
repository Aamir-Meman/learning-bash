#!/bin/bash
# Script name : argument test
if [[ $1 -gt $2 ]]; then
    echo "num1 is larger"
else
    echo "num2 is larger"
fi
