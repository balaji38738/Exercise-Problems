#! /bin/bash

#Problem Statement:- Program to print day from day number
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

read -p "Enter day number starting with 0 for sunday: " dayNumber

case $dayNumber in
	0) echo "Sunday";;
	1) echo "Monday";;
	2) echo "Tuesday";;
	3) echo "Wednesday";;
	4) echo "Thursday";;
	5) echo "Friday";;
	6) echo "Saturday";;
	*) echo "Invalid input";;
esac

