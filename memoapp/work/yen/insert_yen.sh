#!/bin/bash

args=$@
count_arg=$#

if [ $count_arg -eq 0 ]; then


# 3 5 10 case
    
    tail -n 5 out/out.txt
    exit
fi

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

    printf "%s " "$@" "$all_keystroke" "$date" "$perc"
    printf "\n"
    
    # write to a file
    echo "$@ $date" >> out/out.txt

    cat out/out.txt | tail -n 1

#    cat out/out.txt | tail -n 6 | head -n 5

else
    
    printf "引数が足りないよ\n"

fi
