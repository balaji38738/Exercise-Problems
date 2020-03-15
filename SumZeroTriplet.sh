#! /bin/bash -x

#Problem Statement:- Find triplets whose sum is zero
#Author:- Balaji Ijjapwar
#Date:- 15 March 2020

read -p "Enter number of integers ( >=3 ): " arraySize


for (( i=0; i<$arraySize; i++ ))
do
	read array[$i]
done

echo "The triplets with zero sum are:"

for (( i=0; i<$((arraySize-2)); i++ ))
do
	for (( j=$((i+1)); j<$((arraySize-1)); j++ ))
	do
		for (( k=$((j+1)); k<$arraySize; k++ ))
		do
			if [ $(( array[i] + array[j] + array[k] )) -eq 0 ]
			then
				echo "(${array[i]}, ${array[j]}, ${array[k]})"
			fi
		done
	done
done
