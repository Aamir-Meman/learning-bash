#!/bin/bash
# Script name : shift.sh

USAGE="usage: $0 arg1 arg2 ...argN"

if [[ "$#" == 0 ]]; then
    echo "$USAGE"
    exit 1
fi

echo " The arguments to the script are:"

while (($#)); do
    echo "$1"
    shift #shift is used to shift the arguments to the left, discarding the first one. This means that the second argument becomes the new first argument, the third argument becomes the new second argument, and so on.
done

echo "The value of $* is now:" "$*"