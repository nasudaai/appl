#!/bin/bash

file=$1


#tail -n 3 $file | 

while IFS= read -r line; do

    arr=($line)
    echo "$line"

    echo "types: ${arr[1]}, miss: ${arr[3]}, all: $(( ${arr[1]} + ${arr[3]} )) "
#    for item in "${arr[@]}"; do
#        
#        echo "$item"
#    done

done < <(tail -n 3 $file)
