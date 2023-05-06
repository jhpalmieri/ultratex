# 'make elc' byte-compiles the main emacs lisp files
# 'make info' formats the documentation files, producing info files
# 'make pdf' formats the documentation files, producing pdf files
# 'make all' does all of the above tasks
#
# 'make dvi' formats the documentation files, producing dvi files
# (this is not done by 'make all')

EMACS=emacs

all: elc info pdf

elc:
	cd lisp; $(MAKE) EMACS=$(EMACS) all

info:
	cd texi; $(MAKE) EMACS=$(EMACS) info

dvi:
	cd texi; $(MAKE) EMACS=$(EMACS) dvi

pdf:
	cd texi; $(MAKE) EMACS=$(EMACS) pdf

distclean:
	cd lisp; $(MAKE) distclean
	cd texi; $(MAKE) distclean

clean:
	cd lisp; $(MAKE) clean
	cd texi; $(MAKE) clean
