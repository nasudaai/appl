#!/bin/bash

now=$(date +"%Y-%m-%d %H:%M:%S")
text=$@
file=$2

printf "%s\n%s\n" "$now" "$text" >> "$file"
