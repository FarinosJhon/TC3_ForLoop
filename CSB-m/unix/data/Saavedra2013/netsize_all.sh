#! /bin/bash

echo "Number of rows"
for i in ../Saavedra2013/*.txt
do           cat $i | wc -l
done
echo "Number of columns" 
for i in ../Saavedra2013/*.txt

do  head -n 1 $i| tr -d " " | tr -d "\n" | wc -c
done
