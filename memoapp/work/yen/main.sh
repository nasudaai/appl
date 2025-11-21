#!/bin/bash

args=$#
if [ ! $args -eq 5 ]; then
    echo "para is 5."
    exit 1
fi

data=$@

echo "$data, date"
