#!/bin/bash


#if grep -q $(date "+%Y-%m-%d") "file.txt" ; then echo "date"; else echo "time"; fi; 

echo "## $1"

create () {

    filename=$1
    title=$2
    echo "touch $filename"
    echo  "# $title"
}

"$1" "$2" "$3"
