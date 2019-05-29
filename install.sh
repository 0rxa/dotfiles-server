#!/bin/bash

dir=$(pwd)
cd
for f in $dir/*; do
	([[ $f == *install.sh ]] || [[ $f == *archive.sh ]]) && continue
	ln -sf $f .$(echo $f | awk -F'/' '{print $NF}')
done
