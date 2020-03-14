#! /bin/bash -x 

#Problem Statement:- Print the coin value which appears 11 times first after tossing the coin multiple times
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

head=0;
tail=1;
headCount=0;
tailCount=0;

while [[ $headCount -ne 11 && $tailCount -ne 11 ]]
do
	coinValue=$(( RANDOM % 2 ))
	case $coinValue in
		0) (( headCount++ ));;
		1) (( tailCount++ ));;
	esac
done

if [ $headCount -eq 11 ]
then
	"Head won";
else
	"Tail won";
fi
