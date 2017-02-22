rm -f mod.html
rm -f mod.pdf

title="Modellierung Grundlagen"
author="Patrick Bucher"

pandoc -N -S -s -c style.css --toc \
    --variable title="$title"\
    --variable author="$author" \
    --variable language=ngerman\
    *.md -o mod.html

pandoc -N -S -s --toc \
    --variable title="$title"\
    --variable author="$author" \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable fontfamily=times \
    --variable language=ngerman\
    *.md -o mod.pdf
