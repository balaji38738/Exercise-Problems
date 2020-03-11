#! /bin/bash

#Problem Statement :- Conversion from inch to feet,sq.feet to sq.feet,sq.feet to acre
#Author :- Balaji Ijjapwar
#Date :- 11 March 2020

ftmeter=0.3048  #1 feet=0.3048 meter
feet=`echo "scale=2;42/12" | bc`
echo "42 inches = $feet feet"
sqmeter=`echo "scale=2;60 * $ftmeter * 40 * $ftmeter" | bc`
echo "60*40 sq.feet = $sqmeter sq.meter"
sqftacre=0.0000229568  #1 sq.ft=0.0000229568 acre
plotsarea=`echo "scale=3;60 * 40 * $sqftacre * 25" | bc`
echo "Area of 25 60*40 sq.feet plots = $plotsarea acre"
