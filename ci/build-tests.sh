#!/bin/bash

# Referenced from https://github.com/titzer/wizard-engine/blob/master/ci/build-test.sh.

set -e

# for CI, use line-by-line test output
export PROGRESS_ARGS=l

# Clone virgil
cd ..
git clone https://github.com/titzer/virgil
cd virgil

# Set up latest version of virgil
export PATH=$PATH:"$PWD/bin:$PWD/bin/dev:$PWD/test/config"
# TODO: test configure is only needed for progress, get elsewhere?
./test/configure
make

# remaining arguments are appended to V3C_OPTS
export V3C_OPTS="$V3C_OPTS $@"

cd ../virgil-lsp
make test
