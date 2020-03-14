#! /bin/bash -x

#Problem Statement:- Play the gambling until gambler becomes broke or reaches his goal
#Author:- Balaji Ijjapwar
#Date:- 14 March 2020

WIN=1;
LOSS=0;
GOAL=200;
WIN_AMOUNT=10
BET=1

amount=100;
winCount=0;
lossCount=0;

while [[ $amount -ne 0 && $amount -lt 200 ]]
do
	gamble=$(( RANDOM % 2 ));
	case $gamble in
		$LOSS)
				amount=$(( amount - BET ))
				(( lossCount++ ));;
		$WIN)
				amount=$(( amount + WIN_AMOUNT ))
				(( winCount++ ));;
		esac
done

if [ $amount -ge $GOAL ]
then
	echo "Goal reached";
else
	echo "Broke";
fi

echo "Gambler won $winCount times";
echo "Gambler lost $lossCount times";
