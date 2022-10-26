#!/bin/bash

# let expr, prefer ((exp))
# https://www.shellcheck.net/wiki/SC2219

((arg1=12))

((arg2=11))

((add=arg1+arg2))

((sub=arg1-arg2))

((mul=arg1*arg2))

((div=arg1/arg2))

((rmdr=arg1%arg2))

echo $add $sub $mul $div $rmdr







