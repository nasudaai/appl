#!/bin/bash

args="$@"

echo "$args"


read -p "write to a file? y or no : " answer
printf "$answer\n"


write() {
    
    echo "$1"
}

if [ $answer = "y" ]; then

    write "$args"
    echo "Written to a file."
fi
