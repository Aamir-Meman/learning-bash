#!/bin/bash

# To make it easier to test debugging options, uncomment one of the following

# set -v
# set -x
# set -f

echo "Your terminal type is set to: $TERM"
echo

echo "Your login name is: $logname"
echo

echo "Now we will list the contents of the /etc/security directory"
ls /etc/security
echo
