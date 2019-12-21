EMACS_VERSION = 26.3

emacs: build/emacs-$(EMACS_VERSION).autotools.sentinel
build/emacs-$(EMACS_VERSION).autotools/.sentinel: gnutls guile

download/emacs-$(EMACS_VERSION):
	mkdir -p download
	wget https://ftp.gnu.org/gnu/emacs/emacs-$(EMACS_VERSION).tar.xz -O $@
