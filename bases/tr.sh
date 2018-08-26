#!/bin/bash

#Simple examples with tr command


LETRAS="ABcDEfgH"
echo $LETRAS | tr [A-Z] [a-z]

for FILE in * ; do
    F=$(echo $FILE | tr [:blank:] [_])
    echo $F
    [ "$FILE" = "$F" ] || mv -i "$FILE" "$F"
done