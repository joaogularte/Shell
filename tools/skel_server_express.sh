#!/bin/bash
#
#Script que gera um arquivo com uma
#estrutura basica de um server com o
#framework ExpressJs
#
#Exemplos:
#skel_server_express.sh index.js

echo -e "const app = require('express')(); \n" > $1
echo -e "app.get('/', function(req, res){\n     res.send('Hello World');\n});\n" >> $1
echo -e "app.listen(3000, function(){\n     console.log('Server running at http://localhost:3000');\n});" >> $1