#!/bin/bash
### Printing Text from the data.file ###
sed '3,5p' data.file #the output will print 2 times from line 3 to 5.
sed -n '3,5p' data.file # suppress the output and print it from 3rd line to 5th line.
sed -n '/East/p' data.file # suppress the output and print the line with starts with the East.
sed -n '/East/,/West/p' data.file # suppress the output and print the line which starts with East and ends with West.
sed -n '/Diana/, $p' data.file # suppress the output and print the line which starts with Diana and from there print last line.
sed -n '/^E.*0$/p' data.file # suppress the output and starts the word with E till the end is zero(0) print it.
### Substituting the Text in the data.file ###
sed 's/3/X/' data.file #this will substitue the first occrence of 3 with X.
sed 's/3/X/g' data.file #this will substitute the first occurence of 3 with X globally.
sed -n '/ [0-9]$/p' data.file #this will print out the pattern[/] which ended in the single digit.
sed 's/ [0-9]$/& Single Digit/' data.file # this will substitue the ending with single digit to some text. &[ambersand] will hold the old string value and then it will replace with Single Digit.
sed '/East/r northmesg' data.file # this will read the pattern East in the data.file and then will insert the northmesg.
### Deleting Text
sed '4,8d' data.file # Don't print from the range 4 to 8 lines
sed '/East/d' data.file # Don't display the pattern starts with East in file.
sed '/^West/d' data.file # Don't display the pattern starts with W
sed '/Central/,/South/d' data.file # this command will not display the range from Central to the South.
### Reading sed Commands from a file
sed -f script1.sed data.file # Added the scirpt script1.sed

