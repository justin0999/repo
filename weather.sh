#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide a location."
  exit 1
fi

curl wttr.in/$1

