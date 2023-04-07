#!/bin/bash
# Script name : pospara2.sh

echo -e "Executing Script $0"
echo -e "$1 $2 $3"

set uno duo tres
echo -e "One two three in Latin is: "
echo -e "$1"
echo -e "$2"
echo -e "$3"

textline="name phone address birthday salary"
set $textline
echo " The positional parameter 1 is = $1 and 4 = $4 "
shift 3 
echo "$*"
set --
echo -e "$0 $*"

