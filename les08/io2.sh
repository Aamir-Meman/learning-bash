#!/bin/bash

# Script name: io2.sh

# This script prompts for input and prints messages
# involving the input received

# Since print is not standard in many shells, removed it in favor of printf.
# Used %s placeholders for variables passed to printf.
printf "Enter your name: "
read name 

printf "Hi %s, how old are you? " "$name"
read age 

printf "\n\t%s is an awkward age, %s,\n" "$age" "$name"
printf "  You're too old to depend on your parents,"
printf "and not to old enough to depend on your children."