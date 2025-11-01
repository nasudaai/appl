#!/bin/bash

arr=("a" "b" "c")

echo "$arr"

echo "${arr[@]}"

for i in "${arr[@]}"; do

    echo "$i"

done


for i in "${!arr[@]}"; do 

    echo "index $i: ${arr[i]}"    

done
