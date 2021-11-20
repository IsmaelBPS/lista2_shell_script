#!/usr/bin/env bash

while [ -n "$1" ];do
    ls "$1" 1>> ok.log 2>> error.log
    shift
done