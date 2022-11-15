#!/bin/bash
sed -n '/sh$/p' passwd.file
# Print only the lines that have the letter o as the second character.
sed -n '/^.o/p' passwd.file
# Hide the three characters from the file 
sed 's/^...//' passwd.file
# Print all those lines except those containing the pattern uu from the passwd file
sed '/uu/d' passwd.file
# Print only the lines containing the pattern oo in the passwd file
sed -n '/oo/p' passwd.file
# Print the SYM link
ls -l / | sed -f labscript2.sed 
# Delete trailing spaces at the end of the line
sed 's/ *$//' hostswithspaces
