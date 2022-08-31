#!/bin/bash

sudo chmod o+t $1  #Sticky Bit
sudo chmod u+s $1  #SUID (Set User ID)
sudo chmod g+s $1  #SGID (Set Group ID)

#Sticky Bit: Si el Sticky bit de un fichero está activado le estamos
#indicando al sistema operativo que se trata de un archivo muy utilizado,
#por lo que es conveniente que permanezca en memoria principal el mayor
#tiempo posible. Esta opción se utilizaba en sistemas antiguos que disponían
#de muy poca RAM, pero hoy en día prácticamente no se utiliza. Lo que si que
#sigue vigente es su utilización en directorios.
#Este permiso suele asignarse a directorios a los que todos los usuarios
#tienen acceso. Evita que un usuario pueda borrar o renombrar elementos
#pertenecientes a otro usuario, dentro de ese directorio, es decir,
#los elementos que hay en un directorio al que se asigna el permiso
#Sticky bit, sólo pueden ser renombrados o borrados por el propietario
#del elemento, el propietario del directorio o el usuario root,
#aunque el resto de usuarios tengan permisos de escritura.

#SUID: Cuando el permiso SUID está activado en un fichero, el usuario que
#ejecute el fichero tendrá durante la ejecución los mismos privilegios que
#el propietario del fichero.

#SGID: Si el permiso SUID permitía que el proceso adquiriera los permisos del
#propietario del fichero ejecutado, SGID hace lo mismo pero adquiriendo los
#privilegios del grupo asignado al fichero. También es asignable a directorios.
