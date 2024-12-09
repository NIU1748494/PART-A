#!/bin/bash
actor=$1
actriz=$2
lineasactor=$(wc -l < "$actor")-1
lineasactriz=$(wc -l <"$actriz")-1
echo "**********************************************************************************"
echo "******************* LLISTAT D’ACTORS I ACTRIUS PER DATA DEL PREMI. **************"
echo "***** LLISTAT OSCARS A MILLOR ACTOR:"
for ((i=2;i<"$lineasactor";i++))
do
Year=$(awk -F, 'NF==5{print $0}' $actor | head -$i | tail -1 | cut -d, -f2)
	Age=$(awk -F, 'NF==5{print $0}' $actor| head -$i | tail -1 | cut -d, -f3)
	Actor=$(awk -F, 'NF==5{print $0}' $actor | head -$i | tail -1 | cut -d, -f4)
	Movie=$(awk -F, 'NF==5{print $0}' $actor | head -$i | tail -1 | cut -d, -f5)
echo "* $Year , amb $Age anys $Name per $Movie"
done
echo "***** LLISTAT OSCARS A MILLOR ACTRIU:"
for ((i=2;i<$lineasactriz;i++))
do
Year=$(awk -F, 'NF==5{print $0}' $actriz | head -$i | tail -1 | cut -d, -f2)
	Age=$(awk -F, 'NF==5{print $0}' $actriz| head -$i | tail -1 | cut -d, -f3)
	Actor=$(awk -F, 'NF==5{print $0}' $actriz | head -$i | tail -1 | cut -d, -f4)
	Movie=$(awk -F, 'NF==5{print $0}' $actriz | head -$i | tail -1 | cut -d, -f5)
echo "* $Year , amb $Age anys $Name per $Movie"
done
echo "************************** PREMI UNA TECLA PER CONTINUAR *************************"
read wait
