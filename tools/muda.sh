#!/bin/bash
#
#Script que muda a extensão dos arquivos de um diretorio
#Rodar dentro do diretorio dos arquivos em questão
#
#
#muda.sh .txt .doc
#Primeiro parametro: extensão atual
#Segundo parametro: extão desejada
#

  
muda(){
    
    [ $# -lt 2 ] && return 1

    for FILE in $(ls); do
        NOVOFILE=${FILE/$1/$2}
        echo $NOVOFILE
        if [ $FILE != $NOVOFILE ] ; then
            mv $FILE $NOVOFILE
        fi
    done 
}

muda $1 $2