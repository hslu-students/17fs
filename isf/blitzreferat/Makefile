all : drm-eme.pdf slides.pdf

clean :
	rm -f *.pdf *.bbl *.aux *.blg *.toc *.log *.nav *.snm *.out

drm-eme.pdf : drm-eme.tex drm-eme.bbl drm-eme.toc
	pdflatex drm-eme.tex

drm-eme.bbl : drm-eme.bib drm-eme.aux
	bibtex drm-eme

drm-eme.aux : drm-eme.tex
	pdflatex drm-eme.tex

slides.pdf : slides.tex
	pdflatex slides.tex
	pdflatex slides.tex
