#!/bin/bash


read -r -a data

echo "${data[@]}"

for w in ${data[@]}; do

    echo "$w"
done
