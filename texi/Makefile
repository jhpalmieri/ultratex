# 'make info' produces info files, as does 'make texinfo'
# 'make pdf' produces pdf files and lots of crap, then erases the crap
# 'make dvi' produces dvi files and lots of crap, then erases the crap
# 'make all' produces both info and dvi files, and cleans up afterwards
# 'make install' copies the info files to /usr/local/info (or the value
#     of INFODIR, if you change it)
# 'make html' produces html files (but requires a perl script: texi2html)
#     -- see http://www.nongnu.org/texi2html/.  So to get html files,
#     change the variable TEXI2HTML to point to that perl script.
#     Also, if you run this by typing 'perl texi2html', then the
#     variable PERL should be set to perl.  If you run it by typing
#     'texi2html', then the variable PERL should be set to nothing:
#     PERL=
#  
SOURCES = light.texi ultra.texi
PDFFILES = light.pdf ultra.pdf
DVIFILES = light.dvi ultra.dvi
INFOFILES = light.info ultra.info
#
TEXI2HTML=texi2html
PERL=perl
#
TEXI2PDF=texi2pdf
TEXI2DVI=texi2dvi
MAKEINFO=makeinfo
TEXI2FLAG=-menu -split_chapter 
INFODIR=/usr/local/info

all: texinfo pdf

info: texinfo

texinfo:
	$(MAKEINFO) $(SOURCES)

$(PDFFILES): %.pdf: %.texi
	$(TEXI2PDF) $<

$(DVIFILES): %.dvi: %.texi
	$(TEXI2DVI) $<

dvi: $(DVIFILES)
	make clean

pdf: $(PDFFILES)
	make clean

html:
	$(PERL) $(TEXI2HTML) $(TEXI2FLAG) $(SOURCES)

clean:
	'rm' -f *.aux *.cp *.fn *.ky *.log *.pg *.toc *.tp *.vr *.fns *.cps *.vrs

distclean:
	'rm' -f *.aux *.cp *.fn *.ky *.log *.pg *.toc *.tp *.vr *.fns *.cps *.vrs
	'rm' -f *.info *.dvi *.pdf

install:
	cp $(INFOFILES) $(INFODIR)
