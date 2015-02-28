#!/bin/bash
if [ -z "$1" ]
 then
 echo "No file name supplied as argument."
 echo ""
 echo "syntax: gind <type> <pattern...>"
  exit 1
fi

if [ -z "$2" ]
 then
 echo "No file name supplied as argument."
 echo ""
 echo "syntax: gind <type> <pattern...>"
  exit 1
fi

if [ $1 == "string" ] 
	then
	git grep $2
fi

if [ $1 == "file" ] 
	then
	git ls-files | grep $2
fi
