#! /bin/bash

#Problem Statement:- Program to print 10's powers in word
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

read -p "Enter number: " number

case $number in
	1) echo "unit";;
	10) echo "ten";;
	100) echo "hundred";;
	1000) echo "thousand";;
esac
