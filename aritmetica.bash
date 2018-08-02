#!/bin/bash


NUM=1023
let RESULT=$NUM/16
echo $RESULT

RESULT=$(expr $NUM / 16)
echo $RESULT

RESULT=`echo "$NUM / 16" | bc`
echo $RESULT

let I=0

echo $((++I))
echo $((++I))
((I++))
echo $I


###Condicionais
VAR=1
if [ $VAR = 1 ]; then
    echo "Variavel é 1"
fi


DIA=$(date +'%A')

if [ $DIA = "sexta" ]; then
    echo "Yeahh, sexta!"
else
    echo "Noo..."
fi