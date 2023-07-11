#!/bin/bash
# Script name: break.sh
typeset -i num # as an integer in bash script
while true; do
    echo -n "Enter any number (0 to exit): "
    read -r num
    if ((num == 0)); then
        break
    else
        echo "Square of $num is $((num * num))."
    fi
done
echo "Script has ended"
