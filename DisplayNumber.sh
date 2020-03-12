#! /bin/bash

#Problem Statement:- Program to print 10's powers in word
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

read -p "Enter number: " number

if [ $number -eq 1 ];
then
	echo "unit";
elif [ $number -eq 10 ];
then
	echo "ten";
elif [ $number -eq 100 ];
then
	echo "hundred";
elif [ $number -eq 1000 ];
then
	echo "thousand";
fi
