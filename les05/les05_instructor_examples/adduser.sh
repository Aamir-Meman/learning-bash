#!/bin/bash
# Purpose: To write a script to add user to the system
# Name: adduser.sh
### set a shell variable to test the grep command
name=nuucp # Should match a single entry
#name=uucp # Should match a single entry
#name=root # Should match a single entry
#name=rot # Should not match any entry 

grep "^$name:" mypasswd.txt


