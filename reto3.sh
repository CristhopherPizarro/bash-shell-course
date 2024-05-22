#!/bin/bash
# Script relacionado al reto n°3 del curso de scripting en bash
# Autor: Cristhopher Pizarro - @CristhopherPizarro

varRegex='^[1-5]{1}$'
var=0

while :; do
    read -n1 -p  "Ingresar valor[1 al 5]: " var
    echo -e "\n"
    if [[ $var =~ $varRegex ]]; then
        echo "Valor ingresado $var valido"
        break
    else
        echo "Valor ingresado $var invalido"
    fi
done