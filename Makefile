FRONTMATTER=metadata.md
OUTPUT=mythesis
PFLAGS= -s -N --template pandoc-templates/default.thesis --listings --biblatex --chapters $(FRONTMATTER) chapters/*.md
PHONY: all tex

all: tex
	latexmk -pdf $(OUTPUT)

tex:
	pandoc $(PFLAGS) -o $(OUTPUT).tex
