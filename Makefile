all: AllonHadayaResume.pdf

.PHONY: install
install: resume_allon_hadaya.pdf
	scp AllonHadayaResume.pdf allon.nyc:~/public/resume

AllonHadayaResume.pdf: AllonHadayaResume.tex
	pdflatex AllonHadayaResume.tex

