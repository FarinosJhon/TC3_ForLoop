echo "Número de columna"
cut -d ";" -f $2 $1 | head -n 1
echo "Número de valores distintos en la columna"
cut -d ";" -f $2 $1 | tail -n +2 | sort | uniq | wc -l
echo "Valor mínimo"
cut -d ";" -f $2 $1 | tail -n +2 | sort -n | head -n 1
echo "Valor máximo"
cut -d ";" -f $2 $1 | tail -n +2 | sort -n | tail -n 1
