#! /bin/bash

#Problem Statement:- Program to check if year is leap or not
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

read -p "Enter year: " year

if [[ $year -ge 1000 && $year -lt 10000 ];
then
	echo "Invalid input";
else
	if [ $(( year % 400 )) -eq 0 ];
	then
		echo "Leap year";
	elif [[ $(( year % 4 )) -eq 0 && $(( year % 100 )) -ne 0 ]];
	then
		echo "Leap year";
	else
		echo "Not a leap year";
	fi
fi
