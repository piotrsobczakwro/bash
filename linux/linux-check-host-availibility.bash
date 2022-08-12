#!/bin/bash

echo "Executing: $0"

HOST=$1
ping -c 3 $HOST >/dev/null

if [ "$?" -eq "0" ]
then
  echo "[+] $HOST ping success"
else
  echo "[-] $HOST ping failed"
fi