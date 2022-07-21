all: python celery latex cli http remember

LATEXMK_OPTIONS = -xelatex --interaction=nonstopmode --halt-on-error

python:
	latexmk $(LATEXMK_OPTIONS) -jobname=$@ notes/$@/main.tex
	latexmk -c -jobname=$@ notes/$@/main.tex

celery:
	latexmk $(LATEXMK_OPTIONS) -jobname=$@ notes/$@.tex
	latexmk -c -jobname=$@ notes/$@.tex

latex:
	latexmk $(LATEXMK_OPTIONS) -jobname=$@ notes/$@.tex
	latexmk -c -jobname=$@ notes/$@.tex

cli:
	latexmk $(LATEXMK_OPTIONS) -jobname=$@ notes/$@.tex
	latexmk -c -jobname=$@ notes/$@.tex

http:
	latexmk $(LATEXMK_OPTIONS) -jobname=$@ notes/$@.tex
	latexmk -c -jobname=$@ notes/$@.tex

remember:
	latexmk $(LATEXMK_OPTIONS) -jobname=$@ notes/$@.tex
	latexmk -c -jobname=$@ notes/$@.tex

clean:
	rm *.pdf
