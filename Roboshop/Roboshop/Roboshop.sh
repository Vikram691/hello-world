#!/usr/bin/env bash

if [ ! -e Components/$1.sh ]; then
  echo "component doesn't exist"
  exit
  fi
component/$1.sh