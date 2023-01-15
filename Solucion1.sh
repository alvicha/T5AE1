#!/bin/bash
read -p "Dis-me nom d'usuari: " nombre

nombreLoguejat=`cat usuarios.txt | grep $nombre | wc -l`

if [ $nombreLoguejat -eq 0 ]
then
    echo "No s'ha loguejat."
else
    echo "L'usuari $nombre s'ha connectat $nombreLoguejat vegades."
fi
