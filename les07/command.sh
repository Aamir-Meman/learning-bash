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