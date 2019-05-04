#!/bin/bash
#
#Autor: João Gularte
#Objetivo: gerar um .zip de um diretorio ou arquivo
#


if [ $# -lt 1 ] 
then
    echo "Missing arguments"
    exit 1
fi

if [ $1 == '-h' -o $1 == '--help' ]
then
    echo "Usage: backupeando.sh [FILE]"
    exit 1
fi

if  [ -d $1 -o -f $1 ]
then
    echo "Backupeando ..."
    zip -rq zipado.zip $1
else
    echo "No file or directory"
fi
    