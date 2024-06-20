#!/bin/bash

function verify_conflict() {
	local file="$1"
	if grep -q -E '<<<<<<<|=======|>>>>>>>' "$file"; then
		echo "File $file contains conflict markup"
	fi
}

function verify_directory() {
	local directory="$1"
	local file
	local files=("$directory"/*)
	local i=0

	while [ $i -lt ${#files[@]} ]; do
		file="${files[$i]}"
		if [ -f "$file" ]; then
			verify_conflict "$file"
		elif [ -d "$file" ]; then
			verify_directory "$file"
		fi
		((i++))
	done
}

if [ $# -ne 1 ]; then
	echo "Use: $0 <directory>"
	exit 1
fi

if [ ! -d "$1" ]; then
	echo "Directory not found: $1"
	exit 1
fi

verify_directory "$1"