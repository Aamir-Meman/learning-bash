#!/bin/bash
# Printing Selected fields
nawk '{print $3, $4, $2}' data.file # print the fields from the record[lines].
# Formatting with the print statement
nawk '{print $3, $4 "\t" $2}' data.file
# Using Regular Expressions
nawk '/East/' data.file
nawk ' /East/ { print $1, $5, $4 } ' data.file 
nawk ' /East/ { print $1, $5 "\t" $4 } ' data.file
nawk ' /^East/ ' data.file
nawk ' /.9/ ' data.file # any character starts and ends with 9
nawk ' /\.9/ ' data.file # this will kill the metacharacter and look for pattern .9
# Special Patterns
nawk 'BEGIN { print "Eastern Regions\n" }; /East/ { print $5, $4 }' data.file
nawk 'BEGIN { print "Eastern Regions\n" }; /East/ { print $5, $4 } END { print "Eastern Region Monthly Report" } ' data.file
# nawk scripts
nawk -f report.nawk data.file
nawk -f report2.nawk data.file
# Input Field Seperator (FS)
nawk -F: ' { print $1, $2, $3, $4 } ' /etc/group
nawk -F: ' { print $1 "\t" $4 } ' /etc/group
nawk ' BEGIN { FS=":" }; { print $1, $4 }' /etc/group
nawk ' BEGIN { FS=":" }; { print $1, $3 }' /etc/group
nawk -f report3.nawk /etc/group
# Output Field Seperator
nawk ' { print $1 $2 $3 } ' data.file
nawk ' { print $1, $2, $3 } ' data.file
nawk ' { print $1 "\t" $2, $3 } ' data.file
nawk 'BEGIN { OFS="\t" }; { print $1, $2, $3 }' data.file
nawk 'BEGIN { OFS="\t" }; { print $3, $4, $2 }' data.file