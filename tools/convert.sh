#!/bin/bash

if [ $# -lt 2 ] ; then
    echo "Número insuficiente de parametros"
    exit 1
fi

if [ $1 = "bin" ]; then
    shift
    for ARG in $* ; do
        echo "obase=2; $ARG" | bc
    done
elif [ $1 = "dec" ]; then
    shift
    for ARG in $* ; do
        echo "ibase=2; $ARG" | bc
    done 
else
    echo "Formato do número não foi informado"
    exit 1
fi
