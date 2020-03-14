
#! /bin/bash -x

#Problem Statemt:- Find the second minimum and second maximum among 10 random numbers without sortin
#Author:- Balaji Ijjapwar
#Date:- 15 March 2020

for (( i=0; i<=9; i++ ))
do
	randomNum=$(( RANDOM % 900 + 100 ))
	array[i]=$randomNum
done

min=${array[0]}
secMin=${array[1]}

for (( i=1; i<=9; i++ ))
do
	if [ ${array[i]} -le $min ]
	then
		secMin=$min
		min=${array[i]}
	elif [ ${array[i]} -lt $secMin ]
	then
		secMin=${array[i]}
	fi
done

max=${array[0]}
secMax=${array[1]}

for (( i=1; i<=9; i++ ))
do
   if [ ${array[i]} -ge $max ]
   then
      secMax=$max
      max=${array[i]}
   elif [ ${array[i]} -gt $secMax ]
   then
      secMax=${array[i]}
   fi
done

echo "10 random numbers are ${array[@]}"
echo "Second minimum is $secMin"
echo "Second Maximum is $secMax"
