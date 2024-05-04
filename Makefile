PDF_DIRECTORY = pdf

LANGUAGES = english 

PDF_TARGETS = $(LANGUAGES:=.pdf)

PDF_TARGETS_FINAL = $(addprefix $(PDF_DIRECTORY)/,$(PDF_TARGETS))

pdf: $(PDF_TARGETS_FINAL)

all: pdf

$(PDF_DIRECTORY)/%.pdf: %.tex bibliography.tex
	for i in 1 2; do pdflatex -output-directory=$(PDF_DIRECTORY) $< || true; done

.PHONY: all pdf
