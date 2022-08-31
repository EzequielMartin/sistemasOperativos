#!/bin/bash

#Usar sudo fdisk -l /dev/sda

#Para particion de booteo, la particion de swap no aparece
sudo fdisk -l | grep boot | awk '{print $5}'
