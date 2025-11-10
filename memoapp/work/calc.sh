#!/bin/bash

#data=($@)

file=$1
data=($( tail -n 1 $file ))
args_len=${#data[@]}

types=${data[1]}
miss=${data[3]}
all_types=$(( types + miss ))


echo ${data[@]}
echo "args: $args_len"
echo "types: $types  miss: $miss "
echo "all types: $all_types"
