GNUTLS_VERSION = 3.6.11

gnutls: build/gnutls-$(GNUTLS_VERSION).autotools.sentinel

build/gnutls-$(GNUTLS_VERSION).autotools/.sentinel: autogen nettle libtasn1 libunistring p11-kit unbound

download/gnutls-$(GNUTLS_VERSION):
	wget ftp://ftp.gnutls.org/gcrypt/gnutls/v3.6/gnutls-$(GNUTLS_VERSION).tar.xz -O $@
