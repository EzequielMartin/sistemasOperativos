#!/bin/bash

sudo chown $1 $2

sudo chgrp $1 $2

sudo chmod o-xw $2
