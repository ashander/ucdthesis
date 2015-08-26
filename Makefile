FRONTMATTER=metadata.md
OUTPUT=mythesis
PFLAGS= -s -N --filter pandoc-crossref --template pandoc-templates/default.thesis --biblatex --chapters $(FRONTMATTER) chapters/*.md
RFLAGS= --from markdown+autolink_bare_uris+ascii_identifiers+tex_math_single_backslash

.PHONY: all clean tex

all: tex
	latexmk -pdf $(OUTPUT)

tex:
	pandoc $(PFLAGS) $(RFLAGS) -o $(OUTPUT).tex

clean:
	rm $(OUTPUT).pdf $(OUTPUT).tex
