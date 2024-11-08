
# Mostrar el menú
show_menu() {
    echo "Seleccione una opción:"
    echo "1) Listar el contenido de un archivo (directorio)"
    echo "2) Crear un archivo de texto con una línea de texto"
    echo "3) Comparar dos archivos de texto"
    echo "4) Mostrar ejemplo del uso del comando awk"
    echo "5) Mostrar ejemplo del uso del comando grep"
    echo "6) Salir"
}
#Bucle para mantener el menú funcionando hasta que el usuario decida salir
    show_menu
    read -p "Ingrese una opción: " option

    case $option in
        1)
            # Listar contenido de un directorio especifico
            read -p "Ingrese la ruta absoluta del directorio: " dir_path
            if [ -d "$dir_path" ]; then
                ls "$dir_path"
            else
                echo "La ruta proporcionada no es un directorio válido."
            fi
            ;;
        2)
            # Crear un archivo de texto
            read -p "Ingrese el texto que desea almacenar en el archivo: " text
            read -p "Ingrese el nombre del archivo (sin extensión): " file_name
            echo "$text" > "$file_name.txt"
            echo "Archivo $file_name.txt creado con el texto proporcionado."
            ;;
        3)
            # Comparar 2 archivos especificos
            read -p "Ingrese la ruta del primer archivo de texto: " file1
            read -p "Ingrese la ruta del segundo archivo de texto: " file2
            if [ -f "$file1" ] && [ -f "$file2" ]; then
                diff "$file1" "$file2" && echo "Los archivos son iguales" || echo "Los archivos son diferentes"
            else
                echo "Uno o ambos archivos no existen."
            fi
            ;;
        4)
            # Demostrar el uso del comando awk 
            echo "Ejemplo de uso del comando awk (mostrar la primera columna de /etc/passwd):"
            awk -F: '{print $1}' /etc/passwd
            ;;
        5)
            # Demostrar el uso del comando grep
            read -p "Ingrese la palabra a buscar en el archivo /etc/passwd: " word
            echo "Ejemplo de uso del comando grep (buscar '$word' en /etc/passwd):"
            grep "$word" /etc/passwd
            ;;
        6)
            echo "Saliendo del script. ¡Hasta luego!"
            exit 0
            ;;
        *)
            echo "Opción no válida. Intente nuevamente."
            ;;
    esac
    echo "" 
done
