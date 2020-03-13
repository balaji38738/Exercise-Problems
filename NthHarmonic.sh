#! /bin/bash

#Problem Statement:- Print nth harmonic
#Auhtor:- Balaji Ijjapwar
#Date:- 13 March 2020

n=$1
nthHarmonic=0
for (( i=1; i<=n; i++ ))
do
	nthHarmonic=`echo "scale=4; $nthHarmonic + 1 / $i" | bc`
done

echo "$n th nthHarmonic = $nthHarmonic"
