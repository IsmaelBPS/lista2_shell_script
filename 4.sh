#!/usr/bin/env bash

while [ -n "${1}" ]; do
    [ -d "${1}" ] && echo "SIM" || echo "Como diria Silvio Santos: Não consegue né?"
    shift
done