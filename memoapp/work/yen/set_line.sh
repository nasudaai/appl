#!/bin/bash

# mv memo
while read -r line ; do
    set -- $line
    [ "$5" -eq 3 ] && echo "$line"
done < out/out.txt
