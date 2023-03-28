#!/bin/bash
printf "Empname: %s\nEmpcode: %s\n" "$EMPNAME" "$EMPCODE"
printf "%s\n" "This is printf" "in" "the bash" # Enables you to print a message on several lines by using one printf command
printf "\aWrite your details: \n Name: " # Rings the bells on the terminal, which draws attention to the user.
printf "%5d%4d\n" 7 89 789 6789 56789 # this will display the result with 5 space and 4 space

# The echo Statement
echo "Hello There \nHow are you?" # In bash this command will not work for new line
echo "-2 was the temperature this morning"
echo -n "No newline printed here  " # To suppress the new line character use -n # In bash system
echo "Hello\tout\tthere" # tab command is not working in bash

# The read statement
read var1 var2 var3
read num string junk # More tokens then variables
#134 bye93; alk the rest of the line is put in 'junk'
read token1 token2 #<enter>
#One  # token2 will be NULL
read 
#What is this saved in?
echo $REPLY
#What is this saved in?
read #bornshell
# read : missing arguments

ls -l /etc/passwd > file
read a b c d e f g h < file

# output error logs
ls -l foobar.txt 2> error.logs

# here
#./demoheredoc.sh << ENDOFINPUT
#> 1000
#> 2000
#> ENDOFINPUT

