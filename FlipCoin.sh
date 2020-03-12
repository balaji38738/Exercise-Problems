#! /bin/bash

#Problem Statement:- Program to print coin value
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

head=0
coinValue=$(( RANDOM % 2 ))
if [ $coinValue -eq $head ];
then
	echo "Head";
else
	echo "Tail";
fi
