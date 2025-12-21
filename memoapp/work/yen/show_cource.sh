#!/bin/bash

read -p "cource? " cource


# case で分岐 3 5 10
while read -r f1 f2 f3 f4 f5 f6; do
    [ "$f5" -eq $cource ] && echo "$f1 $f2 $f3 $f4 $f5 $f6"
done < out/out.txt
