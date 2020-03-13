#! /bin/bash

#Problem Statement:- FInd prime factors of a number
#Author:- Balaji Ijjapwar
#Date:- 13 March 2020

read -p "Enter number: " number

for (( num=2; num<=$number; num++ ))
do
	for (( ; $(( number % num ))==0; ))
	do
		echo $num
		number=$(( number / num ))
	done
done
