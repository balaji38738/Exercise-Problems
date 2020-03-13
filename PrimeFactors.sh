#! /bin/bash

#Problem Statement:- FInd prime factors of a number
#Author:- Balaji Ijjapwar
#Date:- 13 March 2020

read -p "Enter number: " number

lastNumber=$(( number / 2 + 1 )) #Maximum possible prime factor

for (( num=2; num<=$lastNumber; num++ ))
do
	lastCheck=`echo "sqrt($num)" | bc` #last number to be checked with for prime identification
	if [ $(( number % num )) -eq 0 ]
	then

		#loop to verify prime numberx
		for (( i=2; i<=$lastCheck; i++ ))
		do
			if [ $(( num % i )) -eq 0 ]
			then
				break
			fi
		done

		if [[ $i -eq $(( lastCheck + 1 )) && $num -ne 1 ]]
		then
		 echo $num
		fi
	fi
done
