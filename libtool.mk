LIBTOOL_VERSION = 2.4

libtool: build/libtool-$(LIBTOOL_VERSION).autotools.sentinel

download/libtool-$(LIBTOOL_VERSION).tar.xz:
	mkdir -p download
	wget http://mirror.keystealth.org/gnu/libtool/libtool-$(LIBTOOL_VERSION).tar.xz --directory-prefix=download
