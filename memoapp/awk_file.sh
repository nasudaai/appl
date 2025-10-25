#!/bin/bash
file=$1
n=$2

awk -v pat="$n" '$5 ~ pat  {print}' $file

awk "BEGIN { num=\"$n\" } \$5 ~ num {print}" $file
