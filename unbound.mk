UNBOUND_VERSION = 1.9.6

unbound: build/unbound-$(UNBOUND_VERSION).autotools.sentinel
build/unbound-$(UNBOUND_VERSION).autotools: flex

download/unbound-$(UNBOUND_VERSION):
	mkdir -p download
	wget https://nlnetlabs.nl/downloads/unbound/unbound-$(UNBOUND_VERSION).tar.gz -O $@
