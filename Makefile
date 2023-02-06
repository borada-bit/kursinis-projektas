generuoti:
	xelatex kursinis.tex
	biber kursinis
	xelatex kursinis.tex
	mv kursinis.pdf MatasKaminskasKDP2023.pdf
	open MatasKaminskasKDP2023.pdf || xdg-open MatasKaminskasKDP2023.pdf

ubuntu:
	echo "Diegiamas LaTeX (PdfLaTeX, XeTeX ir kt.)"
	sudo apt-get install texlive-full
	echo "Diegiama literatūros sąrašo tvarkyklė Biber skirta BibLaTeX paketui"
	sudo apt-get install biber
	echo "Diegiami OpenType šriftai"
	sudo apt-get install fonts-texgyre
	echo "Diegiamas Palemonas šriftas į sistemą"
	sudo cp -r Palemonas-2.1 /usr/share/fonts/truetype/

clean:
	git clean -dfx
