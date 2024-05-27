#!/bin/bash

fecha=$(date)

if [ -z "$1" ]
then
    sitio="http:/www.google.com.ar"
else
    sitio="$1"
fi

resp=$(curl -sL -w "%{http_code}\n" "$sitio" -o /dev/null)

if [ "$resp" -eq "200" ]
then
    estado="UP!"
else
    estado="DOWN!"
fi

echo "$fecha - $sitio - $resp - $estado"