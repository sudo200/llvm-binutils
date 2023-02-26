#!/bin/env make -f

package:
	xbps-create \
		-A noarch \
		-C 'binutils>=0' \
		-D 'dash>=0 llvm>=0 lld>=0' \
		-l 'Public Domain' \
		-m sudo200 \
		-n llvm-binutils-1.0_1 \
		-s 'LLVM adaption to replace GNU binary utils' \
		--alternatives 'ld:/usr/bin/ld:/usr/bin/lld' \
		package

clean:
	$(RM) $(wildcard *.xbps)

.PHONY: package clean

