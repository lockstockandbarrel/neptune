#!/bin/bash
#@(#) ILLUSTRATION: running N commands in parallel using xargs(1)
xargs --show-limits </dev/null
# run up to ten commands concurrently with the variable NUMBER set to a number 
# that is unique for all the commands run in the set.
xargs -P 10  --delimiter '\n' --process-slot-var=NUMBER -iXX bash -c 'XX' <<\EOF
sleep 10;echo A $NUMBER
sleep  9;echo B $NUMBER
sleep  7;echo C $NUMBER
sleep  8;echo D $NUMBER
sleep  6;echo E $NUMBER
sleep  4;echo F $NUMBER
sleep  5;echo G $NUMBER
sleep  3;echo H $NUMBER
sleep  2;echo I $NUMBER
sleep  1;echo J $NUMBER
sleep  3;echo K $NUMBER
sleep  2;echo L $NUMBER
sleep  1;echo M $NUMBER
EOF
exit
