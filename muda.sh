#!/bin/bash

#Script que muda a extensão dos arquivos de um diretorio
#Rodar dentro do diretorio dos arquivos em questão
#
#
#bash muda.sh .txt .doc
#Primeiro parametro: extensão atual
#Segundo parametro: extão desejada
#

for FILE in $(ls); do
    NOVOFILE=${FILE/$1/$2}
    echo $NOVOFILE
    mv $FILE $NOVOFILE
done 