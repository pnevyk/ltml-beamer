DOCUMENT = content

build: $(DOCUMENT).tex
	pdflatex -halt-on-error -shell-escape $(DOCUMENT).tex
	pdflatex -halt-on-error -shell-escape $(DOCUMENT).tex > /dev/null 2>&1

clean:
	rm -rf $(DOCUMENT).{aux,log,nav,out,snm,toc,vrb} _minted*
