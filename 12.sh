#!/usr/bin/env bash

all_files=($(ls "$PWD"))
dirs=()
files=()
links=()
for f in "${all_files[@]}";do
    [ -d "${f}" ] && dirs+=("${f}")
    [ -f "${f}" ] && files+=("${f}")
    [ -L "${f}" ] && links+=("${f}")
done

echo "
DIRS:

$(for d in "${dirs[@]}";do echo "   ${d}/";done)
"

echo "--------------------"
echo "
FILES:

$(for f in "${files[@]}";do echo "   ${f}";done)
"

echo "--------------------"

echo "
LINKS:

$(for l in "${links[@]}";do echo "   ${l} -> $(ls -l | grep teste | cut -d '>' -f2)";done)
"

