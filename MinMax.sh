#! /bin/bash

#Problem Statement:- Program to find maximum and minimum of five random numbers
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

number1=$(( RANDOM % 900 + 100 ))
number2=$(( RANDOM % 900 + 100 ))
number3=$(( RANDOM % 900 + 100 ))
number4=$(( RANDOM % 900 + 100 ))
number5=$(( RANDOM % 900 + 100 ))

echo "$number1 $number2 $number3 $number4 $number5";

if [[ $number1 -ge $number2 && $number1 -ge $number3 && $number1 -ge $number4 && $number1 -ge $number5 ]];
then
	echo "Maximum number is $number1";
elif [[ $number2 -ge $number1 && $number2 -ge $number3 && $number2 -ge $number4 && $number2 -ge $number5 ]];
then
	echo "Maximum number is $number2";
elif [[ $number3 -ge $number1 && $number3 -ge $number2 && $number3 -ge $number4 && $number3 -ge $number5 ]];
then
   echo "Maximum number is $number3";
elif [[ $number4 -ge $number1 && $number4 -ge $number2 && $number4 -ge $number3 && $number4 -ge $number5 ]];
then
   echo "Maximum number is $number4";
else
	echo "Maximum number is $number5";
fi

if [[ $number1 -le $number2 && $number1 -le $number3 && $number1 -le $number4 && $number1 -le $number5 ]];
then
   echo "Minimum number is $number1";
elif [[ $number2 -le $number1 && $number2 -le $number3 && $number2 -le $number4 && $number2 -le $number5 ]];
then
   echo "Minimum number is $number2";
elif [[ $number3 -le $number1 && $number3 -le $number2 && $number3 -le $number4 && $number3 -le $number5 ]];
then
   echo "Minimum number is $number3";
elif [[ $number4 -le $number1 && $number4 -le $number2 && $number4 -le $number3 && $number4 -le $number5 ]];
then
   echo "Minimum number is $number4";
else
   echo "Minimum number is $number5";
fi

