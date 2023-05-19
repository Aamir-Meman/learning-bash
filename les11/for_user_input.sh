#!/bin/bash
echo -e "Enter some text: "
read -r INPUT
for var in $INPUT; do
    echo "var contains : $var"
done
