#!/bin/bash
# Removing portions of a string 
stringx=/usr/bin/local/bin
echo -e ${stringx%/bin}
# /usr/bin/local # This will remove the smallest right most substring of string
echo -e ${stringx%%/bin}
# /usr/bin/local # This will remove the largest right-most substring of string
echo -e ${stringx%%/bin*}
# /usr # This will remove the largest right-most substring of string using wildcard
echo -e ${stringx#*/bin} 
# /local/bin # This will remove the smallest left most substring of string
echo -e ${stringx##*/bin} 
#          # This will remove the largest left most substring of string 

# Creating Constants
readonly var2=100 # this will act as a constant value to the variable var2[cannot change]

# Declaring Arrays
my_array[0]="One"
my_array[1]="Two"
echo "${my_array[0]}"
echo "${my_array[1]}"

 declare -i num # can have only integer numbers assigned to it
num[0]=0
num[1]=100
num[2]=200
num[3]=300
num[4]=400
echo -e "${num[*]}"
#0 100 200 300 400
num[5]="Aamir"
echo -e "${num[*]}"
#0 100 200 300 400 0
echo -e ${#num[*]} # total number of elements
#6
unset num # This will unset the array num
echo -e ${#num[*]}
#0

# Positional Parameters 
# The set statement
echo $0
#bash
set $(cal)
echo $#
#40
echo $@
#April 2023 Su Mo Tu We Th Fr Sa 1 2 3 4 5  6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
set `cal`
echo $#
#40
echo $@
#April 2023 Su Mo Tu We Th Fr Sa 1 2 3 4 5  6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
set $(date)
echo $#
#6
echo $@
#Thu Apr 6 15:06:54 EDT 2023
echo "$5"
#EDT

# The value in the variable becomes postional parameter
myvar1="One Two Three"
echo "$myvar1" 
#One Two Three
set "$myvar1"
echo $#
#3
echo $@
#One Two Three
echo "$1" "$2" "$3"
#One Two Three

