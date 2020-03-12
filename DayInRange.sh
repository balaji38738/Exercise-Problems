#! /bin/bash

#Problem Statement:- Program to check if date is in between 20 March and 20 June
#Author:- Balaji Ijjapwar
#Date:- 12 March 2020

daysInMonths=(31 29 31 30 31 30 31 31 30 31 30 31)
day=$1
month=$2

if [[ $month -ge 1 && $month -le 12 ]];
then
   if [ $day -le ${daysInMonths[$(( $month - 1 ))]} ];
   then
      if [[ $month -eq 4 || $month -eq 5 ]] ;
      then
         echo "True";
      elif [[ $month -eq 3 && $day -ge 20 ]];
      then
	 echo "True";
      elif [[ $month -eq 6 && $day -le 20 ]];
      then
         echo "True";
      else
     	 echo "False";
      fi
    else
       echo "Invalid date";
    fi
else
   echo "Invalid date";
fi
