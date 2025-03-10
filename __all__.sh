#!/bin/bash

cd img/

chmod +rwx *

for file in *; do
	if [[ -f "$file" && "$file" != *.* ]]; then
		echo -e "   \033[1;32m$file\033[0m"
		./"$file"
		echo -e 
	fi
done
