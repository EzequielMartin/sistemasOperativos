#!/bin/bash

lscpu | grep Architecture | awk '{print $2}'
hostname
lsb_release -d | awk '{print $2,$3,$4}'
uname -r
