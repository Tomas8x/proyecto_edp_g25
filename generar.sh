#!/bin/bash

#Espacio para documentar

regex=.^[1-9][0-9]*$
function obtener_imagen { # Funcion que retorna una imagen aleatoria desde una pagina web.

url=https://source.unsplash.com/random/900%C3%97700/?person

}

function obtener_nombres { # Funcion que da un nombre aleatorio desde un dataset .csv descargado de un url.
  url="https://raw.githubusercontent.com/fernandezpablo85/name_suggestions/master/assets/dict.csv"
  curl -O "$url"
  NOMBRE=$(awk -F ',' '{print $1}' dict.csv | shuf -n 1) #  awk procesa el texto y extrae los primeros campos de cada línea, shuf filtra y selecciona aleatoriamente una línea de la salida de awk.

echo "El nombre obtenido es: $NOMBRE_OBTENIDO"
  echo "$NOMBRE"
  return 0
}
NOMBRE_OBTENIDO=$(obtener_nombres)
echo "El nombre obtenido es: $NOMBRE_OBTENIDO"
