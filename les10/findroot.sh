#!/bin/bash

#Script name: findroot.sh

if grep root /etc/passwd >/dev/null; then
    echo "Found root"
else
    echo "root not in the passwd!"
    echo "you will need to repaired your file"
fi
