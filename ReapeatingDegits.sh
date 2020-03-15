#! /bin/bash -x

#Problem Statement:- Find the two digit numbers between 1 and 100 whose first and last digit are same
#Author:- Balaji Ijjapwar
#Date: 15 March 2020

count=0

for (( numer=1; number<=100 ;number++ ))
do
	if [ $((number % 10)) -eq $((number / 10)) ]
	then
		palindromeNums[((count++))]=$number
	fi
done

echo ${palindromeNums[@]}
