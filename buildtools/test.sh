#!/bin/bash


source buildtools/common.sh

V3I=${V3I:=$(which v3i)}
if [ ! -x "$V3I" ]; then
    echo "Virgil interpreter (v3i) not found in \$PATH, and \$V3I not set"
    exit 1
fi

MAIN="$PATH_TEST/main.v3"
$V3I $FILES_LSP $FILES_TEST $MAIN
