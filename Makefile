all: install

.PHONY: install
install: resume_allon_hadaya.pdf
	scp resume_allon_hadaya.pdf allon@allon.nyc:~/public/resume

.PHONY: clean
clean:
	rm -f resume_allon_hadaya.pdf resume_allon_hadaya.docx resume_allon_hadaya.txt

resume_allon_hadaya.pdf: resume_allon_hadaya.odt
	libreoffice --headless --convert-to pdf resume_allon_hadaya.odt

resume_allon_hadaya.docx: resume_allon_hadaya.odt
	libreoffice --headless --convert-to docx resume_allon_hadaya.odt

resume_allon_hadaya.txt: resume_allon_hadaya.odt
	libreoffice --headless --convert-to txt:Text resume_allon_hadaya.odt
	echo >> resume_allon_hadaya.txt
	echo '## this file is generated and tracked to produce more meaningful diffs ##' >> resume_allon_hadaya.txt
