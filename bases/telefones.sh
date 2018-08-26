#!/bin/bash


TELEFONES="./telefones.txt"

if [ $# -lt 1 ] ; then
    echo "Qual número vc busca?"
    exit 1 
fi


if [ $1 = "novo" ] ; then
    shift
    echo $* >> telefones.txt
    echo "$* adicionado a lista telefonica"
    exit 0
fi

if [ ! -s "$TELEFONES" ] ; then 
    echo "Desculpe, nenhum numero na lista ainda"
    exit 1
else
    #Realiza um grep ignorando case (-i) e sem gerar output(-q)
    grep -i -q $* $TELEFONES
    echo $*
    if [ $? -ne 0 ] ; then
        echo "Desculpe mas o numero nao foi encontrado na lista"
        exit 1
    else 
        grep -i $* $TELEFONES
    fi
fi

exit 0