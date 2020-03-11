#! /bin/bash

number1=$(( RANDOM % 6 + 1 ))
number2=$(( RANDOM % 6 + 1 ))

echo $(( number1 + number2 ))
