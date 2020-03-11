#! /bin/bash -x

sum=$(( RANDOM % 90 + 10 ))  #generates numbers between 10 to 90
sum=$(( RANDOM % 90 + 10 + sum ))
sum=$(( RANDOM % 90 + 10 + sum ))
sum=$(( RANDOM % 90 + 10 + sum ))
sum=$(( RANDOM % 90 + 10 + sum ))

echo "sum = $sum"
echo "scale=2;$sum / 5 " | bc  #prints average upto 2 decimal places
