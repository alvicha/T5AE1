#!/bin/bash
read -p "Dis-me un dia: " dia
read -p "Dis-me un mes: " mes

if ( grep -w $dia usuarios.txt | grep $mes );
then
  nomUsuari=`cat usuarios.txt | grep -w $dia | grep $mes | awk '{print $1}'`
else
  echo "No hi ha connexions sobre aquest mes i dia."
fi
