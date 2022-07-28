#!/bin/bash
# -v option will do as follows:- 
# It will prints the statement prior to executing but without a leading +
# Does not translate metacharacters 
# Prints comment lines

set -v 
echo "Your terminal type is set to: $TERM"
echo
 
echo "Your login name is: $LOGNAME"
echo

echo "Now we will list the contents of the /etc/security directory"
ls /etc/security
echo
