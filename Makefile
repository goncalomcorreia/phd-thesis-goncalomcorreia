pdf:
	pdflatex phd-thesis
	bibtex phd-thesis
	pdflatex phd-thesis
	pdflatex phd-thesis

embed:
	gs -q -dNOPAUSE -dBATCH -dPrinted=false -dPDFSETTINGS=/prepress -sDEVICE=pdfwrite -sOutputFile=phd-thesis_embed.pdf phd-thesis.pdf

fix:
	texliveonfly phd-thesis

clean:
	rm *.bbl *.nav *.run.xml *.snm *.synctex* *.vrb *.xdv *.aux *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.toc *.mtc* *.acn *.acr *.alg *.glg *.glo *.gls* *.lof *.lot *.maf *.mlf* *.xdy *.mlt*

split:
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dFirstPage=34 -dLastPage=42 -sOUTPUTFILE=ape_chapter.pdf phd-thesis_embed.pdf
