#removemos el encabezado
tail -n +2 $1 > $1.tmp1 

#Extraemos las columnas innecesarias
cut -d ";" -f 2-6 $1.tmp1 > $1.tmp2

#Cambiamos los separadores por espacios
tr ";" " " < $1.tmp1 > $1.tmp3

#Ordenamos y guardamos la salida
sort -r -n -k 6 $1.tmp3 > $2

#Borrar las carpetas temporales
rm $1.tmp*

