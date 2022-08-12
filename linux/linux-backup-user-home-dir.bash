#!/bin/bash

echo "Executing scipt $0"

for USER in $@
do
mkdir -p /home/$USER/WORKSPACE/ /home/$USER/archive/ 
#Create backup of home dir of users from args
tar cf /home/$USER/archive/$USER"_"$(hostname)"_"$(date +%m-%d-%Y).tar.gz /home/$USER/WORKSPACE/
done