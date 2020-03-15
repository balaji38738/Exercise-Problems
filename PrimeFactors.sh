
#! /bin/bash

#Problem Statement:- Find prime factors of a number
#Author:- Balaji Ijjapwar
#Date:- 13 March 2020

read -p "Enter number: " number

count=0
divisor=2

<<<<<<< HEAD
echo -n "Prime factors of $number are "
while [ $divisor -le $number ]
do
	while [ $(( number % divisor )) -eq 0 ]
	do
		echo -n "$divisor "
		number=$(( number / divisor ))
	done
	((divisor++))
done

=======
while [ divisor -le $number ]
do
	while [ $(( number % divisor )) -eq 0 ]
	do
		echo -n "$divisor"
		number=$(( number / divisor ))
	done
((divisor++))
done
>>>>>>> 51cbf9b8f57d73112077ea71202c5d73eb827103
