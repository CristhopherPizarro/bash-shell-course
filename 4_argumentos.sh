#!/bin/bash
# Programa para ejemplificar el paso de argumentos
# Autor: Cristhopher Pizarro - @CristhopherPizarro

#Ejecución: $ ./argumentos.sh argumento1 argumento2 argumento3
#Cuantos argumentos se deseen
 
# Muestra el nombre del script 
printf "\nPARÁMETRO ESPECIAL \$0\n"
echo "El nombre del script es: $0" 

# Muestra el número de parametros
printf "\nPARÁMETRO ESPECIAL \$#\n" 
echo "Hay $# parámetros" 

# Lista de parámetros (en un solo argumento) 
printf "\nPARÁMETRO ESPECIAL \$*\n"
echo "Parámetros (un solo argumento) : $*" 

# Lista de parámetros (un parámetro por argumento) 
printf "\nPARÁMETRO ESPECIAL \$@\n"
echo "Parámetros (un parámetro por argumento) :" 
for param in $@; do 
  echo "$param" 
done 

# Muestra el PID del script 
printf "\nPARÁMETRO ESPECIAL \$$\n"
echo "El PID del script ejecutado es: $$" 

# Creamos un proceso en segundo plano 
echo "Ejecutando el comando 'sleep' ejecución en segundo plano..."
sleep 10 & 

# Muestra el PID del proceso ejecutado en segundo plano 
printf "\nPARÁMETRO ESPECIAL \$!\n"
echo "El PID del comando 'sleep' en segundo plano es: $!" 

# Muestra el código de retorno del último comando, en este caso "echo " 
printf "\nPARÁMETRO ESPECIAL \$?\n"
echo "El código de retorno del comando es: $?" 

# Generamos un error para ejemplificar el cas
echo "Generando un error..." 
lss -l

# Muestra el código de retorno del último comando 
echo "El código de retorno del comando erróneo es: $?"