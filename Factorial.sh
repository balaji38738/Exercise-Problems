#! /bin/bash -x

#Problem Statemnt:- Find factorial of a given number
#Auhtor:- Balaji Ijjapwar
#Date:- 13 March 2020

read -p "Enter a number: " number

factorial=1

for (( i=1; i<=$number; i++ ))
do
	factorial=$(( factorial * i ))
done

echo "$number! = $factorial"
