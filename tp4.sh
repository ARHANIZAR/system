
#!/bin/bash
clear
dateDebut=$(date +%s)
word=aymane
chrono=20
timer=$chrono
mdp=""

while [ "$mdp" != $word ] && [ $timer -gt 0 ]
do
        dateFin=$(date +%s)
        let "timer =  chrono - dateFin + dateDebut"
	echo -n -e "temps restant $timer Entres le mdp \r"
        read -s -t $timer mdp
done

if [ $timer -le 0 ]
then
        echo -n "Boom !!"
elif [ "$mdp" == $word ]
then
        echo -n "Bravo !"
else
        echo -n "Err !!"
fi



