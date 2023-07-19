#!/bin/bash
# Script name: getopts1.sh
USAGE="usage: $0 [-d] [-m month]"
year=$(date +%Y) # 2023
while getopts :dm: opt_char; do
    case $opt_char in
    d)
        echo -n "Date: " # -d option given date
        date 
        ;;
    m)
        cal "$OPTARG" "$year" # -m option given with an arg
        ;;
    \?)
        echo "$OPTARG is not a valid option."
        echo "$USAGE"
        ;;
    :)
        echo "$OPTARG option requires an argument."
        echo "$USAGE"
    esac
done
