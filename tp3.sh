#!/bin/bash

dateDebut=$(date +%s)
word=aymane
chrono=5
timer=$chrono
mdp=""

while [ "$mdp" != $word ] && [ $timer -gt 0 ]
do
	dateFin=$(date +%s)
	let "timer =  chrono - dateFin + dateDebut"
	read -t $timer -p "temps restant $timer Entrez le mdp : " mdp
done

if [ $timer -le 0 ]
then
	echo "Boom !!"
elif [ "$mdp" == $word ]
then
	echo "Bravo !"
else
	echo "Err !!"
fi


