#!/bin/bash

<<ENUNCIADO generar.sh: Genera imágenes utilizando algún servicios web. Se debe
poder indicar por argumento cuantas imagenes generar y se deben asignar
nombres de archivo al azar de una lista de nombres de personas. Tener
en cuenta que al descargar de una página conviene usar un sleep entre
descarga y descarga para no saturar el servicio y evitar problemas. Luego
se deben comprimir las imágenes, y generar un archivo con su suma de
verificación. ENUNCIADO>>
#Espacio para documentar

regex=.^[1-9][0-9]*$
function obtener_imagen { # Funcion que retorna una imagen aleatoria desde una pagina web.

url=https://source.unsplash.com/random/900%C3%97700/?person

}

function obtener_nombres { # Funcion que retorna un nombre aleatorio desde un dataset .csv descargado de un url.
url=https://raw.githubusercontent.com/fernandezpablo85/name_suggestions/master/assets/dict.csv
curl -O "dict.csv" "$url"
awk 
}
# Mañana sigo... habria que buscar en el archivo descargado dict.csv un nombre unico y aleatorio de la lista...

