#!/bin/bash

item=$1
price=$2

echo "$item $price" >> record_briefly_once.txt

cat record_briefly_once.txt
