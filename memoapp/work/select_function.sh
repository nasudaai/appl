#!/bin/bash

hello () {

    echo "hello $1"
}


read -p "your name: " name


hello "$name"
