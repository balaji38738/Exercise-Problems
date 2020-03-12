#!/bin/bash

#Problem Statement:- Unit conversion
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

read -p "Enter feet: " feet
inch=`echo "scale=4; $feet * 12" | bc`
echo "$feet feet = $inch inch"

read -p "Enter inch: " inch
feet=`echo "scale=4; $inch / 12" | bc`
echo "$inch inch = $feet feet"

read -p "Enter feet: " feet
meter=`echo "scale=4; $feet * 0.3048" | bc`
echo "$feet feet = $meter meter"

read -p "Enter meter: " meter
feet=`echo "scale=4; $meter / 0.3048" | bc`
echo "$meter meter = $feet feet"
