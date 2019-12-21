LIBUNISTRING_VERSION = 0.9.10

libunistring: build/libunistring-$(LIBUNISTRING_VERSION).autotools.sentinel

download/libunistring-$(LIBUNISTRING_VERSION):
	mkdir -p download
	wget https://ftp.gnu.org/gnu/libunistring/libunistring-$(LIBUNISTRING_VERSION).tar.xz -O $@
