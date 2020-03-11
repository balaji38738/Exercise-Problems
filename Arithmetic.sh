#! /bin/bash -x

#Problem Statement :- Arithmetic operations on three numbers
#Author :- Balaji Ijjapwar
#Date :- 11 March 2020

read -p "Enter 3 numbers: " number1 number2 number3
result=$(( $number1 + $number2 * $number3 ))
echo result
result=$(( $number3 + $number1 / $number2 ))
echo result
result=$(( $number1 % $number2 + $number3 ))
echo result
result=$(( $number1 * $number2 + $number3 ))
echo result

