#!/bin/bash

filename=$(date +"%Y-%m-%d").md
title=$1

touch "./plans/$filename"
echo "# Title" >> ./plans/$filename

ls ./plans/$filename
cat plans/$filename
