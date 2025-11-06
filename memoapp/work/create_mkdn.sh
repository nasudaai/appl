#!/bin/bash


echo "## $1"

create () {

    filename=$1
    title=$2
    echo "touch $filename"
    echo  "# $title"
}

"$1" "$2" "$3"
