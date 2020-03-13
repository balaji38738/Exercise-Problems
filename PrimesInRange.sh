#! /bin/bash

#Problem Statement:- Find the primes in given range
#Author:- Balaji Ijjapwar
#Date:- 13 March 2020

read -p "Enter start and end: " start end

for (( number=$start; number<=$end; number++ ))
do
	lastCheck=`echo "sqrt($number)" | bc` #Last number to be checked with

	for (( i=2; i<=$lastCheck; i++ ))  #Checks if prime for each number
	do
		if [ $(( number % i )) -eq 0 ]
		then
			break
		fi
	done

	if [[ $i -eq $(( lastCheck + 1 )) && $number -ne 1 ]]
	then
		echo $number
	fi
done

