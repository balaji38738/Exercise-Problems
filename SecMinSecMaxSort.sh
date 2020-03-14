
#! /bin/bash -x

#Problem Statement:- Find the second maximum and second minimum of 10 random numbers using sorting
#Author:- Balaji Ijjapwar
#Date:- 15 March 2020

for (( i=0; i<=9; i++ ))
do
   randomNum=$(( RANDOM % 900 + 100 ))
   array[i]=$randomNum
done

echo "10 random numbers are ${array[@]}"

function insertionSort() {
	for (( i=1; i<=9; i++ ))
	do
		hole=$i
		value=${array[i]}
		while [[ $hole -ne 0 && ${array[hole-1]} -gt $value ]]
		do
			array[hole]=${array[hole-1]}
			((hole--))
		done
		array[hole]=$value
	done
}

insertionSort

echo "Second Minimum is ${array[1]}"
echo "Second Maximum is ${array[8]}"

