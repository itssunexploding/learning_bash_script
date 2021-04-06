#!/bin/bash

read -p "Enter your whole number: " intNum

if ! [[ $intNum =~ ^[0-9]+$ ]]
   then
   echo "Error: Input is not a whole number"
   exit
fi

intDigitSum=0

while [ $intNum -gt 0 ] 
do
    let "intDigitSum += intNum % 10" 
    let "intNum /= 10"
done

echo $intDigitSum
