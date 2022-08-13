#! /bin/bash
# PROGRAMA: RETOS-1-3
echo "Manejo de archivos - crear carpeta dentro de /tmp"
cd /
cd tmp

dir="foo"

if [ -d "$dir" ]; then  
    echo "Ya existe el directorio foo --- Eliminado!"    
    rm -Rf $dir
fi

mkdir $dir
cd $dir
mkdir dummy
mkdir empty
cd dummy
echo "Me encanta bash!!" >> file1.txt
touch file2.txt

echo "Fase 2 Manejo de archivos - copiar contenido"

cat file1.txt >> file2.txt
mv file2.txt ../empty/

echo "Fase 3 crear archivo 3 con el texto desde parametros"

valor='Que me gusta bash!!!!'

if [ "$1" != "" ] ; then
    valor=$1
fi

echo $valor >> file3.txt