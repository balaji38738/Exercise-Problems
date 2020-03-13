#! /bin/bash -x

#Problem Statement:- Check if a number is prime
#Author:- Balaji Ijjapwar
#Date:- 13 March 2020

read -p "Enter number: " number
lastCheck=`echo "sqrt($number)" | bc`

for (( i=2; i<=$lastCheck; i++ ))
do
	if [ $(( number % i )) -eq 0 ];
	then
		break;
	fi
done

if [[ $i -eq $(( lastCheck + 1 )) && $i -ne 1 ]]
then
	echo "The number is prime"
else
	echo "The number is not prime"
fi

