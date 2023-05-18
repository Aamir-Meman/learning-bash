#!/bin/bash
grep root /etc/passwd
echo $?
# 0
grep junk /etc/passwd
echo $?
# 1
if grep root /etc/passwd >/dev/null; then echo "root user found in /etc/passwd file"; fi
# root user found in /etc/passwd file
if [ num ] >15; then echo "You are old enough to drive the car"; fi
# You are old enough to drive the car
if [[ "$name" == "fred" ]]; then echo "fred is here"; fi
#fred is here
if [[ "$name" == f* ]]; then echo "fred is here"; fi
#fred is here
mth=$(date +%m)
#04
