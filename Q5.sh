#!/bin/bash

room_160=$1
a=$(echo $room_160 | rev)
echo $a
b=$(echo $a | tr '[a-y]z' '[b-z]a')
echo $b
l=${#room_160}
c=$(echo ${room_160:0:$l/2} | rev)
c="$c${room_160:$l/2:$l/2}"
echo $c
exit 0
