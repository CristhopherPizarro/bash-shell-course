#!/bin/bash
# Programa relacionado al reto n°7
# Autor: Cristhopher Pizarro - @CristhopherPizarro

procesosActuales() {
    echo "..Procesos Actuales.." | tee log$fecha.txt
    ps -eo cmd,%mem,%cpu --sort=-%mem | head | tee log$fecha.txt
}

memoriaDisp() {
    echo "..Memoria Disponible.." | tee log$fecha.txt
    free -h | tee log$fecha.txt
}

espacioDisco() {
    echo "..Espacio en Disco.." | tee log$fecha.txt
    df -ah | tee log$fecha.txt
}

infoRed() {
    echo "..Información de Red.." | tee log$fecha.txt
    ifconfig -a | tee log$fecha.txt
}

varEnv() {
    echo "..Variables de Entorno Configuradas.." | tee log$fecha.txt
    env | tee log$fecha.txt
}

infoProgram() {
    echo "..Información Programa.." | tee log$fecha.txt
    dpkg -l | less | tee log$fecha.txt
}

backupInfo() {
    echo "..Backup información.."
    zip -e backUpLog.zip *.txt
    echo -e "Preparando transferencia de archivo backUpLog"
    echo -e "Favor ingresar los siguientes datos"
    read -p "Ingrese el Host: " host
    read -p "Ingrese el Usuario: " usuario
    echo -e "\nEn este momento se procederá a empaquetar la carpeta y transferir según los datos ingresados"
    rsync -avz backUpLog.zip $usuario@$host:/home/...
    rm backUpLog.zip
}

while :; do
    opcion=0
    echo "--------------------------------------"
    echo "    Bienvenido al programa reto6"
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

    fecha=$(date +%Y-%m-%d_%H%M%S)

    case $opcion in
        1)
            procesosActuales
            sleep 3
            ;;
        2)
            memoriaDisp
            sleep 3
            ;;
        3)
            espacioDisco
            sleep 3
            ;;
        4)
            infoRed
            sleep 3
            ;;
        5)
            varEnv
            sleep 3
            ;;
        6)
            infoProgram
            sleep 3
            ;;
        7)
            backupInfo
            sleep 3
            ;;
        8)
            echo "..Saliendo, ¡¡Gracias!!.."
            exit 0
            ;;
    esac
done