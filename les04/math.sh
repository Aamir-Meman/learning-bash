#!/bin/bash

# The script finds the cube of a number, and the
# quotient and remainder of the number divided by 4.

y=99

((cube = y * y * y))
((quotient = y / 4))
((rmdr = y % 4))

echo "The cube of $y is $cube."
echo "The quotient of $y divided by 4 is $quotient."
echo "The remainder of $y divided by 4 is $rmdr."
# Notice the use of parenthesis to control the order of evaluating.
((z = 2 * (quotient * 4 + rmdr)))
echo "Two times $y is $z."