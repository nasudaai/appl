#!/bin/bash

file="$1"


first_line=$(head -n 1 "$file")
echo "$first_line"
