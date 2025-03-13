BUILDTOOLS=buildtools


all: build

build: clean
	bash $(BUILDTOOLS)/server.sh

test:
	bash $(BUILDTOOLS)/test.sh

clean:
	rm -f virgil-lsp
	rm -f virgil-lsp-log.txt

.PHONY: clean build test
