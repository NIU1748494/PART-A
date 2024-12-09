#!/bin/bash
pelicula=$3
actor=$1
actriz=$2
ano_catalogo=0
lineasactor=$(wc -l < "$actor")
lineasactriz=$(wc -l <"$actriz")
echo "Actores"
for ((i=2;i<$lineasactor;i++))
do
movie=$(awk -F, 'NF==5{print $0}' $actor | head -$i |tail -1 | cut -d, -f5|xargs)
if [ "$movie" == "$pelicula" ] ;
then 
ano_catalogo=1
age=$(awk -F, 'NF==5{print $0}' $actor | head -$i | tail -1 | cut -d, -f3)
	year=$(awk -F, 'NF==5{print $0}' $actor |head -$i |tail -1|cut -d, -f2)
	name=$(awk -F, 'NF==5{print $0}' $actor | head -$i | tail -1 | cut -d, -f4)
	
	echo " $year $age $name $movie "
	

fi
done

echo "Actrices"
for ((i=2;i<$lineasactriz;i++))
do
movie=$(awk -F, 'NF==5{print $0}' $actriz | head -$i |tail -1 | cut -d, -f5|xargs)
if [ "$movie" == "$pelicula" ] ;
then 
ano_catalogo=1
age=$(awk -F, 'NF==5{print $0}' $actor | head -$i | tail -1 | cut -d, -f3)
	name=$(awk -F, 'NF==5{print $0}' $actriz | head -$i | tail -1 | cut -d, -f4)
	year=$(awk -F, 'NF==5{print $0}' $actriz |head -$i |tail -1|cut -d, -f2)
	echo " $year $age $name $movie "

fi
done

if [ $ano_catalogo -ne 1 ];
then
echo "Película no presente en el catalogo "
fi

