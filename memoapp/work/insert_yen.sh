#!/bin/bash

source ./fmiss_perc.sh
p=$(func $2 $4)


all=$@
types="$2"
miss="$4"




echo "today: $(date +"%Y-%m-%d %H:%M:%S")" 

echo "arguments: $#"

if [ $# -eq 5 ]; then

    

    echo "$@ $(date +"%Y-%m-%d %H:%M:%S")" >> out/out.txt
    echo "correct keystrokes: $types miss: $miss all types: $(( $types + $miss )) per: $p"
#    ./miss_per.sh $types $miss


    echo "last 5 lines will be displayed. "
    cat out/out.txt | tail -n 5
else

    echo "5 arguments are required."
fi
