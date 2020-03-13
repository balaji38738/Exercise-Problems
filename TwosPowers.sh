#! /bin/bash

#Problem Statement:- Print powers of 2 upto 2^n
#Author:- Balaji Ijjapwar
#Date:- 13 March 2020

power=$1;
value=1;

for (( i=0; i<=power; i++ ))
do
	value=`echo "2^$i" | bc`
	echo "2^$i = $value"
done
