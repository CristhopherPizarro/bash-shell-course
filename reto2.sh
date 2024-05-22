#!/bin/bash
# Script relacionado al reto n°2 del curso de scripting en bash, en donde se tiene que solicitar informacion personal y luego imprimir
# Autor: Cristhopher Pizarro - @CristhopherPizarro

read -p "Ingresar nombre: " nombre
read -p "Ingresar apellido: " apellido
read -p "Ingresar edad: " edad
read -p "Ingresar dirección: " direccion
read -p "Ingresar número telefonico: " numeroTelefonico

echo -e "Valores ingresados son los siguientes:\n\tNombre: $nombre\n\tApellido: $apellido\n\tEdad: $edad\n\tDirección: $direccion\n\tNúmero Telefonico: $numeroTelefonico"