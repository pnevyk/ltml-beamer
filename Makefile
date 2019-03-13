SHELL = /bin/bash
DOCUMENT = content

build: $(DOCUMENT).tex
	pdflatex -halt-on-error -shell-escape $(DOCUMENT).tex
	pdflatex -halt-on-error -shell-escape $(DOCUMENT).tex > /dev/null 2>&1

clean:
	$(RM) $(DOCUMENT).{aux,log,nav,out,snm,toc,vrb} -r _minted*
