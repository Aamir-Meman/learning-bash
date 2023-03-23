#!/bin/bash

# Script name: io1.sh

# This script prompts for input and prints messages
# involving the input received

read -p "Enter your name: " name # The -p option can be used with read to prompt the user for input

read -p "Hi $name, how old are you? " age

#Instead of using \c to keep the cursor on the same line, we can simply use -e with echo to enable interpretation of backslash escapes like \n.

echo -e "\n\t$age is an awkward age, $name," 
echo -e "  You're too old to depend on your parents,"
echo "and not to old enough to depend on your children."