#!/bin/bash
# Purpose: This script will list all the device scripts in the
# /etc/f directory. Additionally it will report the inode number for each script,
# and then list all the files under /etc with same inode number
# Scriptname: devscripts.sh

if [[ $# -ne 0 ]]; then
    echo "Usage: devscripts.sh"
    exit 1
fi

for escript in /etc/f*; do
    echo "The script name is $escript"
    echo -n "The inode number is "
    inode=$(ls -i "$escript" | nawk '{print $1}')
    echo "$inode"
    echo
    echo "Other files with same inode number are: "
    find /etc -inum "$inode"
    echo 
    echo 
done
echo "Finished"
