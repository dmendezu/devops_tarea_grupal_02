#! /bin/bash
# PROGRAMA: PERMISOS
echo "Manejo de archivos - PERMISOS"
cd /
cd tmp

dir="nuevo"

if [ -d "$dir" ]; then  
    echo "Ya existe el directorio $dir --- Eliminado!"    
    rm -Rf $dir
fi

mkdir $dir
cd $dir

for i in {1..9}
do
   touch archiv$i
done

chmod a-rwx archiv*

echo "fase 1 permisos de archivos"
echo "ruta: $PWD"
echo "Permisos iniciales" 

ls -l

chmod 700 archiv1
chmod 600 archiv2
chmod 777 archiv3
chmod 764 archiv4
chmod 740 archiv5
chmod 564 archiv6
chmod 401 archiv7
chmod 644 archiv8
chmod 664 archiv9

echo "nuevos permisos"

ls -l

echo "fase 2 nuevos permisos de archivos"

chmod 704 archiv1
chmod 400 archiv2
chmod 666 archiv3
chmod 720 archiv4
chmod 703 archiv5
chmod 760 archiv6
chmod 612 archiv7
chmod 004 archiv8
chmod 664 archiv9

echo "nuevos permisos"

ls -l