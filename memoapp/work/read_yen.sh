#!/bin/bash


printf "Please input\n"

read -p "yen: " yen

echo "$yen"

arr=($yen)

echo "n: ${#arr[@]}"
