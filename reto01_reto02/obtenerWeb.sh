#! /bin/bash
# PROGRAMA: OBTENER-WEB

url="https://es.wikipedia.org/wiki/DevOps"

salida="web.txt"

cd /
cd tmp

if [ "$1" == "" ] ; then
    echo "falta parametro de busqueda"
else
    echo "Descargando $url en $PWD con el nombre $salida"

    varText=$1
    wget -O $salida "${url}"
    
    echo "buscando texto '$1' en archivo"

    awk -v texto=$1 '{ l=index($0, texto); if (l) print "linea:" NR; }' ./web.txt

fi






