#!/bin/bash

echo "data filter script"
file=$1
field_name=$2
field_value=$3

for i in $file
do
	echo $file $field_name  $field_value
if [[ -i == "$field_name" ]] && [[ -i == "$field_value" ]];
then
	grep -iw "$field_value" $file | cat >> ca_Ri_winsder.csv
	echo number of lines"
	wc -l $file | cat > ca_Ri_winsder.csv

	echo " header column"
	head -n 1 $file >> ca_Ri_winsder.csv
fi

done

