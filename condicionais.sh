#!/bin/bash


###Condicionais
VAR=1
if [ $VAR -eq 1 ]; then
    echo "Variavel é 1"
fi

DIA=$(date +'%A')

if [ $DIA = "sexta" ] ; then
    echo "Yeahh, sexta!"
else
    echo "Noo..."
fi

FILENAME="/home/jgularte/Documentos/Knowledge/Shell/condicionais.bash"

if [ -d $FILENAME ] ; then 
    echo "Diretorio"
elif [ -e $FILENAME ]; then
    echo "Arquivo"
else
    echo "Nao sei"
fi


NUM=2
if [ $NUM -ge 1 ] ; then
    echo "Maior"
fi

##Condicionais Rapidas

DIRNAME="/tmp/dirtest"
[ -d $DIRNAME ] || mkdir $DIRNAME && echo "$DIRNAME já existe"

##Case

DIA="Nasei"

case $DIA in
    "domingo")
        echo "Hoje é $(date +%A)";;
    "segunda")
        echo "Hoje é $(date +%A)";;
    *)
        echo "Nao sei";;
esac