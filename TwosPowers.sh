#! /bin/bash

#Problem Statement:- Print powers of 2 upto 2^n
#Author:- Balaji Ijjapwar
#Date:- 13 March 2020

power=$1;
value=1;
<<<<<<< HEAD
count=0;

while [ $count -le $power ]
do
	value=`echo "2^$count" | bc`
	echo "2^$count = $value"
	(( count++ ))
done

=======

for (( i=0; i<=power; i++ ))
do
	value=`echo "2^$i" | bc`
	echo "2^$i = $value"
done
>>>>>>> be20484bbccd2325eedc6f091cc808865f229702
