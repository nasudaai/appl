#!/bin/bash

# command <file> | script
# tail -n 1 out/out.txt | ./read_pipe.sh 
read -r -a data

echo "${data[@]}"

for w in ${data[@]}; do

    echo "$w"
done
