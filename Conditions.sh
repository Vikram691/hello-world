#!/usr/bin/env bash

if [ 1 -eq  1 ]
then
  echo hello
  fi

a="abc"
if [ "$a" == "abc" ]; then
  echo Both are equal
  fi

if [ "$a" != "abc" ]; then
  echo Both are not equal
  fi

if [ -z "$b" ]; then

  echo b variable is empty
  fi