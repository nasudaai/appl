#!/bin/bash


echo "create $1 # $2"

create () {

    filename=$1
    title=$2
    echo "touch $filename"
    echo  "# $title"
}

create "$1" "$2"
