name="fkom"
title="Fachkommunikation"
author="Patrick Bucher"

rm -f $name.html
rm -f $name.pdf

pandoc -N -S -s -c style.css --toc \
    --variable title="$title"\
    --variable author="$author" \
    --variable language=ngerman\
    *.md -o $name.html

pandoc -N -S -s --toc \
    --variable title="$title"\
    --variable author="$author" \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable fontfamily=times \
    --variable language=ngerman\
    *.md -o $name.pdf
