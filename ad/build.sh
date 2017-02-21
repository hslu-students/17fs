rm -f ad.html
rm -f ad.pdf

title="Algorithmen \& Datenstrukturen"
author="Patrick Bucher"

pandoc -N -S -s -c style.css --toc \
    --variable title="$title"\
    --variable author="$author" \
    --variable language=ngerman\
    *.md -o ad.html

pandoc -N -S -s --toc \
    --variable title="$title"\
    --variable author="$author" \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable fontfamily=times \
    --variable language=ngerman\
    *.md -o ad.pdf
