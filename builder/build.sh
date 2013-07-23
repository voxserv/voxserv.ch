#!/bin/sh

BUILDDIR="`dirname \"$0\"`"
BUILDDIR="`( cd \"$BUILDDIR\" && pwd )`"

SRC=${BUILDDIR}/src
DST=${BUILDDIR}/..
LIB=${BUILDDIR}/lib

test -f ${HOME}/.ttreerc || touch ${HOME}/.ttreerc

ttree --all --verbose --src=${SRC} --dest=${DST} --lib=${LIB}
