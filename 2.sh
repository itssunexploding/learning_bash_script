#!/bin/bash

# Выводит описание директории по имени
# (т.е. права доступа, дата создания, размер и т.п)
# в файл info.txt

dirPath=$(find /home -type d -name "$1" 2>/dev/null)

cd $dirPath
cd ..        # Двигаемся на директорию выше нужной

IFS=$'\n' 

for directory in `ls -lh`         # Ищем данные о директории
do  
  if [[ "$directory" == *"$1"* ]]
    then
        echo $directory >>info.txt
  fi      
done
