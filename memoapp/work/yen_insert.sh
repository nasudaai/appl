#!/bin/bash

all=$@



echo "today: $(date +"%Y-%m-%d %H:%M:%S")" 

echo "arguments: $#"

if [ $# -eq 5 ]; then


    echo "$@ $(date +"%Y-%m-%d %H:%M:%S")" >> out/out.txt
    echo "last 5 lines will be displayed. "
    cat out/out.txt | tail -n 5
else

    echo "5 arguments are required."
fi
