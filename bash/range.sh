#!/bin/bash
#@(#) ILLUSTRATION: produce a range with step n in bash
#
# for (( expr1 ; expr2 ; expr3 )) ; do list ; done
#
# First, the arithmetic expression expr1 is evaluated according to the rules
# described below under  ARITHMETIC  EVALUA‐ TION.   The  arithmetic
# expression  expr2  is then evaluated repeatedly until it evaluates
# to zero.  Each time expr2 evaluates to a non‐zero value, list is
# executed and the arithmetic expression expr3 is evaluated.        If any
# expression is omitted, it behaves as if it evaluates to 1.  The return
# value is the exit status of the last command in list that is executed,
# or false if any of the expressions is invalid.
for ((A=0; A<=1000 ;A=A+100 ))
do
  echo -ne "A=$A,"
done
echo

# Using Brace Expansion 
#   Simple range: echo {1..10} produces numbers 1 through 10.
#   Range with increment: echo {1..10..2} produces every second number (1, 3, 5, 7, 9).
#   Zero-padding: {01..10} will automatically pad numbers with leading zeros (01, 02, 03, etc.). 
for B in {0..1000..100}
do
  printf "B=%d," $B
done
printf "\n"

# Using while(1) and expressions
C=0
while [ $C -le 1000 ]
do
   echo -ne "C=$C,"
   C=$((C+100))
done
echo

# Using the seq Command (External)
seq -s " " 0 100 1000
for D in $(seq -s " " 0 1000 100)
do
   echo -ne "D=$D,"
done

exit
