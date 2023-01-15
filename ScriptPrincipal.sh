#!/bin/bash
opcion=0;
clear
echo "MENÚ D´OPCIONS DEL PROJECTE"
echo "=============================================================="
echo "Operació 1 (Mostrar nombre de connexions per nom d´usuari)"
echo "Operació 2 (Mostrar llista de dies que s´ha connectat per mes)"
echo "Operació 3 (Mostrar llista de noms d´usuaris per data i mes)"
echo "Operació 4 (Informar data de l´ultima connexió de l´usuari)"
echo "Operació Eixida (Eixida del script)"
echo "=============================================================="
read -p "Introdueix opció del 1 al 5: " opcion

while [ $opcion -ne 5 ]
do
case $opcion in
1) source Solucion1.sh;;
2) source Solucion2.sh;;
3) source Solucion3.sh;;
4) source Solucion4.sh;;
*) echo "Aquesta opció és incorrecta."
esac
read -p "Introdueix altra opció del 1 al 5: " opcion
done
echo "Eixint del script"
