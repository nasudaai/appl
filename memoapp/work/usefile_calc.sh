#!/bin/bash

file=$1
data=$(tail -n 1 $file)
arr=($data)


echo $data
echo "${#arr[@]}"

for i in ${!arr[@]}; do

    echo "index:$i elm: ${arr[$i]}"
done
