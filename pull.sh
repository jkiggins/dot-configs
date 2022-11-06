#!/bin/bash

SWD=$(realpath $(dirname $0))

FILES=$(find $SWD -type f ! -path "./.git/*" ! -name "pull.sh")

echo $SWD

for f in $FILES; do
	o_f=$f
	f="${f//dot-/.}"

	if [[ -e ~/"${f}" ]]; then
		echo cp ~/"${f}" "${o_f}"
	fi
	echo
done
