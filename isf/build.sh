name="isf"
title="Information Security Fundamentals"
author="Patrick Bucher"

rm -f $name.html
rm -f $name.pdf

pandoc -N -S -s -c style.css --toc \
    --variable title="$title"\
    --variable author="$author" \
    --variable lang=de \
    *.md -o $name.html

pandoc -N -S -s --toc \
    --variable title="$title"\
    --variable author="$author" \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable fontfamily=times \
    --variable lang=de \
    *.md -o $name.pdf
