#!/bin/bash

miss=$2
total=$(( $1 + $miss ))

percentage=$((miss * 10000 / total))

int_part=$(( percentage / 100 ))
frac_part=$(( percentage % 100 ))

#printf で書き直そうかな
echo "$int_part.$frac_part%"
