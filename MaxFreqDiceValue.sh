#! /bin/bash -x

#Problem Statement:- Finding the dice values which have mimimum or maximum frequency
#Author:- Balaji Ijjapwar
#Date:- 15 March 2020

frequency=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )

while [ 1==1 ]
do
	diceValue=$((RANDOM % 6 + 1))
	frequency[$diceValue]=$(( ${frequency[$diceValue]} + 1 ))
	if [ ${frequency[$diceValue]} -eq 10 ]
	then
		mostFrequent=$diceValue
		break
	fi
done

minFreq=${frequency[1]}

for freq in "${frequency[@]}" #Finding minimum frequency
do
	if [ $freq -lt $minFreq ]
	then
		minFreq=$freq
	fi
done

echo "Dice values ${!frequency[@]}"
echo "Frequencies ${frequency[@]}"
echo "Most occured dice value is $mostFrequent"
echo -n "Minimum occuring elements are "

for value in "${!frequency[@]}" #Priting dice values with minimum frequency
do
	if [ ${frequency[$value]} -eq $minFreq ]
	then
		echo -n "$value "
	fi
done
