BUILDTOOLS=buildtools
BINS=bin/virgil-lsp


all: build

build: clean
	bash $(BUILDTOOLS)/server.sh

test:
	bash $(BUILDTOOLS)/test.sh

clean:
	rm -f $(BINS)
	rm -f virgil-lsp-log.txt

.PHONY: clean build test
