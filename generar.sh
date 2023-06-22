#!/bin/bash

# Este script toma un argumento numerico que marca la cantidad de imagenes que queremos descargar de una pagina web, les da un nombre valido las comprime y genera un archivo con su suma de verificación.

function obtener_imagen { # Funcion que retorna una imagen aleatoria desde una pagina web.
  url="https://source.unsplash.com/random/900%C3%97700/?person."
  IMAGEN="imagen.jpg"
  wget -O "$IMAGEN" "$url"
  sleep 2
  echo "$IMAGEN"
}

function obtener_nombres { # Funcion que da un nombre aleatorio desde un dataset .csv descargado de un url.
  url="https://raw.githubusercontent.com/fernandezpablo85/name_suggestions/master/assets/dict.csv"
  wget -O "NOMBRES.CSV" "$url"
  NOMBRE=$(awk -F ",| " '{print $1}' NOMBRES.CSV | sed -n "${RANDOM}p") # awk procesa el texto y extrae los primeros campos de cada línea, sed -n permite que se imprima el numero generado por RANDOM
  echo "$NOMBRE"
}

function comprimir { # Funcion que toma un directorio con imagenes y las comprime
  tar zcvf imagenes.tar.gz $1
}


# Aca comienza el programa
echo "Ingrese la cantidad de imágenes que desea generar: "
read ARGS
regex='^[1-9][0-9]*$' # Expresion regular para que el ingreso sea un numero mayor a 0.
if [[ $ARGS =~ $regex ]]; then
  mkdir imagenes_generadas
    for ((i=1; i<=ARGS; i++)); do # Valor inicial de la variable i=1. El bucle se ejecutará mientras i<=ARGS. Después de cada iteración, la variable i se incrementa en 1 mediante i++.
      IMAGEN_GENERADA=$(obtener_imagen)
      NOMBRE_GENERADO=$(obtener_nombres)
      mv "$IMAGEN_GENERADA" "${NOMBRE_GENERADO}_${i}.jpg" # Esta sintaxis hace que los nombres de cada imagen sean unicos agregando al nombre el numero de iteracion por el que va el bucle for.
      mv "${NOMBRE_GENERADO}_${i}.jpg" imagenes_generadas
    done
  comprimir imagenes_generadas | md5sum > suma_de_verificaciones.txt # Comprime el directorio con imagenes y crea un .txt con la suma de verificaciones de la compresion.
else
  echo "Ingrese un numero mayor a 0"
fi
