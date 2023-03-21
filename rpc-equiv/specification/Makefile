PANDOC ?= pandoc
DOCS := $(shell find docs -name '*.md' | sort)
TITLE = docs/title.txt 
BIB = docs/bibliography.bib
CSL= docs/bibliography.csl 
FLAGS = --number-sections \
		--resource-path docs \
 		--toc --toc-depth=2 \
		--standalone \
		--wrap=auto \
		--citeproc \
		--bibliography=$(BIB) \
		--csl=$(CSL) \
		--pdf-engine=xelatex
SOURCES = $(TITLE) $(DOCS)

docs: doc.pdf doc.html

doc.pdf: $(SOURCES)
	$(PANDOC) $(FLAGS) -o doc.pdf $(SOURCES)

doc.html: $(SOURCES) 
	$(PANDOC) $(FLAGS) \
	    --embed-resources \
		--standalone \
	    --template=docs/toc-sidebar.html \
	    -B docs/nav.html \
	    -o doc.html $(SOURCES)

.PHONY: install
install: docs
	cp doc.pdf doc.html $(INSTALL_PREFIX)

.PHONY: clean
clean:
	rm -rf doc.pdf doc.html
