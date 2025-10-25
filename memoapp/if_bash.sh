#!/bin/bash

file=$1

if [ -f "$file" ]; then
    echo "$file は存在します"
else
    echo "$file は存在しません"
fi
