#!/bin/bash

filename=$1
grep $(date +"%Y-%m-%d") "$filename"

if [ -z "$filename" ]; then

    echo "usage: $0 <filename>)"

fi
