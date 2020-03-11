#! /bin/bash

#Problem Statement :- Adding two dice numbers
#Author :- Balaji Ijjapwar
#Date :- 11 March 2020

number1=$(( RANDOM % 6 + 1 ))
number2=$(( RANDOM % 6 + 1 ))

echo $(( number1 + number2 ))
