#!/bin/bash

# Вводимая строка должна состоять только из цифр

read number
 
digitSum=0
while [ $number -gt 0 ] 
do
    let "digitSum += number % 10" 
    let "number /= 10"
done

echo $digitSum
