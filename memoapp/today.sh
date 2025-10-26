#!/bin/bash

today=$(date "+%Y-%m-%d")

printf "$today\n"

current_line=""
date_regex='^[0-9]{4}-[0-9]{2}-[0-9]{2}$'

for word in $(cat out.txt); do

    if [ -z "$current_line" ]; then
        current_line="$word"
    else
        current_line="$current_line $word"
    fi


    if [[ $word =~ $date_regex ]]; then
        if [ $word = $today ]; then

            echo  "$current_line"
            current_line=""
        else
            current_line=""
        fi
    
    fi

done
