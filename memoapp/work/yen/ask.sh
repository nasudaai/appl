#!/bin/bash

ask=""
echo "$ask"

data=$@


count_arg="$#"
printf "arg: $count_arg\n"



if [ $count_arg -eq 5 ]; then

    read -p "y/n?" ask
#    ask="y"
    printf "answer: $ask\n"
fi


if [ $ask = "y" ]; then

    printf "write\n$data"
fi
