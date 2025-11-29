#!/bin/bash

all=$@
types="$2"
miss="$4"



echo "today: $(date +"%Y-%m-%d %H:%M:%S")" 

echo "arguments: $#"

if [ $# -eq 5 ]; then


    echo "$@ $(date +"%Y-%m-%d %H:%M:%S")" >> out/out.txt
    echo "last 5 lines will be displayed. "
    cat out/out.txt | tail -n 5
    echo "all types: $(( $types + $miss ))"
else

    echo "5 arguments are required."
fi
