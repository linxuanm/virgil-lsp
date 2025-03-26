#!/bin/bash


source buildtools/common.sh

V3C=${V3C:=$(which v3c-host)}
if [ ! -x "$V3C" ]; then
    echo "Virgil compiler (v3c) not found in \$PATH, and \$V3C not set"
    exit 1
fi


MAIN="$PATH_LSP/main.v3"
$V3C $FILES_LSP $MAIN
mkdir -p bin
mv main bin/virgil-lsp
