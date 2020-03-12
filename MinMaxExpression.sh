#! /bin/bash -x

#Problem Statement:- Program to find minimum and maximum value expression
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

read -p "Enter three numbers: " number1 number2 number3

result1=$(( $number1 + $number2 * $number3 ))
result2=$(( $number3 + $number1 / $number2 ))
result3=$(( $number1 % $number2 + $number3 ))
result4=$(( $number1 * $number2 + $number3 ))

if [[ $result1 -ge $result2 && $result1 -ge $result3 && $result1 -ge $result4 ]];
then
	echo "Maximum expression value is $result1";
elif [[ $result2 -ge $result1 && $result2 -ge $result3 && $result2 -ge $result4 ]];
then
	echo "Maximum expression value is $result2";
elif [[ $result3 -ge $result2 && $result3 -ge $result1 && $result3 -ge $result4 ]];
then
   	echo "Maximum expression value is $result3";
else
   	echo "Maximum expression value is $result4";
fi

if [[ $result1 -le $result2 && $result1 -le $result3 && $result1 -le $result4 ]];
then
   	echo "Minimum expression value is $result1";
elif [[ $result2 -le $result1 && $result2 -le $result3 && $result2 -le $result4 ]];
then
   	echo "Minimum expression value is $result2";
elif [[ $result3 -le $result2 && $result3 -le $result1 && $result3 -le $result4 ]];
then
   	echo "Minimum expression value is $result3";
else
   	echo "Minimum expression value is $result4";
fi
