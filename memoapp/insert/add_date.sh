#!/bin/bash

cur_date=$(date '+%Y-%m-%d')

echo "$@" $cur_date >> out.txt
cat out.txt
