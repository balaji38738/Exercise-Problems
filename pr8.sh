#! /bin/bash -x

read -p "Enter 3 numbers: " number1 number2 number3
result=$(( $number1 + $number2 * $number3 ))
echo result
result=$(( $number3 + $number1 / $number2 ))
echo result
result=$(( $number1 % $number2 + $number3 ))
echo result
result=$(( $number1 * $number2 + $number3 ))
echo result

