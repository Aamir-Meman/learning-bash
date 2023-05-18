#!/bin/bash
# Script name: snoopy3.sh

if [[ $# -ne 1 ]]; then
   echo "USAGE: $0 <name>"
   exit 1
fi
name=$1

case $name in
"snoopy")
    echo "It was a dark and stormy night"
    ;;
"charlie")
    echo "You are a good man Charlie Brown"
    ;;
"lucy")
    echo "The doctor is in"
    ;;
"schreeder")
    echo "In concert."
    ;;
*)
    echo "Not a Snoopy character."
    ;;
esac
