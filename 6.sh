#!/usr/bin/env bash

if [[ ! -f "${1}"  ||  $(wc -l < "${1}") -gt 3 ]]; then
    echo "BAD"
else
    tail -n 1 "${1}"
fi
