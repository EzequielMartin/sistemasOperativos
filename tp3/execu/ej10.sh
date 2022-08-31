#!/bin/bash

uid_ultimo=$(tail -1 nuevo/tp1/usuarios | cut -d":" -f 3)
guid_ultimo=$(tail -1 nuevo/tp1/usuarios | cut -d":" -f 4)

uid_nuevo=$(( $uid_ultimo + 1 ))
guid_nuevo=$(( $guid_ultimo + 1 ))

echo "$1:x:$uid_nuevo:$guid_nuevo: :/home/info01:/bin/bash"

