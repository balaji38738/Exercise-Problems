#! /bin/bash

#Problem Statement:- Convert temperature from degree to fahrenheit and vice versa
#Author:-Balaji Ijjapwar
#Date:- 14 March 2020

CELSIUS_TO_FAHREN=1;
FAHREN_TO_CELSIUS=2;
MIN_CELSIUS=0;
MAX_CELSIUS=100;
MIN_FAHRENHEIT=32;
MAX_FAHRENHEIT=212;

echo "Enter 1 to convert from celsius to fahrenheit";
echo "Enter 2 to conver from fahrenheit to celsius";

read choice

function convertCelsiusToFahren() {
	celsius=$1
	fahrenheit=`echo "scale=3;$celsius * 9 / 5 + 32" | bc`
	echo $fahrenheit
}

function convertFahrenToCelsius() {
	fahrenheit=$1
	celsius=`echo "scale=3;( $fahrenheit - 32 ) * 5 / 9" | bc`
	echo $celsius
}

case $choice in
	$CELSIUS_TO_FAHREN)
		read -p "Enter celsius temperature from 1 to 100: " celsius
		if [[ $celsius -ge $MIN_CELSIUS && $celsius -le $MAX_CELSIUS ]]
		then
			fahrenheit="$( convertCelsiusToFahren $celsius )";
			echo "$celsius celsius = $fahrenheit fahrenheit";
		else
			echo "Temperature out of range";
		fi
		;;
	$FAHREN_TO_CELSIUS)
		read -p "Enter fahrenheit temperature from 32 to 212: " fahrenheit
		if [[ $fahrenheit -ge $MIN_FAHRENHEIT && $fahrenheit -le $MAX_FAHRENHEIT ]]
		then
			celsius="$( convertFahrenToCelsius $fahrenheit )";
			echo "$fahrenheit fahrenheit = $celsius celsius";
		else
			echo "Temperature out of range";
		fi
		;;
esac

