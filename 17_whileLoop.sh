#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while

numero=1

while [ $numero -ne 10 ]
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done

while [ $numero -ne 10 ]; do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
done

while :
do
    echo "Imprimiendo $numero veces"
    numero=$(( numero + 1 ))
    if [ $numero -eq 10 ]; then
        break
    fi
done