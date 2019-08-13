#!/bin/bash

NAME_CHECK=$(git remote get-url origin | grep dot-configs.git)

if [ -z $NAME_CHECK ]; then
  echo "command must be run from within dot-configs"
  exit 1
fi;

FILES=$(find -type f ! -path "./.git/*" ! -name "pull.sh")

for f in $FILES; do
  cp ~/"${f}" "${f}"
done
