SYSROOT := $(HOME)/sysroot

export PKG_CONFIG_PATH += $(SYSROOT)/lib/pkgconfig
export LDFLAGS += -L$(SYSROOT)/lib
export CPPFLAGS += -I$(SYSROOT)/include
export PATH := $(SYSROOT)/bin:$(PATH)

sources/%/.sentinel: download/%
	mkdir -p sources
	tar -xf $< -C sources
	touch $@

build/%.autotools/.sentinel: sources/%/.sentinel
	mkdir -p $(dir $@)
	cd $(dir $@) && ../../$(dir $<)/configure --prefix=$(SYSROOT)
	touch $@

build/%.sentinel: build/%/.sentinel
	cd $(dir $<) && make
	cd $(dir $<) && make install
	touch $@

clean:
	rm -rf build
	rm -rf download
	rm -rf sources
	rm -rf tmp

.PHONY: clean
.DELETE_ON_ERROR:

include *.mk
