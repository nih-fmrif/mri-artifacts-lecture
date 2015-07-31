
CURRENT_VERSION = talk
THE_GOAL	= mriArtifacts
TARGETS		= $(THE_GOAL)

$(THE_GOAL).pdf: $(CURRENT_VERSION).tex
	pdflatex $(CURRENT_VERSION).tex
	mv $(CURRENT_VERSION).pdf $(THE_GOAL).pdf

# so that when latex is re-run, it will get all references right

update:
	touch $(CURRENT_VERSION).tex

really:
	rm -f *.ps $(THE_GOAL).pdf $(CURRENT_VERSION).pdf

clean:
	rm -f *~ *.log *.aux *.bak *.dvi *.sav *.out *.nav *.snm *.toc

