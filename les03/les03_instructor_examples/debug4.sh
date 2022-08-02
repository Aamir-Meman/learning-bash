#!/bin/bash

echo "Your terminal type is set to: $TERM"
echo

echo "Your login name is: $LOGNAME"
echo

set -o noglob #glob is ON

echo "Now we will list the contents of the /etc/security directory"
ls /etc/secur*
echo

set +o noglob #No glob is disable

echo "Now we will list the contents of the /etc/security directory"
ls /etc/secur*
echo



