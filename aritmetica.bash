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

