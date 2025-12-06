#!/bin/bash

miss=$2
total=$(( $1 + $miss ))

percentage=$((miss * 10000 / total))

int_part=$(( percentage / 100 ))
frac_part=$(( percentage % 100 ))

func() {

    s=$1
    m=$2
    t=$(( $s + $m ))
    n=$(( $m * 10000 / $t ))
    i=$(( $n / 100 ))
    f=$(( $n % 100 ))
    echo "$i.$f%"
}

#p=$(func $1 $2)
#echo $p
#printf で書き直そうかな
echo "$int_part.$frac_part%"
