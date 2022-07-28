#!/bin/bash

clear
echo "SCRIPT BEGINS"

echo "Hello $LOGNAME"

echo "Todays date is:" $(date '+%m/%d/%y')

echo "and the current time is:" $(date '+%H:%M:%S%n')

echo "Now a list of the processes on the current shell"
ps

echo "SCRIPT FINISHED!!"
