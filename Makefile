all: lfnw2010-pg90.pdf

%.eps: %.jpg
	convert $< $@

%.eps: %.png
	convert $< $@

lfnw2010-pg90.dvi: lfnw2010-pg90.tex
	-rm $@
	latex $<

%.pdf: %.dvi
	dvipdf $<

clean:
	rm -f lfnw2010*.log lfnw2010*.toc lfnw2010*.nav lfnw2010*.snm \
			lfnw2010*.out lfnw2010*.dvi lfnw2010*.aux \
			lfnw2010*.vrb texput.log *.eps

realclean:
	rm -f lfnw2010*.log lfnw2010*.toc lfnw2010*.nav lfnw2010*.snm \
			lfnw2010*.out lfnw2010*.dvi lfnw2010*.aux lfnw2010*.pdf \
			lfnw2010*.vrb texput.log *.eps
