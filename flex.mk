FLEX_VERSION = 2.6.4

flex: build/flex-$(FLEX_VERSION).autotools.sentinel

download/flex-$(FLEX_VERSION):
	mkdir -p download
	wget https://github.com/westes/flex/releases/download/v$(FLEX_VERSION)/flex-$(FLEX_VERSION).tar.gz -O $@
