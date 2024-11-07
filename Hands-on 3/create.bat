#!/bin/bash

# Crear un archivo de texto llamado mytext y añadir "Hello World" al archivo
echo "Hello World" > mytext.txt

# Mostrar el contenido del archivo mytext.txt
cat mytext.txt

# Crear un directorio llamado backup
mkdir backup

# Mover el archivo mytext.txt al directorio backup
mv mytext.txt backup/

# Listar el contenido del directorio backup
ls backup

# Eliminar el archivo mytext.txt del directorio backup
rm backup/mytext.txt

# Eliminar el directorio backup
rmdir backup
