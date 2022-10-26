#!/bin/bash

# The script will print the useful information about the 
# current machine. It will print the machine name, model type, 
# specific processor information, and the current number of processes
# running

echo 
echo "The name of the machine is " "$(uname -n)" # uname -n gives the hostname

echo
echo "The machine platform type is " "$(uname -i)" # uname -i gives the harwdare platform

echo 
echo "Specific processor information for this machine is: " 
lscpu

echo
echo "Currently the total number of processes "
echo " running on the machine is: " 
ps -ef | tail +2 | wc -l
ps aux | wc -l










