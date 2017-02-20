rm -f git.html
rm -f git.pdf

pandoc -N -S -s -c style.css --toc \
    --variable title="IT-System Engineering \& Operation"\
    --variable author="Patrick Bucher" \
    --variable language=ngerman\
    *.md -o iteo.html

pandoc -N -S -s --toc \
    --variable title="IT-System Engineering \& Operation"\
    --variable author="Patrick Bucher" \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable fontfamily=times \
    --variable language=ngerman\
    *.md -o iteo.pdf
