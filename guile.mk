GUILE_VERSION = 2.2.6

guile: build/guile-$(GUILE_VERSION).autotools.sentinel
build/guile-$(GUILE_VERSION).autotools.sentinel: bdwgc gmp libffi libtool libunistring

download/guile-$(GUILE_VERSION):
	mkdir -p download
	wget https://ftp.gnu.org/gnu/guile/guile-2.2.6.tar.xz -O $@
