#!/bin/bash

args=$@

first_arg=$1

arr=($args)

echo "First argument: $first_arg"

echo "${#arr[@]}"

