#!/bin/bash

extension=$1

case $extension in
    sh | .sh) 
        count=$(ls *.sh | wc -l)
        echo "sh file: $count"
        ;;
    "")
        find . -maxdepth 1 -type d | tail -n +2 | wc -l
        ;;
    *)
        count=$(find . -type f | wc -l)
        echo "file: $count"
        ;;
esac
