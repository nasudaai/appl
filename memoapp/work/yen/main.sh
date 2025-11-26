#!/bin/bash

args=$#
if [ ! $args -eq 5 ]; then
    echo "para is 5."
    exit 1
fi

data=$@
date=$(date +"%Y-%m-%d")

#calculate the total number of typings.
all_typipng_count=$(($2 + $4))

echo "$data $date $all_typipng_count"
