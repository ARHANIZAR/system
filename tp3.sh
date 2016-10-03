#!/bin/bash

dateDebut=$(date +%s)
word=aymane
timer=20
read -p "temps restant $timer Entrez le mdp : " mdp

while [ "$mdp"!=$word ] && [ $timer -gt 0 ]
do
	dateFin=$(date +%s)
	let "timer = 20 - dateFin + dateDebut"
	read -p "temps restant $timer Entrez le mdp : " mdp
done

if [ $timer -gt 0 ]
then
	echo "Booom !!"
elif [ "$mdp"==$word ]
then
	echo "Bravo !"
else
	echo "Err !!"
fi


