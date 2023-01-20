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
# NR [ Number of Records]
nawk -f report4.nawk data.file
# User-Defined Variables
nawk -f numexample.nawk data.file
nawk -f numexample2.nawk data.file
nawk -f numexample3.nawk data.file
# Additional Examples
nawk '/D[iog]/ { print NR, $0 } ' data.file  # starting with D and print the NR and everything with $0
nawk ' /M[ath]/ { print NR, $0 } ' data.file
nawk ' BEGIN { count = 0 } 
/E/ { print NR, $0; count = count + 1 } 
END { print "count of East regions is", count } ' data.file
nawk '{ print "Record:", NR, $NF }' data.file  # Print the last record/field of data.file
nawk ' { print "Record : " , NR, "contains ", NF, "Fields"} ' raggeddata.file # to check number of fields in the given records
nawk ' { print "Field 1 has" , length($1), "letters." } ' raggeddata.file
nawk ' { print $2, $1 > "demo.txt" } ' data.file # output the file
nawk ' { print $2, $1 >> "demo.txt" } ' data.file # append the output file