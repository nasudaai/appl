#!/bin/bash

count_arg=$#

if [ $count_arg -eq 0 ]; then


# 3 5 10 case
#    ./show_cource.sh
    
    tail -n 5 out/out.txt
    exit
fi


args=("$@")
printf "%s\n" "yen: ${args[0]}"
printf "%s\n" "correct keystrokes: ${args[1]}"
printf "%s" "types par second: ${args[2]}"
printf "\n"

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

# add var name
    printf "%s " "$@" "all keystroke: $all_keystroke" "$date" "$perc"
    printf "\n"
    
    # write to a file
    read -p "Write to a file? y/n: " answer
    echo "your answer: $answer"
    echo "$@ $date" >> out/out.txt

    echo "writed >> out/out.txt: $(tail -n 1 out/out.txt)"

#    cat out/out.txt | tail -n 1

#    cat out/out.txt | tail -n 6 | head -n 5

else
    
    printf "引数が足りないよ\n"

fi
