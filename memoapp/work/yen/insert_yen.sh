#!/bin/bash

args=$@
count_arg=$#
date=$(date +"%Y-%m-%d %H:%M:%S")

miss="$4"
all_keystroke=$(( $2 + miss ))

#calulation percetange miss

result=$(( miss * 10000 / all_keystroke ))
int_per=$(( result / 100 ))
f_per=$(( result % 100 ))
perc="$int_per.$f_per%"

echo "$date"
echo "args: $count_arg"


if [ $count_arg -eq 5 ]; then

    
    echo "$@ $all_keystroke $date" >> out/out.txt
    printf "%s " "$@" "$all_keystroke" "$date" "$perc"
    printf "\n"
#    printf "%s\n" "$@"

elif [ $count_arg -eq 0 ]; then


    cat out/out.txt | tail -n 6 | head -n 5

else
    
    printf "引数が足りないよ\n"

fi
