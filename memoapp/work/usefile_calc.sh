#!/bin/bash

file=$1
data=$(tail -n 1 $file)


echo $data
