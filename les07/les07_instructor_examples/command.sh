#!/usr/bin/bash
 # Print the first name and last name from the data.file
nawk ' { print "Name : " , $3 , $2, "\t", "Region : ", $1 } ' data.file
nawk ' /[A-Z]E/ { print $2, $3, $4, $1 } /E[A-Z]/ { print $2, $3, $4, $1 } ' data.file # followed or preceded with E
nawk ' BEGIN { print "Developers in Eastern regions\n" } ; /[A-Z]e/ { print $2, $3, $4, $1 } /E[A-Z]/ { print $2, $3, $4, $1 } ' data.file # Use of BEGIN

