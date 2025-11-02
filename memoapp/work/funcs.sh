#!/bin/bash


hello () {
    echo "hello"
}

bye () {
    
    echo "Bye"
}

day () {

    date "+%Y-%m-%d"
}

funcs=("bye" "day")


if [ -z "$1" ]; then

    hello
else
    found=false
    for f in "${funcs[@]}"; do
        if [ $1 = "$f" ]; then

            echo "function"
            $1
            found=true
            break

        fi
    done

    if [ "$found" = false ]; then

         echo "定義されていません"
    fi
    
fi


hello
