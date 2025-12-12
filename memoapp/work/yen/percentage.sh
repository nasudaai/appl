#!/bin/bash


a=$1
b=$2

total=$(( a + b ))
echo "$total"


echo "$(( a * 10000 / total ))"


m="$(( a * 10000 / total ))"

i="$(( m / 100 ))"
f="$(( m % 100))"

echo "$m"
echo "int: $i%"
echo "f: 0.$f%"
