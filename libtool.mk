LIBTOOL_VERSION = 2.4

libtool: build/libtool-$(LIBTOOL_VERSION).autotools.sentinel

download/libtool-$(LIBTOOL_VERSION):
	mkdir -p download
	wget https://ftp.gnu.org/gnu/libtool/libtool-$(LIBTOOL_VERSION).tar.xz -O $@
