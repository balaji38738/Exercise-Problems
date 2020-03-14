#! /bin/bash

#Problem Statement:- Check if two numbers are palindrome or not
#Author:- Balaji Ijjapwar
#Date:- 14 March 2020

read -p "Enter number: " number

function reversingNumber() {
   number1=$1
   reverse=0
   while [ $number1 -ne 0 ]
   do
      reverse=$(( reverse*10 + number1 % 10 ));
      number1=$(( number1 / 10 ));
   done

	echo $reverse
}

function isPrime() {
	number1=$1
	lastCheck=`echo "sqrt($number1)" | bc` #Last number to to check with for primality

	for (( i=2; i<=$lastCheck; i++ ))
	do
		if [ $(( number1 % i )) -eq 0 ];
		then
			break;
		fi
	done

	if [[ $i -eq $(( lastCheck + 1 )) && $number1 -ne 1 ]]
	then
		echo "$number1 is prime"
	else
		echo "$number1 is not prime"
	fi
}

isPrime $number;
reversedNum="$( reversingNumber $number )";
isPrime $reversedNum;
