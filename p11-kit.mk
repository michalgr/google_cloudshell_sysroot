P11_KIT_VERSION = 0.23.18.1

p11-kit: build/p11-kit-$(P11_KIT_VERSION).autotools.sentinel
build/p11-kit-$(P11_KIT_VERSION).autotools/.sentinel: libffi

download/p11-kit-$(P11_KIT_VERSION):
	mkdir -p download
	wget https://github.com/p11-glue/p11-kit/releases/download/$(P11_KIT_VERSION)/p11-kit-$(P11_KIT_VERSION).tar.gz -O $@
