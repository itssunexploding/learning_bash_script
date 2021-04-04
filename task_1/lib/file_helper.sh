#!/bin/bash

# Func for length check and cut
# @param strInput Data, which length we check and cut 4 first symbols
# @return String 
function lengthCheckAndCut
{
    strInput=$1
    strDataLength=$(expr length $strInput)
    if [[ $strDataLength -le 4 ]]
        then
            echo 'Input data has a length which is less than 5'
        else    
            echo $strInput | cut -c 5-
    fi                
}  
