#!/bin/bash


#Exemplo1
THIS="Exemplo"
THIS=${THIS:-"Not Set"}
THAT=${THAT:-"Not Set"}

#Exemplo2
VAZIO=0
#Se a variavel estiver vazia, atribui 10
echo ${VAZIO:=10}
echo $VAZIO

#Exemplo3
MYFILENAME="/home/jgularte/arq.txt"
FILE=${MYFILENAME##*/}
DIR=${MYFILENAME%/*}
NAME=${FILE%.*}
EXTENSION=${FILE##*.}

echo $MYFILENAME
echo $FILE
echo $DIR
echo $NAME
echo $EXTENSION

#Exemplo4
VALOR="A:B:C:D:E"

#Eliminar a menor parte da frente para trás
#se o início do conteúdo da variável coincidir com “:”
echo ${VALOR#*:}

# Eliminar a maior parte da frente para trás se o início
#do conteúdo da variável coincidir com “:”
echo ${VALOR##*:}

#Elimina a menor parte de trás para frete se o final
#do conteúdo da variável coincidir com ":"
echo ${VALOR%:*}

#Elimina a maior parte de trás para frente se o final
#do conteúdo da variavel coincidir com ":"
echo ${VALOR%%:*}


#Exemplo5

#Substitui B por b
echo ${VALOR/B/b}

#Subtitui a primeira ocorrendia de ":" por "."
echo ${VALOR/:/.}

#Subtitui todas ocorrendias de ":" por "."
echo ${VALOR//:/.}


#Exemplo6

STRING=ABCDEF

#retorna 1 caractere a partir da posicao 5

RESERVE=${STRING:5:1}:${STRING:4:1}:${STRING:3:1}
echo $RESERVE
