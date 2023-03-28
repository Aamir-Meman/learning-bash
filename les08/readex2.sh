#!/bin/bash
# Script name : readex2.sh
##### Step 1 - Copy /etc/host
cp /etc/hosts /tmp/hosts2
##### Step 2 - Strip out comment lines
grep -v '^#' /tmp/hosts2 > /tmp/hosts3
##### Step 3 fd 3 is input file /tmp/hosts3
exec 3< /tmp/hosts3
##### Step 4 fd 4 is output file /tmp/hostsfinal
exec 4> /tmp/hostsfinal
##### The following read and echo statements accomplish STEP 5
read <& 3 addr1 name1
read <& 3 addr2 name2
exec 3<&-
echo $name1 $addr1 >& 4
echo $name2 $addr2 >& 4
##### END OF STEP 5 statements
exec 4<&- 