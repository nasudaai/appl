#!/bin/bash

now=$(date +"%Y-%m-%d %H:%M:%S")
text=$@

printf "%s\n%s\n" "$now" "$text"
