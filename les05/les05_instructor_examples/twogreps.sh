#!/bin/bash
# Script Name: twogreps.sh

echo "Here is the list of Java installation files in the system"

rpm -qa | grep -i 'java'

echo

echo "Now a listing of local disk devices from /etc/vfstab"

grep '^/dev' /etc/vfstab
