LIBTASN1_VERSION = 4.15.0

libtasn1: build/libtasn1-$(LIBTASN1_VERSION).autotools.sentinel

download/libtasn1-$(LIBTASN1_VERSION):
	mkdir -p download
	wget https://ftp.gnu.org/gnu/libtasn1/libtasn1-$(LIBTASN1_VERSION).tar.gz -O $@
