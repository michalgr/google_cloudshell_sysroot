LIBFFI_VERSION=3.3

libffi: build/libffi-$(LIBFFI_VERSION).autotools.sentinel

download/libffi-$(LIBFFI_VERSION):
	mkdir -p download
	wget https://github.com/libffi/libffi/releases/download/v$(LIBFFI_VERSION)/libffi-$(LIBFFI_VERSION).tar.gz -O $@
