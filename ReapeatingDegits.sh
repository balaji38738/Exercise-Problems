#! /bin/bash -x

count=0

for (( numer=1; number<=100 ;number++ ))
do
	if [ $((number % 10)) -eq $((number / 10)) ]
	then
		palindromeNums[((count++))]=$number
	fi
done

echo ${palindromeNums[@]}
