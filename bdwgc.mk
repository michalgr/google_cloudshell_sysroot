BDWGC_VERSION = 8.0.4

bdwgc: build/bdwgc-$(BDWGC_VERSION).autotools.sentinel

download/bdwgc-$(BDWGC_VERSION):
	mkdir -p download
	wget https://github.com/ivmai/bdwgc/releases/download/v$(BDWGC_VERSION)/gc-$(BDWGC_VERSION).tar.gz -O $@

sources/bdwgc-$(BDWGC_VERSION)/.sentinel: download/bdwgc-$(BDWGC_VERSION)
	mkdir -p tmp
	tar xf $< -C tmp
	mkdir -p sources
	mv tmp/gc-$(BDWGC_VERSION) $(dir $@)
	touch $@
