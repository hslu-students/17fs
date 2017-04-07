#!/bin/bash

title="Textdateien"
subtitle="Effizienter arbeiten unter Linux"

smartquotes -d < webtext.md | pandoc -s \
    -V author="Patrick Bucher" \
    -V date=`date +%d.%m.%Y` \
    -V title="$title" \
    -V subtitle="$subtitle" \
    -V papersize=a4 \
    -V documentclass=scrartcl \
    -V classoption=12pt \
    -V fontfamily='times' \
    -V lang=de \
    -o webtext.pdf

smartquotes -d <webtext.md | pandoc -s \
    -c style.css \
    -V author="Patrick Bucher" \
    -V date=`date +%d.%m.%Y` \
    -V title="$title" \
    -V subtitle="$subtitle" \
    -V lang=de \
    -o webtext.html
