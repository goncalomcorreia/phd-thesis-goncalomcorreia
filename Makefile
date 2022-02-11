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
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dFirstPage=1 -dLastPage=10 -sOUTPUTFILE=main.pdf phd-thesis_embed.pdf
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dFirstPage=11 -dLastPage=12 -sOUTPUTFILE=supp.pdf phd-thesis_embed.pdf
