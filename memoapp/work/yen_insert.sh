#!/bin/bash

all=$@


echo "$@ $(date +"%Y-%m-%d %H:%M:%S")" 

echo "arguments: $#"

echo "$@ $(date +"%Y-%m-%d %H:%M:%S")" >> out.txt
cat out.txt | tail -n 5
