#!/bin/bash
actor=$1
actriz=$2
lineasactor=$((wc -l < $actor))
lineasactriz=$((wc -l <$actriz))
echo "**********************************************************************************"
echo "******************* LLISTAT D’ACTORS I ACTRIUS PER DATA DEL PREMI. **************"
echo "***** LLISTAT OSCARS A MILLOR ACTOR:"
for ((i=2;i<$lineasactor;i++))
do
Year=$((head -$i $actor |tail -1 | awk -F, 'NF==5{print $2}'))
Age=$((head -$i $actor |tail -1 | awk -F, 'NF==5{print $3}'))
Name=$((head -$i $actor |tail -1 | awk -F, 'NF==5{print $4}'))
Movie=$((head -$i $actor |tail -1 | awk -F, 'NF==5{print $5}'))
echo "* $Year , amb $Age anys $Name per $Movie"
done
***** LLISTAT OSCARS A MILLOR ACTRIU:
for ((i=2;i<$lineasactor;i++))
do
Year=$((head -$i $actriz |tail -1 | awk -F, 'NF==5{print $2}'))
Age=$((head -$i $actriz |tail -1 | awk -F, 'NF==5{print $3}'))
Name=$((head -$i $actriz |tail -1 | awk -F, 'NF==5{print $4}'))
Movie=$((head -$i $actriz |tail -1 | awk -F, 'NF==5{print $5}'))
echo "$Year , amb $Age anys $Name per $Movie"
done
echo "************************** PREMI UNA TECLA PER CONTINUAR *************************"
read wait
