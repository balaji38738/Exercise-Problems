#!/bin/bash

#Problem Statement:- Unit conversion
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

echo "Enter 1 for feet to inch"
echo "Enter 2 for inch to feet"
echo "Enter 3 for feet to meter"
echo "Enter 4 for meter to feet"

read choice

feetToInch=1
inchToFeet=2
feetToMeter=3
meterToFeet=4

case $choice in
	$feetToInch)
		read -p "Enter feet: " feet
		inch=`echo "scale=4; $feet * 12" | bc`
		echo "$feet feet = $inch inch";;
	$inchToFeet)
		read -p "Enter inch: " inch
		feet=`echo "scale=4; $inch / 12" | bc`
		echo "$inch inch = $feet feet";;
	$feetToMeter)
		read -p "Enter feet: " feet
		meter=`echo "scale=4; $feet * 0.3048" | bc`
		echo "$feet feet = $meter meter";;
	$meterToFeet)
		read -p "Enter meter: " meter
		feet=`echo "scale=2; $meter / 0.3048" | bc`
		echo "$meter meter = $feet feet";;
esac
