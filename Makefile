SYSROOT := $(HOME)/sysroot

export PKG_CONFIG_PATH += $(SYSROOT)/lib/pkgconfig
export LDFLAGS += -L$(SYSROOT)/lib
export CPPFLAGS += -I$(SYSROOT)/include
export PATH := $(SYSROOT)/bin:$(PATH)

sources/%: download/%
	mkdir -p sources
	tar -xf $< -C sources

build/%.autotools: sources/%
	mkdir -p $@
	cd $@ && ../../$</configure --prefix=$(SYSROOT)

build/%.sentinel: build/%
	cd $< && make
	cd $< && make install
	touch $@

clean:
	rm -rf build
	rm -rf download
	rm -rf sources
	rm -rf tmp

.PHONY: clean
.DELETE_ON_ERROR:

include *.mk
