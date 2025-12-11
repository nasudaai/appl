#!/bin/bash

now=$(date +"%Y-%m-%d %H:%M:%S")
text=$1
file=$2

printf "%s\n%s\n" "$now" "$text" >> "$file"
