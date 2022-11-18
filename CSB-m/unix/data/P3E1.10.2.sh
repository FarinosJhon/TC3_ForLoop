#Tomamos la lista de todos los IDs eliminando a la fila del encabezado.
ids=`cut -f 1 Gesquiere2011_data.csv | tail -n +2 | sort -n | uniq`

#Con un bucle hacemos que funcione para todos los IDs

for babuino in $ids
do
        numero=`bash P2E1.10.2.sh Gesquiere2011_data.csv $babuino`
        echo "ID:" $babuino "Cantidad:" $numero
done

