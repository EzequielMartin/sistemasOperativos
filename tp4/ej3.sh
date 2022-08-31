#/bin/bash

touch process
ps aux > process
awk '{print $1,$2}' process > solousu
tar -cvzf proc-usu.tar.gz  process solousu
