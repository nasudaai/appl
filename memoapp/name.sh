#!/bin/bash

if [ -z "${BASH_SOURCE[1]}" ]; then


    echo "${BASH_SOURCE} $?"

else


    echo "$0 called ${BASH_SOURCE} . :$?"

fi
