#!/bin/bash


# A project structure of `workspace/buildtools/<build_scripts>` is assumed.
HERE=$(dirname "$(realpath "$0")")
ROOT=$(dirname $HERE)


# Set {VIRGIL_LIB}.

if [ "$VIRGIL_LIB" = "" ]; then
    if [ "$VIRGIL_LOC" = "" ]; then
      V3C_LOC=$(dirname $(which v3c))
      VIRGIL_LOC=$(cd $V3C_LOC/../ && pwd)
    fi
    VIRGIL_LIB=${VIRGIL_LOC}/lib
fi

if [ ! -e "$VIRGIL_LIB/util/Vector.v3" ]; then
    echo "Virgil library code not found (searched $VIRGIL_LIB)."
    echo "Please set either: "
    echo "  VIRGIL_LOC, to the root of your Virgil installation"
    echo "  VIRGIL_LIB, to point directly to root of the library"
    exit 1
fi


# Virgil libraries.

V3_UTIL="$VIRGIL_LIB/util/*.v3"
V3_TEST="$VIRGIL_LIB/test/*.v3"


# Project structure.

PATH_LSP="$ROOT/src"
PATH_TEST="$ROOT/test"

FILES_LSP="$V3_UTIL $PATH_LSP/**/*.v3"
FILES_TEST="$V3_TEST $PATH_TEST/**/*.v3"
