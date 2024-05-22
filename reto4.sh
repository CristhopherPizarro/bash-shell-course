#!/bin/bash
# Programa relacionado al reto n°4
# Autor: Cristhopher Pizarro - @CristhopherPizarro

while :; do
    opcion=0
    clear
    echo "--------------------------------------"
    echo "    Bienvenido al programa reto4"
    echo "--------------------------------------"
    echo "         Menu de opciones"
    echo "--------------------------------------"
    echo "1.- Procesos Actuales"
    echo "2.- Memoria Disponible"
    echo "3.- Espacio en Disco"
    echo "4.- Información de Red"
    echo "5.- Variables de Entorno Configuradas"
    echo "6.- Información Programa"
    echo "7.- Backup información"
    echo "8.- Salir"
    echo -e "\n"

    optRgx='^[1-8]{1}$'

    while :; do
        read -n1 -p "Ingrese una opción [1-8]: " opcion
        echo -e "\n"
        if [[ $opcion =~ $optRgx ]]; then
            echo -e "✔ Opción Valida\n"
            break
        else
            echo -e "❌ Opción Invalida\n"
            echo -e "Favor escoger una opción valida\n"
        fi
    done

    case $opcion in
        1)
            echo "..Procesos Actuales.."
            ps -eo cmd,%mem,%cpu --sort=-%mem | head
            sleep 3
            ;;
        2)
            echo "..Memoria Disponible.."
            free -h
            sleep 3
            ;;
        3)
            echo "..Espacio en Disco.."
            df -ah
            sleep 3
            ;;
        4)
            echo "..Información de Red.."
            ifconfig -a
            sleep 3
            ;;
        5)
            echo "..Variables de Entorno Configuradas.."
            env
            sleep 3
            ;;
        6)
            echo "..Información Programa.."
            dpkg -l | more
            sleep 3
            ;;
        7)
            echo "..Backup información.."
            sleep 3
            ;;
        8)
            echo "..Saliendo, ¡¡Gracias!!.."
            exit 0
            ;;
    esac
done