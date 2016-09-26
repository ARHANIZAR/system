#!/bin/bash

read -p "Entrez votre nom : " nom
read -p "Entrez votre login : " login
read -p "Entrez votre mots de passe : " -s mdp

useradd  -c $nom -p $(mkpasswd $mdp) $login 
