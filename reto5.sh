#!/bin/bash
# Programa relacionado al reto n°5
# Autor: Cristhopher Pizarro - @CristhopherPizarro

read -p "Ingrese valor para variable option: " option
read -p "Ingrese valor para variable result: " result
read -sp "Ingrese contraseña: " pass

echo -e "Option: $option\nResult: $result\nPassword: $pass" | tee log$(date +%Y%m%d%H%M%S).txt