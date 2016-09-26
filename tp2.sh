#!/bin/bash


read -p "Entrez votre nom : " nom
read -p "Entrez votre login : " login
read -p "Entrez votre mots de passe : " -s mdp
file="/Users/$login"
if [ ! -e $file ]
then 
	mkdir $file
fi

useradd -d $file  -c $nom -p $(mkpasswd $mdp) $login

