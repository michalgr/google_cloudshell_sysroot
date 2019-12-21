NETTLE_VERSION = 3.5

nettle: build/nettle-$(NETTLE_VERSION).autotools.sentinel

download/nettle-$(NETTLE_VERSION):
	mkdir -p download
	wget https://ftp.gnu.org/gnu/nettle/nettle-$(NETTLE_VERSION).tar.gz -O $@

build/nettle-$(NETTLE_VERSION).autotools: sources/nettle-$(NETTLE_VERSION) gmp
	mkdir -p $@
	cd $@ && ../../$</configure \
		--prefix=$(SYSROOT) \
		--enable-public-key
