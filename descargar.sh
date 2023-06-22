#!/bin/bash

# Este script toma un archivo comprimido de imagenes y un .txt con la suma de verificaciones del mismo. Verifica que la transferencia del archivo alla sido exitosa y devuelve su descompresion.

function validar_ingreso { # Funcion que permite el ingreso si se cumplen dos condiciones.
  if [ $# -eq 2  ] && [ -f $1 ] && [ -f $2 ]; then		# Los argumentos son 2 y son archivos regulares.
    if [ file -b $1 | grep -q "compress" ] && [ file -b $2 | grep -q "text" ]; then
# Los argumentos son un archivo comprimido y un archivo de texto respectivamente, suponemos que $1 paso por una de las principales herramientas de compresión de datos de linux y $2 contiene un hash.
    return 0
  else
    echo "Los argumentos no son validos, por favor proporcione dos archivos existentes"
    echo "Ejemplo de uso: $(basename "$0") imagenes.tar.gz checksum.txt"
    exit 1
  fi
}

# Aqui comienza el programa
validar_ingreso "$@"
ARCHIVO_COMPRIMIDO=$1
SUMA_DE_VERIFICACIONES=$2

