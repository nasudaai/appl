#!/bin/bash

source ./func.sh

read -p "What your name? >>> " name_input

# change var name
hello "$name_input"
