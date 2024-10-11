FILES = paper.md \
		metadata.yaml

OUTPUT = build

FLAGS = --bibliography=bibliography.bib \
		--biblatex \
		--lua-filter=scripts/cite.lua \
		-f markdown \
		-w latex

FLAGS_PDF = --template=lib/template.latex

all: pdf

pdf:
	pandoc -o $(OUTPUT)/paper.pdf $(FLAGS) $(FLAGS_PDF) $(FILES)

tex:
	pandoc -o $(OUTPUT)/paper.tex $(FLAGS) $(FLAGS_PDF) $(FILES)

clean:
	rm build/*


