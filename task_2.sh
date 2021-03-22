#!/bin/bash
# Поиск осуществляется только в директории /home

read dirName
if [[ -z $(find /home -type d -name "$dirName" 2>/dev/null ) ]]
    then
        echo 'Директория не существует или не находится в /home'
        exit 
    else
        ./1.sh $dirName
        ./2.sh $dirName
fi        
