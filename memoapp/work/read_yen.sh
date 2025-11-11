#!/bin/bash


printf "Please input\n"

read -p "yen: " yen
read -p "types:" types

echo "$yen, $types, "

arr=($yen $types)

echo "n: ${#arr[@]}"
