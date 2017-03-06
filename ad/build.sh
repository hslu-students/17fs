rm -f ad.html
rm -f ad.pdf

title='Algorithmen \& Datenstrukturen'
author='Patrick Bucher'

pandoc -N -S -s -c style.css --toc \
    --variable title="Algorithmen & Datenstrukturen" \
    --variable author="$author" \
    --variable lang=de\
    *.md -o ad.html

pandoc -N -S -s --toc \
    --variable title="$title" \
    --variable author="$author" \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable classoption=smallheadings,11pt \
    --variable fontfamily=times \
    --variable lang=de\
    *.md -o ad.pdf
