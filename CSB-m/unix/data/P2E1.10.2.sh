#Con el cut elegimos la columna y el $1 nos crea una variable para elegir el documento, y con el grep contamos las lecturas del ID elegido con $2.
cut -f 1 $1 | grep -w -c $2

