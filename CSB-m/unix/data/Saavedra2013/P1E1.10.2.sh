#Numero de filas
echo "Número de Filas:"
wc -l n1.txt
#Número de Columnas:
echo "Número de columnas:"
head -n 1 n1.txt | tr -d " " | tr -d "\n" | wc -c
