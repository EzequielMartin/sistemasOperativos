#!/bin/bash

ifconfig | grep ether | awk '{print $2}'
ifconfig | grep inet | head -n 1 | awk '{print $2}'
ifconfig | grep inet | head -n 1 | awk '{print $4}'
