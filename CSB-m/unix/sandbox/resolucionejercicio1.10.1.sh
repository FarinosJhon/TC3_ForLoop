echo "2. Tamaño del archivo fasta."
echo " "

echo "Número de líneas"
wc -l ../data/Marra2014_data.fasta
echo " "
echo "Número de palabras"
wc -w ../data/Marra2014_data.fasta
echo " "
echo "Número de carácteres"
wc -m ../data/Marra2014_data.fasta
echo " "
echo "Tamaño del archivo"
ls -lh ../data/Marra2014_data.fasta | cut -d " " -f 5
echo " "

echo "3. Crear una copia de Marra2014_data.fasta en Sandbox"

cp ../data/Marra2014_data.fasta my_file.fasta
echo "Los archivos presentes en la carpeta son:"
ls
echo " "

echo "4. Contigs que se clasfican como isogroup00036"
grep -c isogroup00036 my_file.fasta
echo " "

echo "5. Reemplazo los 'dos espacios' por una coma"
echo "El documento traducido con comas se guardará en my_file_comas.fasta y se verá así:"
cat my_file.fasta | tr -s " " "," | head -n 5
cat my_file.fasta | tr -s " " "," >> my_file_comas.fasta
echo " "

echo "6. Isogrupos únicos presentes en la carpeta."

echo "La cantidad de isogrupos únicos es:"
grep ">" my_file_comas.fasta | cut -d "," -f 4 | uniq -c | wc -l

echo " "
echo "7. El contig con el mayor número de lecturas."
grep ">" my_file_comas.fasta | cut -d "," -f 1,3 | sort -n -r -t "=" -k 2 | head -n 1
