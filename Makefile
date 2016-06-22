FRONTMATTER=metadata.md
OUTPUT=mythesis
PFLAGS= -s -N --filter pandoc-crossref --template pandoc-templates/default.thesis --biblatex --chapters $(FRONTMATTER) chapters/*.md
RFLAGS= --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash
AFLAGS= -N -V geometry:margin=1in -V linestretch=2 -V fontsize=12pt --template pandoc-templates/default.thesisabstract $(FRONTMATTER)

.PHONY: all clean tex abstract

all: tex abstract
	latexmk -pdf $(OUTPUT)

abstract: abstract.pdf

tex:
	pandoc $(PFLAGS) $(RFLAGS) -o $(OUTPUT).tex

abstract.pdf: abstract.md
	pandoc $(AFLAGS) -o abstract.pdf

clean:
	rm $(OUTPUT).pdf $(OUTPUT).tex
