#! /bin/bash -x

#Problem Statement :- Generating 5 two digit numbers.Finding sum and average of them
#Author :- Balaji Ijjapwar
#Date :- 11 March 2020
sum=$(( RANDOM % 90 + 10 ))  #generates numbers between 10 to 90
sum=$(( RANDOM % 90 + 10 + sum ))
sum=$(( RANDOM % 90 + 10 + sum ))
sum=$(( RANDOM % 90 + 10 + sum ))
sum=$(( RANDOM % 90 + 10 + sum ))

echo "sum = $sum"
echo "scale=2;$sum / 5 " | bc  #prints average upto 2 decimal places
