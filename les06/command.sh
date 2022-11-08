#!/bin/bash
### Printing Text from the data.file ###
sed '3,5p' data.file #the output will print 2 times from line 3 to 5.
sed -n '3,5p' data.file # suppress the output and print it from 3rd line to 5th line.
sed -n '/East/p' data.file # suppress the output and print the line with starts with the East.
sed -n '/East/,/West/p' data.file # suppress the output and print the line which starts with East and ends with West.
sed -n '/Diana/, $p' data.file # suppress the output and print the line which starts with Diana and from there print last line.
sed -n '/^E.*0$/p' data.file # suppress the output and starts the word with E till the end is zero(0) print it.