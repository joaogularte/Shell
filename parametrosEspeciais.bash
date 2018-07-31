#!/bin/bash

echo ""
echo "Primeiro parametro $1, segundo parametro $2"
echo "Script chamado por $0"
echo $[$1 + $2]
echo $[uname -s]
echo "Total de parametros: $#"
echo "Parametros passados: $@"
echo "Status de execucao do ultimo comando: $?"