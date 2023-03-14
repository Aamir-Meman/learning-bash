#!/bin/bash
printf "Empname: %s\nEmpcode: %s\n" "$EMPNAME" "$EMPCODE"
printf "%s\n" "This is printf" "in" "the bash" # Enables you to print a message on several lines by using one printf command
printf "\aWrite your details: \n Name: " # Rings the bells on the terminal, which draws attention to the user.
printf "%5d%4d\n" 7 89 789 6789 56789 # this will display the result with 5 space and 4 space