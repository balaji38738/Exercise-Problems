#! /bin/bash

#Problem Statement:- Program to print day from day number
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

read -p "Enter day number starting with 0 for sunday: " dayNumber

if [ $dayNumber -eq 0 ];
then
	echo "Sunday";
elif [ $dayNumber -eq 1 ];
then
	echo "Monday";
elif [ $dayNumber -eq 2 ];
then
   	echo "Tuesday";
elif [ $dayNumber -eq 3 ];
then
   	echo "Wednesday";
elif [ $dayNumber -eq 4 ];
then
   	echo "Thursday";
elif [ $dayNumber -eq 5 ];
then
   	echo "Friday"
elif [ $dayNumber -eq 6 ];
then
   	echo "Saturday";
else
	echo "Invalid input";
fi


