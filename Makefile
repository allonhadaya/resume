all: install

.PHONY: install
install: resume_allon_hadaya.pdf
	scp resume_allon_hadaya.pdf allon@allon.nyc:~/public/resume

resume_allon_hadaya.pdf: resume_allon_hadaya.odt
	libreoffice --headless --convert-to pdf resume_allon_hadaya.odt
