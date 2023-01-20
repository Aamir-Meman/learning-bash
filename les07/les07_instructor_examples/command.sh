#!/usr/bin/bash
 # Print the first name and last name from the data.file
nawk ' { print "Name : " , $3 , $2, "\t", "Region : ", $1 } ' data.file

