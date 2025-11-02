#!/bin/bash

all=$@
arr=($@)

echo "$all"


for i in ${!arr[@]} ; do

    echo "index:1 ${arr[i]}"
done 
