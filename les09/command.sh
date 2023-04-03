#!/bin/bash
# Removing portions of a string 
stringx=/usr/bin/local/bin
echo -e ${stringx%/bin}
# /usr/bin/local # This will remove the smallest right most substring of string
echo -e ${stringx%%/bin}
# /usr/bin/local # This will remove the largest right-most substring of string