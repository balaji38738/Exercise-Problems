#! /bin/bash

#Problem Statement:- Check if two numbers are palindrome or not
#Author:- Balaji Ijjapwar
#Date:- 14 March 2020

read -p "Enter two numbers: " number1 number2

function isPalindrome() {
	number=$1
	copy=$number
	reverse=0
	while [ $copy -ne 0 ]
	do
		reverse=$(( reverse*10 + copy % 10 ));
		copy=$(( copy / 10 ));
	done
	if [ $number -eq $reverse ]
	then
		echo "$number is palindrome";
	else
		echo "$number is not palindrome";
	fi
}

isPalindrome $number1
isPalindrome $number2
