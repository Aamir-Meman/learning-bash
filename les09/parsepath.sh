#!/bin/bash
# Purpose : To parse a long pathname
#
# Name : parsepath.sh

if [ $# -ne 1 ] ; then
   echo "Usage: parsepath.sh /pathname"
   exit 1
fi

name="$1"
echo
echo "The path is : $name"
while [[ -n $name ]] 
do
  echo "$name"
  name=${name%/*}
done


