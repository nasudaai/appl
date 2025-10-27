#!/bin/bash

make (){
    touch $1
    echo $(date) >> $1
    cat $1
}

make $1
