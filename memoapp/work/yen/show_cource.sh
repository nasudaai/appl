#!/bin/bash


while read -r f1 f2 f3 f4 f5 f6; do
    [ "$f5" -eq 3 ] && echo "$f1 $f2 $f3 $f4 $f5 $f6"
done < out/out.txt
