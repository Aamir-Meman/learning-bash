#!/bin/bash
# Script name : internal_redir.sh
# set the internal Field Seperator to a colon
IFS=:
while read -r name number; do
    echo "The phone number for $name is $number"
done < phonelist
