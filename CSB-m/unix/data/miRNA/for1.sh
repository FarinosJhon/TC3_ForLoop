for i in 1 2 3 4
do
	for j in 1 2 3 4
  do
	value=`expr $i \* $j`
		echo -n "$value "
  done
  echo
done

