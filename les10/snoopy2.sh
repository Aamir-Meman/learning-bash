#!/bin/bash

# Script name : snoopy2.sh

name=snoopy

if [[ "$name" == "snoopy" ]]; then
    echo "The night is snoopy and windy"
elif [[ "$name" == "charlie" ]]; then
    echo "You're a good man Charlie Brown"
elif [[ "$name" == "lucy" ]]; then
    echo "The doctor is in."
elif [[ "$name" == "schroeder" ]]; then
    echo "In concert."
else
    echo "Not a shoppy character"
fi
