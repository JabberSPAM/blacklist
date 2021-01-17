#!/bin/bash

#Use: ./generate_ejabberd_acl.sh blacklist.txt
if [ -f "$1" ]; then
	echo "acl:";
	echo "  blocked:";
	echo "    server:";
	while IFS= read -r line
	do
		echo "      - $line";
	done < "$1";
fi;
