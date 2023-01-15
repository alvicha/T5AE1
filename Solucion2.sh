#!/bin/bash
read -p "Introdueix nom d'un mes: " mes

if grep -q $mes usuarios.txt;
then
  grep $mes usuarios.txt | awk '{print $2}'
else
  echo "No hi ha connexions sobre el mes $mes, 0."
fi

