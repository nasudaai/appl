#!/bin/bash

args=$@
count_arg=$#
date=$(date +"%Y-%m-%d %H:%M:%S")

echo "$count_arg"


if [ $count_arg -eq 5 ]; then

    echo "$@ $date" >> out/out.txt
    cat out/out.txt

fi
