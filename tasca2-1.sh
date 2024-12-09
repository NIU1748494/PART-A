#!/bin/bash
ainici=$3
afin=$4
actor=$1
actriz=$2
lineasactor=$(wc -l < "$actor")
lineasactriz=$(wc -l <"$actriz")
echo "Actores"
for ((i=2;i<$lineasactor;i++))
do
year=$(awk -F, 'NF==5{print $0}' $actor |head -$i |tail -1|cut -d, -f2)
if [ $year -ge $ainici ] && [ $year -le $afin ] ;
then 
ano_catalogo=1
age=$(awk -F, 'NF==5{print $0}' $actor | head -$i | tail -1 | cut -d, -f3)
	name=$(awk -F, 'NF==5{print $0}' $actor | head -$i | tail -1 | cut -d, -f4)
	movie=$(awk -F, 'NF==5{print $0}' $actor | head -$i |tail -1 | cut -d, -f5)
	echo " $year $age $name $movie " >>ordenar_hombres
fi
done
sort -t, -k5 ordenar_hombres 
rm ordenar_hombres
echo "Actrices"
for ((i=2;i<$lineasactriz;i++))
do
year=$(awk -F, 'NF==5{print $0}' $actriz |head -$i |tail -1|cut -d, -f2)
if [ $year -ge $ainici ] && [ $year -le $afin ] ;
then 
ano_catalogo=1
age=$(awk -F, 'NF==5{print $0}' $actor | head -$i | tail -1 | cut -d, -f3)
	name=$(awk -F, 'NF==5{print $0}' $actriz | head -$i | tail -1 | cut -d, -f4)
	movie=$(awk -F, 'NF==5{print $0}' $actriz | head -$i |tail -1 | cut -d, -f5)
	echo " $year $age $name $movie " >>ordenar_mujeres
fi
done
sort -t, -k5 ordenar_mujeres 
rm ordenar_mujeres
