#!/bin/bash


func() {

    s=$1
    m=$2
    t=$(( $s + $m ))
    n=$(( $m * 10000 / $t ))
    i=$(( $n / 100 ))
    f=$(( $n % 100 ))
    echo "$i.$f%"
}
