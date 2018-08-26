#!/bin/bash
#
#Conversor de bin -> dec e dec -> bin
#
#convert.sh bin 2
#Primeiro paramentro: unidade que deseja
#Segundo parametro: numero que deseja converter
#
#Examplos:
#convert.sh dec 101
#5
#
#convert.sh bin 8
#1000


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
