#! /bin/bash

# Cargar la data  con el comando cd
# se coloca  el comando echo para imprimir el Filename
# Leer el número de filas: con el comando wc -l
echo "File Name : ../data/Saavedra2013/n1.txt"
echo "Number of rows"
cat $1 | wc -l
# se cuenta el numero de columnas tomado con el comando head la primera fila y eliminando los espacios
#para luego contar los caracteres
# se implemento el comando echo para imprimir el numero de columnas
echo "Number of columns"
head  -n1 $1 |  tr -d " " | tr -d "\n" | wc -c
