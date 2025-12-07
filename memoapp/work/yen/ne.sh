#!/bin/bash

args=$#

[ $args -ne 5 ] && echo "There are five required arguments." 

[ $args -eq 5 ] && echo "echo $@"
