#!/bin/bash

title="Linux und Textdateien"
subtitle="Effizient arbeiten mit einfachen Mitteln"

pandoc -s webtext.md \
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

pandoc -s webtext.md \
    -c style.css \
    -V author="Patrick Bucher" \
    -V date=`date +%d.%m.%Y` \
    -V title="$title" \
    -V subtitle="$subtitle" \
    -V lang=de \
    -o webtext.html
