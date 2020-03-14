#! /bin/bash

#Problem Statement:- Guess the number thought by the user between 1 and 100
#Author:- Balaji Ijjapwar
#Date:- 14 March 2020

echo "Think of a number between 1 and 100"
start=1;
end=101;
choice=0

while [ $choice -ne 3 ]
do
	mid=$(( (start + end) / 2 ))
	echo "1.Number greater than $mid?";
	echo "2.Number less than $mid?";
	echo "3.Number equal to $mid?";

	read choice;
	case $choice in
		1)	start=$mid;;
		2)	end=$mid;;
	esac
done

echo "Hurray! I guessed your number."
