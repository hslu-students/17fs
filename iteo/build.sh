rm -f git.html
rm -f git.pdf

pandoc -N -S -s -c style.css --toc \
    --variable title=ITEO\
    --variable author="Patrick Bucher" \
    *.md -o iteo.html

pandoc -N -S -s --toc \
    --variable title=ITEO\
    --variable author="Patrick Bucher" \
    --variable papersize=a4 \
    --variable documentclass=scrartcl \
    --variable fontfamily=times \
    *.md -o iteo.pdf
