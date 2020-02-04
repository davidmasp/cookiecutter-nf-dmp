#!/bin/bash

cd singularity_img

FILES=$(ls *.def)

for i in $FILES; do
	sudo singularity build ${i%.def}.simg $i
done

cd ..
