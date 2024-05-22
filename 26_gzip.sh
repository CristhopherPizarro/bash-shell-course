#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip

echo "Empaquetar todos los scripts de la carpeta shellCourse"
tar -cvf shellCourse.tar *.sh

# Cuando se comprime con gzip el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Comprimir un solo archivo, con un ratio 9"
gzip -9 9_options.sh