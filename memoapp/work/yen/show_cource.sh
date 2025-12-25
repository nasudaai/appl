#!/bin/bash

read -p "cource? " cource


# branching in the 3 5 10 cases.
# tail -n 5 |
while read -r f1 f2 f3 f4 f5 f6; do
    [ "$f5" = $cource ] && echo "$f1 $f2 $f3 $f4 $f5 $f6"
done < out/out.txt
