#!/bin/bash

file="$1"


first_line=$(head -n 1 "$file")
echo "title: $first_line"

body=$(tail -n +2 $file)
echo "body: $body"
