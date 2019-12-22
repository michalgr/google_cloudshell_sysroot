AUTOGEN_VERSION = 5.18.16

autogen: build/autogen-$(AUTOGEN_VERSION).autotools.sentinel

download/autogen-$(AUTOGEN_VERSION):
	mkdir -p download
	wget https://ftp.gnu.org/gnu/autogen/rel$(AUTOGEN_VERSION)/autogen-$(AUTOGEN_VERSION).tar.xz -O $@

build/autogen-$(AUTOGEN_VERSION).autotools/.sentinel: sources/autogen-$(AUTOGEN_VERSION)/.sentinel guile libtool
	mkdir -p $(dir $@)
	cd $(dir $@) && ../../sources/autogen-$(AUTOGEN_VERSION)/configure \
		--prefix=$(SYSROOT) \
		--disable-dependency-tracking
