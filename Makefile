all: AllonHadayaResume.pdf

.PHONY: install
install: AllonHadayaResume.pdf
	scp AllonHadayaResume.pdf allon.nyc:~/resume

AllonHadayaResume.pdf: AllonHadayaResume.tex
	pdflatex AllonHadayaResume.tex

