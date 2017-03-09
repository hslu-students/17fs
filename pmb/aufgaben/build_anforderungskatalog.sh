#!/bin/sh

input="anforderungskatalog.md"
output=`basename -s '.md' "$input"`.pdf
title="Anforderungskatalog SwissGrooves"

pandoc -S -s \
    --variable title="$title" \
    --variable author="Lukas Arnold, Patrick Bucher" \
    --variable date=`date +%d.%m.%Y` \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable classoption=11pt \
    --variable fontfamily=ebgaramond,helvet \
    --variable lang=de \
    $input -o $output
