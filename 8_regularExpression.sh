#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla utilizando expresiones regulares, además se utilizan condicionales if y while
# Autor: Cristhopher Pizarro - @CristhopherPizarro

identificacionRegex='^[0-9]{10}$'
paisRegex='^(CH|AR|PE)$'
fechaNacimientoRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$'

while :; do

    read -p "Favor ingresar una identificación: " identificacion

    if [[ $identificacion =~ $identificacionRegex ]]; then
        echo "Identificacion $identificacion valida"
        break
    else
        echo "Identificacion $identificacion invalida"
    fi
done

while :; do

    read -p "Favor ingresar pais de nacimiento [CH, AR, PE]: " pais

    if [[ $pais =~ $paisRegex ]]; then
        echo "Pais $pais valida"
        break
    else
        echo "Pais $pais invalida"
    fi
done

while :; do

    read -p "Favor ingresar fecha nacimiento [yyyyMMdd]: " fechaNacimiento

    if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
        echo "Fecha nacimiento $fechaNacimiento valida"
        break
    else
        echo "Fecha nacimiento $fechaNacimiento invalida"
    fi
done

echo -e  "Los datos ingresados son los siguientes:\n\tID: $identificacion\n\tPais: $pais\n\tFecha nacimiento: $fechaNacimiento"