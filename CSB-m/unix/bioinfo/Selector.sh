tail -n +2 $1 | cut -d ";" -f 3-6 | tr ";" " " | sort -r -n -k 6 > $2


