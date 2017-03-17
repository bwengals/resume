FILE=resume

all: $(FILE).pdf

.PHONY: clean

clean:
	rm -f *.aux *.blg *.out *.bbl *.log *.fdb_latexmk *.fls

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)
	evince ${FILE}.pdf &

