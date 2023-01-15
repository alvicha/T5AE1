#!/bin/bash
read -p "Introdueix nom d'usuari: " usuari
nomLoguejat=`cat usuarios.txt | grep $usuari | wc -l`

if [ $nomLoguejat -eq 0 ];
then
  echo "L'usuari $usuari no s'ha loguejat."
else
  for i in `seq 1 $nomLoguejat`
  do
  login=`cat usuarios.txt | grep $usuari | awk '{print $2,$3}' | tail -n1`
  done
  echo "Per a usuari $usuari, l'última connexió és $login"
fi

