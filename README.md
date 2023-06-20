# proyecto_edp_g25
Scripts
Se deberán programar los siguientes scripts:
• generar.sh: Genera imágenes utilizando algún servicios web. Se debe
poder indicar por argumento cuantas imagenes generar y se deben asignar
nombres de archivo al azar de una lista de nombres de personas. Tener
en cuenta que al descargar de una página conviene usar un sleep entre
descarga y descarga para no saturar el servicio y evitar problemas. Luego
se deben comprimir las imágenes, y generar un archivo con su suma de
verificación.
• descargar.sh: Descarga un archivo comprimido de imágenes. De debe
poder indicar por argumento dos archivos (uno con las imágenes y otro
con una suma de verificación). Si ocurrió algún error se debe informar al
usuario de lo contrario se procede a descomprimir.
• procesar.sh: Se deberán recortar las imágenes a una resolución de 512*512
con alguna utilidad como imagemagick. Solamente deben procesarse aque-
llas imágenes que tengan nombres de personas. Entiéndase por nombres de
personas a cualquier combinación de palabras que empiecen con mayúsculas
y sigan por minúsculas.
• comprimir.sh: Una vez procesadas las imágenes se debe generar un
archivo con la lista de todas las personas, un total de personas femeninas
y masculinas; y luego comprimir todo en un solo archivo. Entiéndase por
persona femenina aquella cuya ultima letra del primer nombre es una letra
“a”. El archivo generado debe poder accederse fuera del contenedor.
• menu.sh: Debe incluirse un menú para elegir cada una de las opciones
anteriores.
