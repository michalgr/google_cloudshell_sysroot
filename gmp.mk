GMP_VERSION := 6.1.2

gmp: build/gmp-$(GMP_VERSION).autotools.sentinel

download/gmp-$(GMP_VERSION):
	mkdir -p download
	wget https://ftp.gnu.org/gnu/gmp/gmp-$(GMP_VERSION).tar.xz -O $@
