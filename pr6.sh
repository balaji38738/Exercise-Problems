#! /bin/bash

#Problem Statement :- Finding day on a given date
#Author :- Balaji Ijjapwar
#Date :- 11 March 2020

m=$1
d=$2
y=$3

y0=$((y-(14-m)/12))
x=$((y0+y0/4-y0/100+y0/400))
m0=$((m+12*((14-m)/12)-2))
d0=$(((d+x+31*m0/12)%7))

echo $d0  #prints 0 for sunday,1 for monday and so on..
