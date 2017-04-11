#!/bin/bash

title="Linux und Textdateien"
subtitle="Effizient arbeiten mit einfachen Mitteln"

pandoc -s -S webtext.md \
    -H style.header \
    -V author="Patrick Bucher" \
    -V date=`date +%d.%m.%Y` \
    -V title="$title" \
    -V subtitle="$subtitle" \
    -V lang=de \
    -o webtext.html
