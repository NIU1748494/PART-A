#!/bin/bash
actor=$1
actriz=$2
echo "Peliculas ordenadas alfabéticamente /Actores"
awk -F, 'NF==5{print $0}' $actor|tail +2|sort -t, -k5|cut -d, -f2-
 echo "Peliculas ordenadas alfabéticamente /Actrices"
awk -F, 'NF==5{print $0}' $actriz|tail +2|sort -t, -k5|cut -d, -f2-

echo -e "\n************************** PREMI UNA TECLA PER CONTINUAR *************************"
read wait
