#!/bin/bash

all=$@


echo "$@ $(date +"%Y-%m-%d %H:%M:%S")" 

echo "arguments: $#"

echo "$@ $(date +"%Y-%m-%d %H:%M:%S")" >> out/out.txt
cat out/out.txt | tail -n 5
