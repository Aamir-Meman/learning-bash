#!/bin/bash 

# Debug mode turned on for only portion of the script
set -x 
echo "Your terminal type is set to: $TERM"
echo
set +x 

echo "Your login name is: $LOGNAME"
echo

echo "Now we will list the contents of the /etc/security directory"
ls /etc/security
echo
