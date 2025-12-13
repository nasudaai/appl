#!/bin/bash

args=$@
count_arg=$#
date=$(date +"%Y-%m-%d %H:%M:%S")

miss="$4"
all_keystroke=$(( $2 + miss ))

echo "$count_arg"


if [ $count_arg -eq 5 ]; then

    
    echo "$@ $all_keystroke $date" >> out/out.txt
    printf "%s\n" "$@"
    cat out/out.txt | tail -n 5

else
    
    printf "引数が足りないよ\n"

fi
