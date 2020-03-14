#! /bin/bash

#Problem Statement:- Find prime factors of a number
#Author:- Balaji Ijjapwar
#Date:- 13 March 2020

read -p "Enter number: " number

count=0

for (( divisor=2; divisor<=$number; divisor++ ))
do
	while [ $(( number % divisor )) -eq 0 ]
	do
		primeFactors[((count++))]=$divisor
		number=$(( number / divisor ))
	done
done

echo "The Prime factors are ${primeFactors[@]}"
