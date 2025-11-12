#!/bin/bash

args=$@

first_arg=$1

arr=($args)


echo "First argument: $first_arg"

echo "${arr[@]}"
first_arg="array index 0: ${arr[0]}"
echo "$first_arg"
echo "${#arr[@]}"

